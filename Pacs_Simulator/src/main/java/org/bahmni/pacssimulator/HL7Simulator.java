package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.DefaultHapiContext;
import ca.uhn.hl7v2.HapiContext;
import ca.uhn.hl7v2.app.Connection;
import ca.uhn.hl7v2.app.ConnectionListener;
import ca.uhn.hl7v2.app.HL7Service;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.net.Inet4Address;
import java.net.UnknownHostException;

public class HL7Simulator {
    private static final Logger log = LogManager.getLogger(HL7Simulator.class);

    private final int port;
    private final int timeout;
    private final DicomClient dicomClient;

    public HL7Simulator(int port, int timeout, DicomClient client) {
        this.port = port;
        this.timeout = timeout;
        this.dicomClient = client;
    }

    public static void main(String[] args) throws Exception {
        int paramPort = 9000;
        int paramTimeout = 300000;
        String orthancPostInstanceUrl = "http://192.168.33.10:8042/instances";
        String dcm4cheePostUrl = "DCM4CHEE@192.168.33.93:11112";
        String paramDicomClient;
        String paramPostUrl = dcm4cheePostUrl;
        DicomClient client = new Dcm4cheeClient(dcm4cheePostUrl);

        if (args.length > 0) {
            if (args.length >= 1)
                paramPort = Integer.parseInt(args[0]);
            if (args.length >= 2)
                paramTimeout = Integer.parseInt(args[1]);
            if (args.length >= 3) {
                paramDicomClient = args[2];
                if(paramDicomClient.equals("orthanc")) {
                    paramPostUrl = orthancPostInstanceUrl;
                    if (args.length >= 4) {
                        paramPostUrl = args[3];
                    }
                    client = new OrthancClient(paramPostUrl);
                }
                else {
                    if (args.length >= 4) {
                        paramPostUrl = args[3];
                    }
                    client = new Dcm4cheeClient(paramPostUrl);
                }
            }
        }

        HL7Simulator simulator = new HL7Simulator(paramPort, paramTimeout, client);
        System.out.println("starting with "+client.dicomPostURL);
        simulator.startServer();
    }

    private void startServer() throws InterruptedException, UnknownHostException {
        HapiContext hapiContext = new DefaultHapiContext();
        HL7Service server = hapiContext.newServer(port, false);
        server.registerApplication("ORM", "O01", new OrderMessageHandler(dicomClient));
        server.setExceptionHandler(new ErrorHandler());
        server.registerConnectionListener(
                new ConnectionListener() {
                    @Override
                    public void connectionReceived(Connection connection) {
                        log.debug("New connection received: {}", connection.getRemoteAddress().toString());
                    }

                    @Override
                    public void connectionDiscarded(Connection connection) {
                        log.debug("Lost connection from: {}", connection.getRemoteAddress().toString());
                    }
                });

        System.out.println("Starting server at " + Inet4Address.getLocalHost().getHostAddress() + ":" + port + " with timeout of " + timeout);
        server.startAndWait();
        System.setProperty("ca.uhn.hl7v2.app.initiator.timeout", Integer.toString(timeout));

    }
}
