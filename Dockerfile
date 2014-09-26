FROM ubuntu:14.04

MAINTAINER Gabriel Glachant <gglachant@gmail.com>

ENV UBUNTU_ADJECTIVE trusty
ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu $UBUNTU_ADJECTIVE main" > /etc/apt/sources.list.d/nginx-stable-$UBUNTU_ADJECTIVE.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C 2>&1
RUN apt-get -qy update && apt-get -qy install nginx-full && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["-g daemon off;"]
