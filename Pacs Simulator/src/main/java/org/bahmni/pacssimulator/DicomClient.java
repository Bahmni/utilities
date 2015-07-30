package org.bahmni.pacssimulator;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public abstract class DicomClient {
    String dicomPostURL;

    protected DicomClient(String dicomPostURL) {
        this.dicomPostURL = dicomPostURL;
    }

    public abstract void post(File dicomFile) throws IOException, URISyntaxException, InterruptedException;
}
