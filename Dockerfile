FROM ubuntu:14.04

MAINTAINER Gabriel Glachant <gglachant@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu trusty main" > /etc/apt/sources.list.d/nginx-stable-trusty.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
RUN apt-get -qy update
RUN apt-get -qy install nginx

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["-g daemon off;"]
