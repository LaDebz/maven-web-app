#Docker file:
#Individual docker file created for each base image (Sonaqube, Nexus, Tomcat) e.g
# Deploy to Nexus
FROM sonatype/nexus3:3.67.1-java11 as nexus
# Deploy to tomcat
FROM tomcat:8.0.20-jre8 as deploy
RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
EXPOSE 8055
# Run SonarQube analysis
FROM sonarqube:latest as test
