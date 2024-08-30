<?php
define( 'DB_NAME', 'databasesql' );
define( 'DB_USER', 'userdb' );
define( 'DB_PASSWORD', 'userpass' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_COLLATE', '' );
define('FS_METHOD','direct');
$table_prefix = 'wp_';
if ( ! defined( 'ABSPATH' ) ) {
define( 'ABSPATH', __DIR__ . '/' );}
require_once ABSPATH . 'wp-settings.php';
