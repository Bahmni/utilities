package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.HL7Exception;
import ca.uhn.hl7v2.model.Message;
import ca.uhn.hl7v2.model.v25.message.ORM_O01;
import ca.uhn.hl7v2.parser.PipeParser;
import ca.uhn.hl7v2.protocol.ReceivingApplication;
import ca.uhn.hl7v2.protocol.ReceivingApplicationException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/**
 * Receive Orders, return acknowledgement and upload an image with right dicom tags to Orthanc
 * It will not upload DICOM images to Orthanc for modify/cancel orders.
 * TODO : For Cancel order should it delete the DICOM image from Orthanc
 */
public class OrderMessageHandler implements ReceivingApplication {
    private static final Logger log = Logger.getLogger(OrderMessageHandler.class);

    private String orthancPostInstanceUrl;

    public OrderMessageHandler(String orthancPostInstanceUrl) {
        this.orthancPostInstanceUrl = orthancPostInstanceUrl;
    }

    @Override
    public Message processMessage(Message message, Map<String, Object> theMetadata) throws ReceivingApplicationException, HL7Exception {
        ORM_O01 ormMessage = (ORM_O01) message;
        String messageControlId = ormMessage.getMSH().getMessageControlID().getValue();
        log.debug("messagecontrolid:'" + messageControlId + "'");

        try {
            post("U_2015_05_26_14_18_35.dcm");

            String encodedMessage = new PipeParser().encode(message);
            log.debug("Received message:\n" + encodedMessage + "\n\n");
            return message.generateACK();
        } catch (IOException e) {
            log.error("Could not post image to Orthanc", e);
            throw new ReceivingApplicationException(e);
        } catch (URISyntaxException e) {
            log.error("Could not post image to Orthanc", e);
            throw new ReceivingApplicationException(e);
        }
    }

    @Override
    public boolean canProcess(Message message) {
        return message instanceof ORM_O01;
    }

    public void post(String fileName) throws IOException, URISyntaxException {
        CloseableHttpClient httpclient = HttpClients.createDefault();

        try {
            HttpPost httppost = new HttpPost(orthancPostInstanceUrl);
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

            URL resource = ClassLoader.getSystemResource(fileName);
            FileBody fileBody = new FileBody(new File(resource.toURI()));
            builder.addPart("file", fileBody);

            HttpEntity httpEntity = builder.build();
            httppost.setEntity(httpEntity);

            log.debug("executing request " + httppost.getRequestLine());
            HttpResponse response = httpclient.execute(httppost);
            HttpEntity resEntity = response.getEntity();

            log.debug(response.getStatusLine());
            if (resEntity != null) {
                log.debug(EntityUtils.toString(resEntity));
            }
        } finally {
            httpclient.close();
        }

    }
}