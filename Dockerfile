FROM ubuntu:14.04
MAINTAINER yaasita

RUN apt-get update
RUN apt-get install -y openssh-server ansible
RUN mkdir /var/run/sshd/

CMD /usr/sbin/sshd -D
