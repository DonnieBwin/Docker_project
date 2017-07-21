FROM  index.tenxcloud.com/docker_library/nginx 

MAINTAINER bwd "bwd2016@outlook.com"

#RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
#RUN echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list

#ENV NGINX_VERSION 1.9.9-1~jessie
#
#RUN apt-get update && \
#    apt-get install -y ca-certificates nginx=${NGINX_VERSION} && \
#    rm -rf /var/lib/apt/lists/*
#
# forward request and error logs to docker log collector
#RUN ln -sf /dev/stdout /var/log/nginx/access.log
#RUN ln -sf /dev/stderr /var/log/nginx/error.log
COPY nginx.conf /etc/nginx/ 
COPY wf.conf /etc/nginx/conf.d/ 

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

############java####################
FROM index.tenxcloud.com/docker_library/java:7
#COPY $PWD/edas-config-center /usr/src/myapp
WORKDIR /usr/src/myapp
#RUN javac Main.java
CMD ["java", "Main"]

#############Tomcat################
FROM index.tenxcloud.com/tenxcloud/tomcat
#COPY taobao-tomcat-7.0.59/ /usr/src/myapp/

###############edas##############
RUN echo "192.168.104.229 jmenv.tbsite.net" >> /etc/hosts
COPY $PWD/edas-config-center/ /usr/src/myapp
RUN cd /usr/src/myapp/ && chmod +x startup.sh
RUN sh startup.sh
CMD ["sh", "-c", "startup.sh"]
#RUN echo "192.168.104.229 jmenv.tbsite.net" >> /etc/hosts
