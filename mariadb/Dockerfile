FROM applemann/base-image:latest

# install database
RUN apt-get install -y apt-transport-https                                                                               \
    && apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8                                       \
    && add-apt-repository 'deb [arch=amd64] http://www.ftp.saix.net/DB/mariadb/repo/10.1/debian stretch main'            \
    && apt-get update                                                                                                    \
    && echo 'mysql-server mysql-server/root_password password test1' | debconf-set-selections                            \
    && echo 'mysql-server mysql-server/root_password_again password test1' | debconf-set-selections                      \
    && apt-get install -y mariadb-server mysql-client 

COPY my.cnf /etc/mysql/my.cnf

# Add root
RUN /etc/init.d/mysql start && \
    mysql -e "CREATE USER 'root'@'%' IDENTIFIED BY 'test1';" && \
    mysql -e "GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;" 

EXPOSE 3306

ENTRYPOINT ["mysqld"]
