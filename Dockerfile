FROM gainmaster/archlinux
MAINTAINER Tony Hesjevik <tony@hesjevik.no>

RUN pacman-install ca-certificates iptables lxc docker 

ADD start_docker.sh /usr/local/bin/start_docker

VOLUME /var/lib/docker

CMD ["start_docker"]