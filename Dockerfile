FROM ubuntu:14.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-7-jre-headless wget
RUN wget -O /tmp/tomcat7.tar.gz http://mirror.cogentco.com/pub/apache/tomcat/tomcat-7/v7.0.53/bin/apache-tomcat-7.0.53.tar.gz
RUN (cd /opt && tar zxf /tmp/tomcat7.tar.gz)
RUN (mv /opt/apache-tomcat* /opt/tomcat)
EXPOSE 8080

RUN  wget -O /opt/tomcat/webapps/gitbucket.war https://github.com/takezoe/gitbucket/releases/download/1.13/gitbucket.war

CMD /bin/sh -e /opt/tomcat/bin/catalina.sh run
