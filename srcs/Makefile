# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msaidi <msaidi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/28 16:45:34 by msaidi            #+#    #+#              #
#    Updated: 2024/08/30 10:32:24 by msaidi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Inception

all:
	# mkdir -p ~/${USER}/data
	# mkdir -p ~/${USER}/data/mariadb
	# mkdir -p ~/${USER}/data/wordpress
	docker-compose -f docker-compose.yml --env-file .env up -d
		
build:
	@sh requirements/tools/script.sh
	@docker-compose -f docker-compose.yml --env-file .env up -d --build

start:
	docker-compose -f docker-compose.yml --env-file .env start

stop:
	docker-compose -f docker-compose.yml --env-file .env stop

down:
	docker-compose -f docker-compose.yml --env-file .env down

re:
	docker-compose -f docker-compose.yml --env-file .env up -d --build

clean:
	docker system prune -a
	rm -rf ~/data

fclean:
	docker-compose -f docker-compose.yml --env-file .env stop
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force
	rm -rf ~/data