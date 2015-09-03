package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.model.v25.message.ORM_O01;
import com.pixelmed.dicom.DicomException;
import com.pixelmed.dicom.UIDGenerator;
import org.apache.log4j.Logger;
import org.dcm4che2.data.DicomObject;
import org.dcm4che2.data.Tag;
import org.dcm4che2.data.VR;
import org.dcm4che2.io.DicomInputStream;
import org.dcm4che2.io.DicomOutputStream;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class DicomFile {
    private static final Logger log = Logger.getLogger(DicomFile.class);

    private String fileName;

    public DicomFile(String fileName) {
        this.fileName = fileName;
    }

    public File modifyDicomAsPerOrder(ORM_O01 ormMessage) throws URISyntaxException, IOException, DicomException {
        UIDGenerator uidGenerator = new UIDGenerator();

        InputStream resourceAsStream = this.getClass().getResourceAsStream(fileName);
        DicomInputStream dicomInputStream = new DicomInputStream(ClassLoader.getSystemResourceAsStream(fileName));
        DicomObject dicomObject = dicomInputStream.readDicomObject();

//        String patientId = ormMessage.getPATIENT().getPID().getPatientID().getIDNumber().getValue();
        String patientId = ormMessage.getPATIENT().getPID().getPatientIdentifierList(0).getIDNumber().getValue();
        String givenName = ormMessage.getPATIENT().getPID().getPatientName(0).getGivenName().getValue();
        String familyName = ormMessage.getPATIENT().getPID().getPatientName(0).getFamilyName().getSurname().getValue();
        String orderId = ormMessage.getORDER().getORC().getPlacerOrderNumber().getEntityIdentifier().getValue();
        String studyId = UUID.randomUUID().toString();
        String instanceUid = uidGenerator.getNewSOPInstanceUID(studyId,"1","1").toString();
        String seriesInstanceUid = uidGenerator.getNewSeriesInstanceUID(studyId, "1").toString();
        String studyInstanceUid = uidGenerator.getNewStudyInstanceUID(studyId).toString();

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
}
