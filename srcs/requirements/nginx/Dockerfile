# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msaidi <msaidi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/24 15:55:14 by msaidi            #+#    #+#              #
#    Updated: 2024/08/26 17:08:27 by msaidi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt update && apt install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout /etc/nginx/ssl/signed-cert.key \
        -out /etc/nginx/ssl/signed-cert.crt \
        -subj "/CN=localhost"

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]