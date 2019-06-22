FROM ubuntu:bionic
#RUN echo "deb http://fr.archive.ubuntu.com/ubuntu/ bionic main multiverse universe restricted" > /etc/apt/sources.list
RUN apt update

# Builder dependencies
RUN apt install -y qt5-default g++ make

# Web app dependencies
RUN apt install -y npm
#RUN npm config set registry http://registry.npmjs.org/
RUN npm install --global webpack-cli
RUN npm install --global webpack
RUN npm install --global typescript
RUN npm install --global less
