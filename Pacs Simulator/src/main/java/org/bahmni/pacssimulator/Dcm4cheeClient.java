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
        String commandToRun = "dcmsnd " + dicomPostURL + " " + dicomFile.getAbsolutePath();
        try {
            process = run.exec(commandToRun);
            process.getErrorStream();
            process.waitFor();

        }
        catch (IOException e) {
            e.printStackTrace();
            System.out.println("ERROR.RUNNING.CMD");

        }finally{
            process.destroy();
        }
    }
}
