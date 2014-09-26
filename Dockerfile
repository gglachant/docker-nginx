FROM ubuntu:14.04

MAINTAINER Gabriel Glachant <gglachant@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu precise main" > /etc/apt/sources.list.d/nginx-stable-precise.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
RUN apt-get -qy update
RUN apt-get -qy install nginx

ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["-g daemon off;"]
