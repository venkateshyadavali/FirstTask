# Dockerfile to copy gameoflife .war file to tomcat webapps path and create an image
FROM tomcat
MAINTAINER kiranchakka
RUN apt-get update
COPY /var/lib/jenkins/workspace/FirstTask/gameoflife-web/target/*.war /usr/bin/tomcat/webapps/
EXPOSE 8088
CMD ["ls -ltr /usr/bin/tomcat/webapps/*.war"]
