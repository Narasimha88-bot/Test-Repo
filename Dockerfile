FROM tomcat:jre25-temurin-jammy
WORKDIR /usr/local/tomcat
COPY target/*.war /usr/local/tomcat/webapps/app.war
EXPOSE 8080
CMD ["catalina.sh", "run"]