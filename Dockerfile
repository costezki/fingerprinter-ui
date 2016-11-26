FROM ubuntu:latest
MAINTAINER Eugeniu Costetchi <costezki.eugen@gmail.com>

RUN apt-get update

# Install basic applications
RUN apt-get install -y git build-essential # dialog net-tools tar curl nano wget

# Install Python and Basic Python Tools
RUN apt-get install -y python python-pip #python-dev python-distribute python-software-properties

#install basic node
RUN apt-get install --yes nodejs nodejs-legacy npm

# installing required python libraries
RUN pip install pylatex pandas #scikit-learn jupyter beautifulsoup4 xmltodict lxml

# adding the basic latex system
RUN apt-get install -y texlive-latex-recommended

# adding only packagejson so that we can install node modules
COPY ./package.json /microservice/
# install node modules
RUN cd /microservice && npm install

# copy the current folrer to a root level folder in docker
COPY . /microservice

# No need to download python script because it should already be in the source code
#RUN cd /microservice/pysrc && chmod +x ./import-script.sh && ./import-script.sh

# Define working directory:
WORKDIR /microservice

# expose tcp port 80
EXPOSE 3000 #80 8080 443 22

# default command: run the web server on port 80:
CMD ["npm", "start"]