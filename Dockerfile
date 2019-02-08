# Dockerfile to copy gameoflife .war file to tomcat webapps path and create an image
FROM tomcat
MAINTAINER kiranchakka
RUN apt-get update
COPY gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8088
#CMD ["ls -ltr /usr/bin/tomcat/webapps/*.war"]
CMD ["catalina.sh", "run"]
