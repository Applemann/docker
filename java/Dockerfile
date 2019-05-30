FROM simpleservices/base-image:latest

# install java 8
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com EEA14886                       \ 
    && add-apt-repository 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main'   \
    && echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections   \
    && apt-get update && apt-get install -y oracle-java8-installer

COPY locale.gen /etc/locale.gen
RUN locale-gen
ENV LANG=en_US.UTF-8
