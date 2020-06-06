FROM rkp201/jdk-tomcat:1.2

#add your target war as app.war present in /usr/local/tomcat/webapps/
ADD target/*.war /usr/local/tomcat/webapps/app.war

#catalina cmd to run the war
CMD /usr/local/tomcat/bin/catalina.sh run