# pac-simulator

The **pac-simulator** is a straightforward DICOM AE (Application Entity) simulator designed to receive ORM (Order Request Message) messages and upload DICOM files to a PACS (Picture Archiving and Communication System).

## Prerequisites

The pixelmed library version required is no longer available on Maven repositories. You can find the JAR file version under the `lib` directory.

1. **Build Local Repository**

   ```bash
   cd utilities/Pacs_Simulator
   mkdir local-maven-repo
   mvn deploy:deploy-file -DgroupId=pixelmed -DartifactId=pixelmed -Dversion=20150809 -Durl=file:./local-maven-repo/ -DrepositoryId=local-maven-repo -DupdateReleaseInfo=true -Dfile=./lib/pixelmed-20150809.jar
   ./build.sh
   ```

## Building

```bash
cd utilities/Pacs_Simulator
mvn clean install -U assembly:single
```

:warning: Before running, verify the name and location of the JAR file. The GitHub release name of the JAR may differ.

## Basic Command to Run

```bash
cd utilities/Pacs_Simulator
java -Ddcmsnd_path=/path-to-dcmsnd-cmd/ -jar target/pacssimulator-1.0.0-jar-with-dependencies.jar 8087 20000 dcm4chee DCM4CHEE@192.168.33.10:11112
```

In the command above:
- `8087` is the listening port.
- `20000` is the connection timeout in milliseconds.
- `dcm4chee` is the PACS server type, which can be either `dcm4chee` or `orthanc`.
- `DCM4CHEE@192.168.33.10:11112` specifies the name, address, and port of the PACS Server.

Note: When sending to DCM4CHEE, ensure the "dcmsnd" utility command is in your local path. You can specify the path using the system parameter `dcmsnd_path`. If not provided, the default path `/var/lib/bahmni/dcm4che-2.0.28/bin/` will be used. Ensure the trailing slash `/` is included.

Also, note that the JAR file name `pacssimulator-1.0.0-jar-with-dependencies.jar` may vary. Verify your build accordingly.

### Generating a DICOM File with Minimal Details

You can generate a sample DICOM file with minimal patient details and associate it with an accession number using `DicomFileGenerator.java`. This is useful for manually uploading a DICOM file using the "dcmsnd" command.

```bash
java -cp target/pacssimulator-1.0.0-jar-with-dependencies.jar org.bahmni.pacssimulator.DicomFileGenerator GAN123 Gajendra Singh ORD-309 /tmp/test.dcm
```

The command above will provide the location of the generated file. You can also use an index of sample files bundled with the library.

```bash
java -cp target/pacssimulator-1.0.0-jar-with-dependencies.jar org.bahmni.pacssimulator.DicomFileGenerator GAN123 Gajendra Singh ORD-309 0
```

After generating the file:

1. In DCM4CHEE, create an AE (Application Entity) named "DCMSND" on port "11113" (ensure it's not in use).
2. Use the generated file with the following command:

```bash
./dcmsnd DCM4CHEE@192.168.33.10:11112 /tmp/3bd0d47c-7794-4095-9170-357591454cbd.dcm -stgcmt -L DCMSND:11113
```

Additional options can be explored with the `dcmsnd` command:

```bash
dcmsnd --help
```

This README provides comprehensive instructions for building, running, and generating DICOM files using the **pac-simulator**.
