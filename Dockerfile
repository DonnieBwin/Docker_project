#Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER bwd2017 "bwd2016@outlook.com"
RUN apt-get update
RUN apt-get install -y -q nginx
RUN mkdir -p /var/www/html
ADD ${pwd}/nginx.global /etc/nginx/conf.d/
ADD ${pwd}/nginx.conf /etc/nginx/nginx.conf
#RUN echo "hi, i am in your container" > /usr/share/nginx/html/index.html
EXPOSE 	80
