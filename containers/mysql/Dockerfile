FROM example/base

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server

RUN sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf
RUN (/usr/bin/mysqld_safe &) ; sleep 3 ; /usr/bin/mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO root@'%';"
RUN (/usr/bin/mysqld_safe &) ; sleep 3 ; /usr/bin/mysql -u root -e "CREATE DATABASE rrrspec DEFAULT CHARSET utf8mb4;"

EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]
