# Dockerfile to copy gameoflife .war file to tomcat webapps path and create an image
FROM tomcat
MAINTAINER kiranchakka
RUN apt-get update
#RUN cp -rf /var/lib/jenkins/workspace/FirstTask/gameoflife-web/target/gameoflife.war /usr/bin/tomcat/webapps/gameoflife.war
#COPY /var/lib/jenkins/workspace/FirstTask/gameoflife-web/target/gameoflife.war /usr/bin/tomcat/webapps/gameoflife.war
COPY /var/lib/jenkins/workspace/FirstTask/gameoflife\-web/target/gameoflife.war /usr/bin/tomcat/webapps/gameoflife.war
EXPOSE 8088
#CMD ["ls -ltr /usr/bin/tomcat/webapps/*.war"]
CMD ["catalina.sh", "run"]
