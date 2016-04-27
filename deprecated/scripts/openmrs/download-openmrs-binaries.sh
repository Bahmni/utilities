rm -f $1/*

wget -O $1/bahmnicore-0.2-SNAPSHOT.omod https://ci-bahmni.thoughtworks.com/job/Build-Bahmni-Core/lastSuccessfulBuild/artifact/omod/target/bahmnicore-0.2-SNAPSHOT.omod
wget -O $1/bahmnicore-mail-appender-0.2-SNAPSHOT-jar-with-dependencies.jar https://ci-bahmni.thoughtworks.com/job/Build-Bahmni-Core/lastSuccessfulBuild/artifact/bahmni-mail-appender/target/bahmnicore-mail-appender-0.2-SNAPSHOT-jar-with-dependencies.jar
wget -O $1/jss-old-data-0.2-SNAPSHOT-jar-with-dependencies.jar https://ci-bahmni.thoughtworks.com/job/Build-Bahmni-Core/lastSuccessfulBuild/artifact/jss-old-data/target/jss-old-data-0.2-SNAPSHOT-jar-with-dependencies.jar
