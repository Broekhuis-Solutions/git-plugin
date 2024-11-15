FROM ubuntu:22.04

ENV MAVEN_VERSION=3.9.6
ENV MAVEN_DOWNLOAD_URL=https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz

RUN apt-get update && \
    apt-get install -y wget openjdk-17-jdk openjdk-17-jre tar && \
    apt-get clean

RUN mkdir /code \
    && mkdir /bin/maven

RUN wget ${MAVEN_DOWNLOAD_URL} -O /tmp/apache-maven.tar.gz && \
    tar -xzf /tmp/apache-maven.tar.gz -C /opt && \
    ln -s /opt/apache-maven-${MAVEN_VERSION}/bin/mvn /bin/mvn && \
    rm /tmp/apache-maven.tar.gz

WORKDIR /code

COPY . .

CMD ["mvn", "clean", "install", "-U", "-Dmaven.test.skip=true"]
