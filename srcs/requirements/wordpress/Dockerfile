# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msaidi <msaidi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/27 07:42:35 by msaidi            #+#    #+#              #
#    Updated: 2024/08/28 18:51:53 by msaidi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

ARG WP_DIR=/var/www/html


RUN apt-get update && apt-get install -y wget less \
    php-fpm \
    php-mysql \
    php-curl \
    php-xml \
    php-gd \
    php-mbstring \
    php-zip \
    php-intl \
    mariadb-client \
    unzip \
    && apt-get clean

RUN mkdir -p ${WP_DIR} /run/php/ 

RUN wget https://wordpress.org/wordpress-6.6.1.tar.gz && tar -xvzf wordpress-6.6.1.tar.gz && \
    mv wordpress ${WP_DIR} && \
    rm wordpress-6.6.1.tar.gz

RUN sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 9000|g" /etc/php/7.4/fpm/pool.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    chown -R www-data:www-data ${WP_DIR}

COPY ./tools/wpconf.sh .

RUN chmod +x wpconf.sh

CMD [ "bash", "wpconf.sh" ]