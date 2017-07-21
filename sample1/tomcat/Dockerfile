############java####################
FROM index.tenxcloud.com/docker_library/java:7
WORKDIR /usr/src/myapp
COPY $PWD/taobao-tomcat-7.0.59/ /tomcat/webapps
#RUN javac Main.java
#CMD ["java", "Main"]
CMD ["sh", "-c", "/tomcat/webapps/bin/startup.sh"]

#############Tomcat################
#FROM index.tenxcloud.com/tenxcloud/tomcat
#COPY taobao-tomcat-7.0.59/ /usr/src/myapp/

