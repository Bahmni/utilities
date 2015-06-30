package org.bahmni.pacssimulator;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.log4j.Logger;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public class OrthancClient {
    private static final Logger log = Logger.getLogger(OrthancClient.class);

    private String orthancPostInstanceUrl;

    public OrthancClient(String orthancPostInstanceUrl) {
        this.orthancPostInstanceUrl = orthancPostInstanceUrl;
    }

    public void post(File dicomFile) throws IOException, URISyntaxException {
        CloseableHttpClient httpclient = HttpClients.createDefault();

        try {
            HttpPost httppost = new HttpPost(orthancPostInstanceUrl);
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

            FileBody fileBody = new FileBody(dicomFile);
            builder.addPart("file", fileBody);

            HttpEntity httpEntity = builder.build();
            httppost.setEntity(httpEntity);

            HttpResponse response = httpclient.execute(httppost);
            HttpEntity resEntity = response.getEntity();
//            if (resEntity != null) {
//                log.debug(EntityUtils.toString(resEntity));
//            }
        } finally {
            httpclient.close();
        }
    }

}
