package org.bahmni.pacssimulator;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public class OrthancClient extends DicomClient{
    private static final Logger log = LogManager.getLogger(OrthancClient.class);

    public OrthancClient(String orthancPostInstanceUrl) {
        super(orthancPostInstanceUrl);
    }

    @Override
    public void post(File dicomFile) throws IOException, URISyntaxException {
        if (dicomPostURL == null || dicomPostURL.trim().length() == 0)
            return;

        CloseableHttpClient httpclient = HttpClients.createDefault();

        try {
            HttpPost httppost = new HttpPost(dicomPostURL);
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

            FileBody fileBody = new FileBody(dicomFile);
            builder.addPart("file", fileBody);

            HttpEntity httpEntity = builder.build();
            httppost.setEntity(httpEntity);

            HttpResponse response = httpclient.execute(httppost);
//            HttpEntity resEntity = response.getEntity();
//            if (resEntity != null) {
//                log.debug(EntityUtils.toString(resEntity));
//            }
        } finally {
            httpclient.close();
        }
    }

}
