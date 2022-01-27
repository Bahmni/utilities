package org.bahmni.pacssimulator;

import com.pixelmed.dicom.DicomException;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Random;

public class DicomFileGenerator {

    public static void main(String[] args) {

        String[] sampleFiles = { "U_2015_05_26_14_18_35.dcm", "U_2015_05_26_14_23_16.dcm"};
        int i = new Random().nextInt(sampleFiles.length - 0) + 1;

        System.out.println("arguments passed: " + String.join(",", args));

        String patientId = "GAN203006";
        String givenName = "Rutgar";
        String familyName = "Ragos";
        String accessionNumber = "ORD-307";
        String dicomFilePath = sampleFiles[i-1];

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
            if (args.length > 4) {
                String fileRef = args[4];
                try {
                    int index = Integer.parseInt(fileRef);
                    if (index >= sampleFiles.length) {
                        System.out.println("Passed image index is invalid. Please make sure that its within - " + sampleFiles.length);
                        return;
                    }
                    dicomFilePath = sampleFiles[index];
                } catch (NumberFormatException nfe) {
                    System.out.println("Index parameter is not a number. Checking if its an available file");
                    dicomFilePath = fileRef;
                }
            }
        }

        System.out.println(String.format("Creating sample DICOM file with patientId:%s, givenName:%s, familyName:%s, accessionNumber:%s, file:%s",
                patientId, givenName, familyName, accessionNumber, dicomFilePath));
        //loaded from classpath, so put file in resources directory
        DicomFile dicomFile = new DicomFile(dicomFilePath);
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
