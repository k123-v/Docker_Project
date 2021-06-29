FROM ubuntu

RUN mkdir -p  /opt/tomcat
RUN cd /opt/tomcat
RUN apt update -y

RUN apt install default-jdk -y
#RUN useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat

RUN apt-get install wget -y

RUN apt-get install tar -y


RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.68/bin/apache-tomcat-8.5.68.tar.gz -P /tmp

#RUN tar xf /tmp/apache-tomcat-9*.tar.gz -C /opt/tomcat

RUN tar -zxvf /tmp/apache-tomcat-8.5.68.tar.gz -C /opt/tomcat

EXPOSE 8080