package org.bahmni.pacssimulator;

import ca.uhn.hl7v2.HL7Exception;
import ca.uhn.hl7v2.protocol.ReceivingApplicationExceptionHandler;
import org.apache.log4j.Logger;

import java.util.Map;

public class ErrorHandler implements ReceivingApplicationExceptionHandler {
    private static final Logger log = Logger.getLogger(ErrorHandler.class);

    @Override
    public String processException(String incomingMessage, Map<String, Object> incomingMetadata, String outgoingMessage, Exception e) throws HL7Exception {
        log.error("ErrorHandler");
        log.error(incomingMessage);
        log.error(e);
        return "error";
    }
}
