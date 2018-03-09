FROM vettl/amazon-linux:latest
MAINTAINER genki_satoh
WORKDIR /home/ec2-user

ADD init_shells ./init_shells/

RUN cd init_shells && sh su.sh 
