package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.model.v25.message.ORM_O01;
import org.apache.log4j.Logger;
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
import java.net.URISyntaxException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class DicomFile {
    private static final Logger log = Logger.getLogger(DicomFile.class);

    private String fileName;

    public DicomFile(String fileName) {
        this.fileName = fileName;
    }

    public File modifyDicomAsPerOrder(ORM_O01 ormMessage) throws URISyntaxException, IOException {
        URL resource = ClassLoader.getSystemResource(fileName);
        File inputDicomFile = new File(resource.toURI());

        DicomInputStream dicomInputStream = new DicomInputStream(new FileInputStream(inputDicomFile));
        DicomObject dicomObject = dicomInputStream.readDicomObject();

        String patientId = ormMessage.getPATIENT().getPID().getPatientID().getIDNumber().getValue();
        String givenName = ormMessage.getPATIENT().getPID().getPatientName(0).getGivenName().getValue();
        String familyName = ormMessage.getPATIENT().getPID().getPatientName(0).getFamilyName().getSurname().getValue();
        String orderId = ormMessage.getORDER().getORC().getPlacerOrderNumber().getEntityIdentifier().getValue();

        dicomObject.putString(Tag.PatientName, VR.PN, givenName + " " + familyName);
        dicomObject.putString(Tag.PatientID, VR.LO, patientId);
        dicomObject.putString(Tag.AccessionNumber, VR.LO, orderId);
        dicomObject.putString(Tag.StudyID, VR.LO, UUID.randomUUID().toString());

        dicomObject.putString(Tag.StudyDate, VR.DT, new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));

        return writeFile(dicomObject);
    }

    public File writeFile(DicomObject dicomObject) {
        String randomFileName = UUID.randomUUID().toString();
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
}
