FROM simpleservices/base-image:latest

RUN apt-get update 

ADD https://nodejs.org/dist/v12.16.1/node-v12.16.1-linux-x64.tar.xz .

RUN tar xf node-v12.16.1-linux-x64.tar.xz && rm node-v12.16.1-linux-x64.tar.xz

RUN cp -r /root/node-v12.16.1-linux-x64/bin/* /usr/bin \
    && cp -r /root/node-v12.16.1-linux-x64/include/* /usr/include \
    && cp -r /root/node-v12.16.1-linux-x64/lib/* /usr/lib \
    && cp -r /root/node-v12.16.1-linux-x64/share/* /usr/share \
    && rm -rf /root/node-v12.16.1-linux-x64*

