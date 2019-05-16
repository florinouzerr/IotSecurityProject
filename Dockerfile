FROM ubuntu
RUN apt-get update
RUN apt-get install apt-utils apache2 wget iputils-ping net-tools -y
