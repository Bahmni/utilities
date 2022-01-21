package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.model.v25.message.ORM_O01;
import com.pixelmed.dicom.DicomException;
import com.pixelmed.dicom.UIDGenerator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.dcm4che2.data.DicomObject;
import org.dcm4che2.data.Tag;
import org.dcm4che2.data.VR;
import org.dcm4che2.io.DicomInputStream;
import org.dcm4che2.io.DicomOutputStream;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class DicomFile {
    private static final Logger log = LogManager.getLogger(DicomFile.class);

    private String fileName;

    public DicomFile(String fileName) {
        this.fileName = fileName;
    }

    public File generateFor(ORM_O01 ormMessage) throws URISyntaxException, IOException, DicomException {
//        String patientId = ormMessage.getPATIENT().getPID().getPatientID().getIDNumber().getValue();
        String patientId = ormMessage.getPATIENT().getPID().getPatientIdentifierList(0).getIDNumber().getValue();
        String givenName = ormMessage.getPATIENT().getPID().getPatientName(0).getGivenName().getValue();
        String familyName = ormMessage.getPATIENT().getPID().getPatientName(0).getFamilyName().getSurname().getValue();
        String orderId = ormMessage.getORDER().getORC().getPlacerOrderNumber().getEntityIdentifier().getValue();
        return generateFor(patientId, givenName, familyName, orderId);
    }

    public File writeFile(DicomObject dicomObject) {
        String randomFileName = UUID.randomUUID().toString()+".dcm";
        File outputDicomFile = new File(randomFileName);
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(outputDicomFile);
        } catch (FileNotFoundException e) {
            log.error(e);
            return null;
        }
        DicomOutputStream dicomOutputStream = new DicomOutputStream(new BufferedOutputStream(fileOutputStream));
        try {
            dicomOutputStream.writeDicomFile(dicomObject);
        } catch (IOException e) {
            log.error(e);
            return null;
        } finally {
            try {
                dicomOutputStream.close();
            } catch (IOException ignore) {
            }
        }
        return outputDicomFile;
    }

    public File generateFor(String patientId, String givenName, String familyName, String orderId) throws URISyntaxException, IOException, DicomException {
        File someFile = Paths.get(fileName).toFile();
        InputStream inputStream;
        if (someFile.exists()) {
            inputStream = new FileInputStream(someFile);
        } else {
            inputStream = ClassLoader.getSystemResourceAsStream(fileName);
        }
        if  (inputStream == null) {
            throw new RuntimeException("Could not load file");
        }
        try {
            UIDGenerator uidGenerator = new UIDGenerator();
            DicomInputStream dicomInputStream = new DicomInputStream(inputStream);
            DicomObject dicomObject = dicomInputStream.readDicomObject();
            //        String patientId = ormMessage.getPATIENT().getPID().getPatientID().getIDNumber().getValue();
            String studyId = UUID.randomUUID().toString();
            String instanceUid = uidGenerator.getNewSOPInstanceUID(studyId, "1", "1").toString();
            String seriesInstanceUid = uidGenerator.getNewSeriesInstanceUID(studyId, "1").toString();
            String studyInstanceUid = uidGenerator.getNewStudyInstanceUID(studyId).toString();
            System.out.println("Study ID: " + dicomObject.getString(Tag.StudyInstanceUID));
            dicomObject.putString(Tag.PatientName, VR.PN, givenName + " " + familyName);
            dicomObject.putString(Tag.PatientID, VR.LO, patientId);
            dicomObject.putString(Tag.AccessionNumber, VR.LO, orderId);
            dicomObject.putString(Tag.StudyID, VR.LO, studyId);
            dicomObject.putString(Tag.MediaStorageSOPInstanceUID, VR.UI, instanceUid);
            dicomObject.putString(Tag.SOPInstanceUID, VR.UI, instanceUid);
            dicomObject.putString(Tag.SeriesInstanceUID, VR.UI, seriesInstanceUid);
            dicomObject.putString(Tag.StudyInstanceUID, VR.UI, studyInstanceUid);

            //        System.out.println("The Dicom file for patient"+patientId+givenName+familyName+orderId);
            //        System.out.println(dicomObject.toString());

            dicomObject.putString(Tag.StudyDate, VR.DT, new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
            return writeFile(dicomObject);
        } finally {
            inputStream.close();
        }
    }

    public static void main(String[] args) {
        DicomFile dicomFile = new DicomFile("U_2015_05_26_14_18_35.dcm");
        File file = null;
        try {
            file = dicomFile.generateFor("GAN203006", "Rutgar", "Ragos", "ORD-307");
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (DicomException e) {
            e.printStackTrace();
        }
        System.out.println(file.getAbsolutePath());
    }
}
