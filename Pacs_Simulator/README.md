A simple DICOM AE simulator that can receive a ORM message and upload a dicom file to PACS. 

### Build
> cd utilities/Pacs_Simulator

> mvn clean install -U assembly:single

### Basic command to run
> cd utilities/Pacs_Simulator
 
> java -Ddcmsnd_path=/path-to-dcmsnd-cmd/ -jar target/pacssimulator-1.0-SNAPSHOT-jar-with-dependencies.jar 8087 20000 dcm4chee DCM4CHEE@192.168.33.10:11112


In the above:

* 8087 - is the listening port
* 20000 - is connection timeout in milisec
* dcm4chee - is the PACS server type. possible values are dcm4chee or orthanc
* DCM4CHEE@192.168.33.10:11112 - is the name, address, port of the PACS Server

Note, while sending to DCM4CHEE it is required that you have the "dcmsnd" utility command in your local path. 
You can do so like above passing through system parameter "dcmsnd_path". If not passed, then default path /var/lib/bahmni/dcm4che-2.0.28/bin/ will be used. Notice the trailing slash "/" that must be passed. 


### Generate a DICOM file with minimum details
You may also generate a sample DICOM file with minimum patient detail and related to an accession number by using the DicomFileGenerator.java. 

This is useful when you do not want to run the simulator, but want to upload a DICOM file manually using "dcmsnd" command yourself.


> java -cp target/pacssimulator-1.0-SNAPSHOT-jar-with-dependencies.jar org.bahmni.pacssimulator.DicomFileGenerator [patientId] [givenName] [familyName] [accessionNumber]

example

> java -cp target/pacssimulator-1.0-SNAPSHOT-jar-with-dependencies.jar org.bahmni.pacssimulator.DicomFileGenerator GAN123 Gajendra Singh ORD-309

The above should tell you the location of the generated file. 

You can then take the file and use "dcmsnd" command manually to send the file. But before that
1. In DCM4CHEE, create an AE (Application Entity) with name "DCMSND" and port "11113" (can be anything, make sure AE and port is not already in use)
2. Run the following command with your generated file

> ./dcmsnd <scp[@host][:port]> <generated-dcm-file> -stgcmt -L <aet[@host][:port]>

Example
> ./dcmsnd DCM4CHEE@192.168.33.10:11112 /tmp/3bd0d47c-7794-4095-9170-357591454cbd.dcm -stgcmt -L DCMSND:11113

You can pass other options too. Lookup for more options with dcmsnd command 
> dcmsnd --help



 


 