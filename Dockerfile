FROM openjdk:8

RUN mkdir /usr/local/tomcat

RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz -O /tmp/tomcat.tar.gz

RUN cd /tmp && tar xvfz tomcat.tar.gz

RUN cp -Rv /tmp/apache-tomcat-8.5.54/* /usr/local/tomcat/

EXPOSE 8080

ADD target/*.war /usr/local/tomcat/webapps/app.war

CMD /usr/local/tomcat/bin/catalina.sh run