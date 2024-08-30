# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    wpconf.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msaidi <msaidi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/28 15:11:15 by msaidi            #+#    #+#              #
#    Updated: 2024/08/28 19:54:17 by msaidi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# while ! ping -c 1 mariadb > /dev/null 2>&1;do
#     echo "MariaDB is not reachable yet... "
#     sleep 2
# done

cat << EOF > var/www/html/wordpress/wp-config.php
<?php
define( 'DB_NAME', '$MYSQL_DATABASE' );
define( 'DB_USER', '$MYSQL_USER' );
define( 'DB_PASSWORD', '$MYSQL_PASSWORD' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_COLLATE', '' );
define('FS_METHOD','direct');
\$table_prefix = 'wp_';
if ( ! defined( 'ABSPATH' ) ) {
define( 'ABSPATH', __DIR__ . '/' );}
require_once ABSPATH . 'wp-settings.php';
EOF


wp core install --url=localhost --title="INCEPTION" --admin_user=${WP_ADMIN} --admin_password=${ADMIN_PASS} --admin_email='owner@example.com' --path=/var/www/html/wordpress --allow-root
wp user create ${USER_NAME} user1@example.com --user_pass=${USER_PASS} --role=author --path=/var/www/html/wordpress --allow-root



php-fpm7.4 -F