FROM centos:6.6

MAINTAINER Tam Du <tamdu@chotot.vn>

WORKDIR /app

ADD . /app

RUN yum clean all \
 && yum -y install tar git which \
 && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.2/install.sh | bash \
 && source ~/.bashrc \
 && nvm install 0.12 \
 && nvm alias default 0.12 \
 && nvm use 0.12 \
 && npm -g install pm2 coffee-script


CMD ["run","start"]
ENTRYPOINT source ~/.bashrc && npm
