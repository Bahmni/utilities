package org.bahmni.pacssimulator;

import org.apache.log4j.Logger;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public class Dcm4cheeClient extends DicomClient{
    private static final Logger log = Logger.getLogger(Dcm4cheeClient.class);

    public Dcm4cheeClient(String dcm4cheePostInstanceUrl) {
        super(dcm4cheePostInstanceUrl);
    }

    @Override
    public void post(File dicomFile) throws IOException, URISyntaxException, InterruptedException {
        if (dicomPostURL == null || dicomPostURL.trim().length() == 0)
            return;
        Runtime run = Runtime.getRuntime();
        Process process = null;
        String commandToRun = "/var/lib/bahmni/dcm4che-2.0.28/bin/dcmsnd "+ dicomPostURL + " " + dicomFile.getAbsolutePath();

        log.debug(commandToRun);
        System.out.println(commandToRun);
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
