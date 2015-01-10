# Apache Geronimo, using Java 1.6
FROM java:6

MAINTAINER brian@jaxzin.com

# Download Geronimo
ADD http://apache.arvixe.com/geronimo/3.0.1/geronimo-tomcat7-javaee6-web-3.0.1-bin.tar.gz /apps/

# Untar Geronimo
WORKDIR /apps
RUN /bin/tar -xzf /apps/geronimo-tomcat7-javaee6-web-3.0.1-bin.tar.gz

#ENV JAVA_HOME $(readlink -f /usr/bin/java | sed "s:bin/java::")
ENV JAVA_HOME /usr/lib/jvm/java-6-openjdk-amd64/
ENV GERONIMO_HOME /apps/geronimo-tomcat7-javaee6-web-3.0.1/


EXPOSE 1050
EXPOSE 1099
EXPOSE 1527
EXPOSE 2001
EXPOSE 4201
EXPOSE 6882
EXPOSE 8009
EXPOSE 8080
EXPOSE 8443
EXPOSE 9999
EXPOSE 61616

WORKDIR $GERONIMO_HOME/bin/
CMD ["./geronimo", "run"]
