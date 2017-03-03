FROM ubuntu:14.04

# Update base image
RUN apt-get -y update && apt-get -y upgrade

# For add-apt-repository
RUN apt-get install -q -y software-properties-common
RUN apt-get install -q -y unzip

# Install Java 8
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys C43C79AD && gpg -a --export C43C79AD | apt-key add -
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
RUN apt-get install -q -y oracle-java8-installer

# Add unpriviledged user to run backend application
RUN useradd -M -u 5555 -s /sbin/nologin idnow

# Add the dist package of de.idnow.example from de.idnow.example/target/universal/de-idnow-example-1.0-SNAPSHOT.zip
COPY de.idnow.example/target/universal/de-idnow-example-1.0-SNAPSHOT.zip /opt
RUN cd /opt && \
    unzip -q de-idnow-example-1.0-SNAPSHOT.zip && \
    rm de-idnow-example-1.0-SNAPSHOT.zip && \
    chown -R idnow:idnow de-idnow-example-1.0-SNAPSHOT
# It can be improved further if there is separate temporary directory

# Start the play netty server on image start
USER idnow
EXPOSE 9000
ENTRYPOINT ["/opt/de-idnow-example-1.0-SNAPSHOT/bin/de-idnow-example"]
