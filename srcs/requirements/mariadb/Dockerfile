# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msaidi <msaidi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/30 10:45:28 by msaidi            #+#    #+#              #
#    Updated: 2024/08/30 10:45:31 by msaidi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FROM debian:bullseye

RUN apt update && apt-get install -y mariadb-server

ARG MYSQL_DATABASE \
    MYSQL_ROOT_PASSWORD \
    MYSQL_USER \
    MYSQL_PASSWORD

RUN mkdir -p /var/lib/mysql /var/run/mysqld \
    && chown -R mysql:mysql /var/lib/mysql /var/run/mysqld \
    && chmod 777 /var/run/mysqld

RUN sed -i 's/bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY /tools/script.sh /etc

RUN sh /etc/script.sh

# RUN sed -i 's/--user=$myuser/--user=root/' /usr/bin/mysqld_safe


CMD ["mysqld"]
