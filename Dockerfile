FROM arm64v8/tomcat:9.0.14-jre8-alpine

MAINTAINER github.com/PengBAI

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

ADD webapp/ /usr/local/tomcat/webapps/ROOT/


RUN ln -sf /bin/bash /bin/sh

## Create non-root user 
#RUN useradd -ms /bin/bash mario \
 #   && usermod -aG mario mario \
  #  && chown -R mario:mario /usr/local/tomcat

EXPOSE 8080
CMD ["catalina.sh", "run"]

#USER mario

