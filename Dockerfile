FROM vettl/amazon-linux:latest
MAINTAINER genki_satoh
WORKDIR /home/ec2-user

ADD init_shells ./init_shells/

WORKDIR /home/ec2-user/init_shells

USER root
RUN yum clean all

RUN sh mysql.sh && sh nginx.sh && sh git.sh \
    && sh rbenv.sh && sh pyenv.sh && sh tree.sh

RUN yum install -y vim | true

USER ec2-user
RUN sh nvm.sh && sh bashrc.sh


## vim setup
WORKDIR /home/ec2-user
RUN git clone https://github.com/gnk-sato-hotto/scripts
WORKDIR /home/ec2-user/scripts/vim
RUN sh build.sh

RUN source ~/.bashrc
