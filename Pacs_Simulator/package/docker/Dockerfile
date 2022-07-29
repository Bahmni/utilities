FROM openjdk:8-alpine

RUN mkdir -p /tmp/artifacts
RUN mkdir -p /var/lib/bahmni

RUN apk add curl postgresql-client

RUN curl -L -o /tmp/artifacts/dcmsnd.zip https://sourceforge.net/projects/dcm4che/files/dcm4che2/2.0.28/dcm4che-2.0.28-bin.zip/download
RUN unzip -d /var/lib/bahmni /tmp/artifacts/dcmsnd.zip
COPY target/pacssimulator-*-jar-with-dependencies.jar /var/lib/bahmni/pacs-simulator.jar
RUN curl -o wait-for.sh 'https://raw.githubusercontent.com/eficode/wait-for/v2.2.3/wait-for'
RUN chmod +x wait-for.sh
COPY package/docker/scripts/startup.sh startup.sh
RUN chmod +x startup.sh
RUN rm -rf /tmp/artifacts

CMD ["./startup.sh"]
