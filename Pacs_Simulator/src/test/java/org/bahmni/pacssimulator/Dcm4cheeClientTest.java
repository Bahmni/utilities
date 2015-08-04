package org.bahmni.pacssimulator;

import org.junit.Test;

public class Dcm4cheeClientTest {
    @Test
    public void postTheDicomToDcm4chee() throws Exception {
        Dcm4cheeClient client = new Dcm4cheeClient("DCM4CHEE@172.18.2.27:11112");
//        client.post(new File("/Users/swathiv/Documents/Bahmni/utilities/Pacs_Simulator/src/test/resources/U_2015_05_26_14_23_16.dcm"));

    }

    @Test//(expected = RuntimeException.class)
    public void dontPostTheDicomToDcm4chee() throws Exception {
        Dcm4cheeClient client = new Dcm4cheeClient("DCM4CHEE@192.168.33.10:11112");
//        client.post(new File("U_2015_05_26_14_23_16.dcm"));
    }
}
