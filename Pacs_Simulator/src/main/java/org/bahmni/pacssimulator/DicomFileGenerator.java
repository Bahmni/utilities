package org.bahmni.pacssimulator;

import com.pixelmed.dicom.DicomException;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public class DicomFileGenerator {
    public static void main(String[] args) {

        System.out.println("arguments passed: " + String.join(",", args));

        String patientId = "GAN203006";
        String givenName = "Rutgar";
        String familyName = "Ragos";
        String accessionNumber = "ORD-307";

        if (args.length > 0) {
            patientId = args[0];
            if (args.length > 1) {
                givenName = args[1];
            }
            if (args.length > 2) {
                familyName = args[2];
            }
            if (args.length > 3) {
                accessionNumber = args[3];
            }
        }

        System.out.println(String.format("Creating sample DICOM file with patientId:%s, givenName:%s, familyName:%s, accessionNumber:%s",
                patientId, givenName, familyName, accessionNumber));
        //loaded from classpath, so put file in resources directory
        DicomFile dicomFile = new DicomFile("U_2015_05_26_14_18_35.dcm");
        File file = null;
        try {
            file = dicomFile.generateFor(patientId, givenName, familyName, accessionNumber);
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (DicomException e) {
            e.printStackTrace();
        }
        System.out.println("File created : " + file.getAbsolutePath());
    }
}
