FROM simpleservices/base-image:latest

ADD go1.13.1.linux-amd64.tar.gz .

RUN apt-get update 

RUN mv /root/go/ /usr/local/ 
ENV PATH=$PATH:/usr/local/go/bin
