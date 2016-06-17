package org.bahmni.data;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.bahmni.data.pojo.PatientProfile;
import org.bahmni.data.pojo.PatientProgram;
import org.bahmni.data.pojo.Visit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
public class Application implements CommandLineRunner {

    private static final Logger log = LoggerFactory.getLogger(Application.class);

    public static final String URL_PREFIX = "http://192.168.33.10:8050/openmrs/ws/rest/v1/";
    public static final String PATIENT_PROFILE = URL_PREFIX+"patientprofile";
    public static final String BAHMNI_PATIENT_PROGRAM = URL_PREFIX + "bahmniprogramenrollment";
    public static final String BAHMNI_ENCOUNTER = URL_PREFIX + "bahmnicore/bahmniencounter";

    @Autowired
    private Configuration freeMarkerConfig;

    @Autowired
    private RestTemplate restTemplate;

    @Autowired
    private HttpHeaders httpHeaders;

    public static void main(String args[]) {
        SpringApplication.run(Application.class);
    }

    @Override
    public void run(String... args) throws Exception {
        String idPrefix = "ABCD";
        int errors = 0;
        for(int i = 0; i < 500 ; i++){
            try{
                createTestData(idPrefix + i);
            }catch(Exception ex){
                errors++;
                log.error("Exception occured while setting up data for ["+ idPrefix + i+"]");
            }
        }

        log.info("Total number of errors are ["+errors+"]");

    }

    private void createTestData(String id) throws Exception{
        log.info("Creating the data for patient "+ id);

        String patientUuid = createPatient(id);
        String patientProgramUuid = associatePatientToProgram(patientUuid,id,"basicProgram.ftl");
        createVisit(patientUuid,patientProgramUuid,"createEncounterBasicProgram.ftl");

        patientProgramUuid = associatePatientToProgram(patientUuid,id,"secondProgram.ftl");
        Visit secondaryVisit = createVisit(patientUuid,patientProgramUuid,"createEncounterSecondProgram.ftl");
        createObservation(patientUuid,patientProgramUuid, "labResultBiochemistryForm_Observation.ftl", secondaryVisit);
        createObservation(patientUuid,patientProgramUuid, "baselineForm_Observation.ftl", secondaryVisit);
        createObservation(patientUuid,patientProgramUuid, "treatmentInitiationForm_Observation.ftl", secondaryVisit);
        createObservation(patientUuid,patientProgramUuid,"adverseEventsForm_Observation.ftl", secondaryVisit);
        createObservation(patientUuid,patientProgramUuid,"seriousAdverseEventsForm_Observation.ftl", secondaryVisit);
    }

    private String createPatient(String id)
            throws IOException, TemplateException {
        Template freemarkerTemplate = freeMarkerConfig.getTemplate("patientprofile.ftl");

        Map<String,Object> patientData = new HashMap<>();
        patientData.put("id",id);

        StringWriter stringWriter = new StringWriter();
        freemarkerTemplate.process(patientData,stringWriter);
        String requestJson = stringWriter.toString();

        HttpEntity<String> entity = new HttpEntity<>(requestJson,httpHeaders);
        ResponseEntity<PatientProfile> patientProfile = restTemplate.postForEntity(PATIENT_PROFILE,entity,PatientProfile.class);
        return patientProfile.getBody().getPatient().getUuid();
    }

    private String associatePatientToProgram(String  patientUuid,String id, String templateName)
            throws IOException, TemplateException {

        Template freemarkerTemplate = freeMarkerConfig.getTemplate(templateName);

        Map<String,Object> patientData = new HashMap<>();
        patientData.put("id",id);
        patientData.put("patientUuid",patientUuid);

        StringWriter stringWriter = new StringWriter();
        freemarkerTemplate.process(patientData,stringWriter);
        String requestJson = stringWriter.toString();

        HttpEntity<String> entity = new HttpEntity<>(requestJson,httpHeaders);
        ResponseEntity<PatientProgram> patientProgramEntity = restTemplate.postForEntity(BAHMNI_PATIENT_PROGRAM,entity,PatientProgram.class);
        log.debug("PatientProgramUuid "+ patientProgramEntity.getBody().getUuid());
        return patientProgramEntity.getBody().getUuid();
    }

    private Visit createVisit(String patientUuid, String patientProgramUuid, String templateName) throws IOException, TemplateException {
        Template freemarkerTemplate = freeMarkerConfig.getTemplate(templateName);

        Map<String,Object> patientData = new HashMap<>();
        patientData.put("patientUuid",patientUuid);
        patientData.put("patientProgramUuid",patientProgramUuid);

        StringWriter stringWriter = new StringWriter();
        freemarkerTemplate.process(patientData,stringWriter);
        String requestJson = stringWriter.toString();

        HttpEntity<String> entity = new HttpEntity<>(requestJson,httpHeaders);
        ResponseEntity<Visit> patientProgramEntity = restTemplate.postForEntity(BAHMNI_ENCOUNTER,entity,Visit.class);
        log.debug(patientProgramEntity.getBody().toString());
        return patientProgramEntity.getBody();
    }

    private void createObservation(String patientUuid, String patientProgramUuid, String templateName, Visit visitDetails) throws IOException, TemplateException {
        Template freemarkerTemplate = freeMarkerConfig.getTemplate(templateName);

        Map<String,Object> patientData = new HashMap<>();
        patientData.put("patientUuid",patientUuid);
        patientData.put("patientProgramUuid",patientProgramUuid);
        patientData.put("visitUuid", visitDetails.getVisitUuid());
        patientData.put("encounterUuid", visitDetails.getEncounterUuid());
        patientData.put("encounterDateTime", visitDetails.getEncounterDateTime());

        StringWriter stringWriter = new StringWriter();
        freemarkerTemplate.process(patientData,stringWriter);
        String requestJson = stringWriter.toString();

        HttpEntity<String> entity = new HttpEntity<>(requestJson,httpHeaders);
        ResponseEntity<String> patientProgramEntity = restTemplate.postForEntity(BAHMNI_ENCOUNTER,entity,String.class);
        log.debug(patientProgramEntity.getBody());
    }

}
