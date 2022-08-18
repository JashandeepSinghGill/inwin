# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
# FROM ojbc/java8-tomcat8
# COPY Home-nVentory.war opt/tomcat/webapps
# CMD ["catalina.sh", "run"]

# FROM ubuntu:16.04

# # --Install prerequisites
# RUN apt-get -y update && apt-get -y upgrade
# RUN apt-get -y install openjdk-8-jdk wget
# RUN apt-get -y install curl
# RUN mkdir /usr/local/tomcat
# RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.27/bin/apache-tomcat-8.0.27.tar.gz -O /tmp/tomcat.tar.gz
# RUN cd /tmp && tar xvfz tomcat.tar.gz
# RUN cp -Rv /tmp/apache-tomcat-8.0.27/* /usr/local/tomcat/
# # --java
# ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64




# WORKDIR /usr/local/tomcat/webapps
# COPY Home-nVentory.war /usr/local/tomcat/webapps


# EXPOSE 8080

# CMD ["catalina.sh" "run"]

FROM tomcat:8.0.20-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]
# COPY ./catalina-dynamic-port.sh /
# RUN chmod +x /catalina-dynamic-port.sh
# ENTRYPOINT ["/catalina-dynamic-port.sh"]
# CMD ["catalina-dynamic-port.sh"]
 
#  FROM tomcat
# COPY Home-nVentory.war /usr/local/tomcat/webapps/

