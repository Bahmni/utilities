package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.HL7Exception;
import ca.uhn.hl7v2.model.Message;
import ca.uhn.hl7v2.model.v25.message.ORM_O01;
import ca.uhn.hl7v2.protocol.ReceivingApplication;
import ca.uhn.hl7v2.protocol.ReceivingApplicationException;
import org.apache.log4j.Logger;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Map;

/**
 * Receive Orders, return acknowledgement and upload an image with right dicom tags to Orthanc
 * It will not upload DICOM images to Orthanc for modify/cancel orders.
 * TODO : For Cancel order should it delete the DICOM image from Orthanc
 */
public class OrderMessageHandler implements ReceivingApplication {
    private static final Logger log = Logger.getLogger(OrderMessageHandler.class);

    private OrthancClient orthancClient;

    public OrderMessageHandler(OrthancClient orthancClient) {
        this.orthancClient = orthancClient;
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
            modifiedDicomFile = dicomFile.modifyDicomAsPerOrder(ormMessage);
            orthancClient.post(modifiedDicomFile);
            return message.generateACK();

//            String encodedMessage = new PipeParser().encode(message);
//            log.debug("Received message:\n" + encodedMessage + "\n\n");
        } catch (IOException e) {
            log.error("Could not post image to Orthanc", e);
            throw new ReceivingApplicationException(e);
        } catch (URISyntaxException e) {
            log.error("Could not post image to Orthanc", e);
            throw new ReceivingApplicationException(e);
        } finally {
            if (modifiedDicomFile != null)
                modifiedDicomFile.delete();
        }
    }

}