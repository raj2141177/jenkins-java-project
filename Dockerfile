# Use official Tomcat runtime
FROM tomcat:9.0-jdk17
 
# Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*
 
# Copy WAR file into Tomcat webapps as ROOT application
COPY target/NETFLIX-1.2.2.war /usr/local/tomcat/webapps/ROOT.war
 
# Expose Tomcat port
EXPOSE 8080
 
# Start Tomcat
CMD ["catalina.sh", "run"]
 
