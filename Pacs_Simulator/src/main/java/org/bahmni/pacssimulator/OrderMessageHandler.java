package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.*;
import ca.uhn.hl7v2.model.*;
import ca.uhn.hl7v2.model.v25.message.*;
import ca.uhn.hl7v2.protocol.ReceivingApplication;
import ca.uhn.hl7v2.protocol.ReceivingApplicationException;
import com.pixelmed.dicom.DicomException;
import org.apache.log4j.Logger;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.*;

/**
 * Receive Orders, return acknowledgement and upload an image with right dicom tags to Orthanc/DCM4CHEE
 * It will not upload DICOM images to Orthanc/DCM4CHEE for modify/cancel orders.
 * TODO : For Cancel order should it delete the DICOM image from Orthanc
 */
public class OrderMessageHandler implements ReceivingApplication {
    private static final String CANCELLED = "CA";
    private static final Logger log = Logger.getLogger(OrderMessageHandler.class);

    private DicomClient dicomClient;

    public OrderMessageHandler(DicomClient dicomClient) {
        this.dicomClient = dicomClient;
    }

    @Override
    public boolean canProcess(Message message) {
        return message instanceof ORM_O01;
    }

    @Override
    public Message processMessage(Message message, Map<String, Object> theMetadata) throws ReceivingApplicationException, HL7Exception {
        DicomFile dicomFile = new DicomFile("U_2015_05_26_14_18_35.dcm");
        File modifiedDicomFile = null;

        try {
            ORM_O01 ormMessage = (ORM_O01) message;
            if(ormMessage.getORDER().getORC().getOrderControl().getValue().equals(CANCELLED)){
                return HL7Utils.generateACK(ormMessage.getMSH().getMessageControlID().getValue(), "BahmniEMR");
            }
            System.out.println("Recieved Order on modality for patient : "+ormMessage.getPATIENT().getPID().getPatientIdentifierList(0).getIDNumber().getValue());
            modifiedDicomFile = dicomFile.generateFor(ormMessage);
            dicomClient.post(modifiedDicomFile);
//            String encodedMessage = new PipeParser().encode(message);
//            log.debug("Received message:\n" + encodedMessage + "\n\n");
            return HL7Utils.generateACK(ormMessage.getMSH().getMessageControlID().getValue(), "BahmniEMR");
        } catch (IOException e) {
            log.error("Could not post image to " + dicomClient.dicomPostURL, e);
            throw new ReceivingApplicationException(e);
        } catch (URISyntaxException e) {
            log.error("Could not post image to " + dicomClient.dicomPostURL, e);
            throw new ReceivingApplicationException(e);
        } catch (InterruptedException e) {
            log.error("Could not post image to " + dicomClient.dicomPostURL, e);
            throw new ReceivingApplicationException(e);
        } catch (DicomException e){
            log.error("Could not post image to " + dicomClient.dicomPostURL, e);
            throw new ReceivingApplicationException(e);
        } finally {
            if (modifiedDicomFile != null)
                modifiedDicomFile.delete();
        }
    }

}