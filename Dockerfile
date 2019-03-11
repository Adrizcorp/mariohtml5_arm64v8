FROM 192.168.0.230:5000/tomcatarm64 

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

