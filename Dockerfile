FROM eclipse-temurin:17-jre-jammy
WORKDIR /usr/local/tomcat
COPY target/*.war /usr/local/tomcat/webapps/app.war
EXPOSE 8080
CMD ["catalina.sh", "run"]