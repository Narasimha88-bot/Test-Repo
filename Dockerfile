FROM tomcat:10.1-jre21-temurin-jammy

# The current directory is

WORKDIR /usr/local/tomcat

# Copy the details from the source machine to the container

COPY target/*.war /usr/local/tomcat/webapps/app.war
# Expose the container to the 8080

EXPOSE 8080
# used to run the commands when the container gets start

CMD ["catalina.sh", "run"]