FROM debian:9.9

# install tools
RUN apt-get update && apt-get install -y curl make gcc software-properties-common vim git wget nmap telnet gnupg2 gettext-base
COPY wait-for /usr/local/bin
RUN chmod +x /usr/local/bin/wait-for

#WORKDIR /root/


