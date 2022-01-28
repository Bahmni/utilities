package org.bahmni.pacssimulator;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public class Dcm4cheeClient extends DicomClient{
    private static final Logger log = LogManager.getLogger(Dcm4cheeClient.class);
    private static final String DCMSND_LOCATION = "/var/lib/bahmni/dcm4che-2.0.28/bin/";

    public Dcm4cheeClient(String dcm4cheePostInstanceUrl) {
        super(dcm4cheePostInstanceUrl);
    }

    @Override
    public void post(File dicomFile) throws IOException, URISyntaxException, InterruptedException {
        String dcmsndPath = System.getProperty("dcmsnd_path");
        if (dcmsndPath != null && !"".equals(dcmsndPath)) {
            log.info("Using dcmsnd command path specified: " + dcmsndPath);
        } else {
            log.info("Using default dcmsnd command path: " + DCMSND_LOCATION);
            dcmsndPath = DCMSND_LOCATION;
        }

        if (dicomPostURL == null || dicomPostURL.trim().length() == 0)
            return;
        Runtime run = Runtime.getRuntime();
        Process process = null;
        String commandToRun = dcmsndPath + "dcmsnd " + dicomPostURL + " " + dicomFile.getAbsolutePath();

        log.info("Running command:" + commandToRun);
        System.out.println("Running command:" + commandToRun);
        try {

            process = run.exec(commandToRun);
            System.out.println(process.getInputStream());
            System.out.println(process.getErrorStream());
            process.waitFor();
            if(process.exitValue()!=0){
                throw new IOException("Post to dcm4chee Failed");
            }
        }
        catch (IOException e) {
            System.out.println("ERROR.RUNNING.CMD");
            throw new RuntimeException(commandToRun+e.toString());
        }
        finally{
            process.destroy();
        }
    }
}
