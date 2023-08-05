FROM tomcat:8.5.88-jre11-temurin-focal

COPY target/01-maven-web-app*.war /usr/local/tomcat/webapps/
