package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.DefaultHapiContext;
import ca.uhn.hl7v2.HapiContext;
import ca.uhn.hl7v2.app.Connection;
import ca.uhn.hl7v2.app.ConnectionListener;
import ca.uhn.hl7v2.app.HL7Service;
import org.apache.log4j.Logger;

import java.net.Inet4Address;
import java.net.UnknownHostException;

public class Simulator {
    private static final org.apache.log4j.Logger log = Logger.getLogger(Simulator.class);

    private final int port;
    private final int timeout;
    private final DicomClient dicomClient;

    public Simulator(int port, int timeout, DicomClient client) {
        this.port = port;
        this.timeout = timeout;
        this.dicomClient = client;
    }

    public static void main(String[] args) throws Exception {
        int port = 9000;
        int timeout = 300000;
        String orthancPostInstanceUrl = "http://192.168.33.10:8042/instances";
        String dcm4cheePostUrl = "DCM4CHEE@192.168.33.10:11112";
        String dicomClient;
        String postUrl = null;
        DicomClient client = new Dcm4cheeClient(null);

        if (args.length > 0) {
            if (args.length >= 1)
                port = Integer.parseInt(args[0]);
            if (args.length >= 2)
                timeout = Integer.parseInt(args[1]);
            if (args.length >= 3) {
                dicomClient = args[2];
                if(dicomClient.equals("orthanc")) {
                    postUrl = orthancPostInstanceUrl;
                    if (args.length >= 4) {
                        postUrl = args[3];
                    }
                    client = new OrthancClient(postUrl);
                }
                else {
                    postUrl = dcm4cheePostUrl;
                    if (args.length >= 4) {
                        postUrl = args[3];
                    }
                    client = new Dcm4cheeClient(postUrl);
                }
            }
        }

        Simulator simulator = new Simulator(port, timeout, client);
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
                        log.debug("New connection received: " + connection.getRemoteAddress().toString());
                    }

                    @Override
                    public void connectionDiscarded(Connection connection) {
                        log.debug("Lost connection from: " + connection.getRemoteAddress().toString());
                    }
                });

        server.startAndWait();
        System.setProperty("ca.uhn.hl7v2.app.initiator.timeout", Integer.toString(timeout));
        log.debug("Starting server at " + Inet4Address.getLocalHost().getHostAddress() + ":" + port + " with timeout of " + timeout);
    }
}
