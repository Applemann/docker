FROM simpleservices/base-image:latest

COPY node-v10.16.0-linux-x64.tgz .

RUN apt-get update 

RUN tar xzf node-v10.16.0-linux-x64.tgz \
    && cp -r /root/node-v10.16.0-linux-x64/bin/* /usr/bin \
    && cp -r /root/node-v10.16.0-linux-x64/include/* /usr/include \
    && cp -r /root/node-v10.16.0-linux-x64/lib/* /usr/lib \
    && cp -r /root/node-v10.16.0-linux-x64/share/* /usr/share \
    && rm -rf /root/node-v10.16.0-linux-x64*

