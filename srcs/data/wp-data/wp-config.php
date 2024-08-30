<?php
define( 'DB_NAME', '' );
define( 'DB_USER', '' );
define( 'DB_PASSWORD', '' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_COLLATE', '' );
define('FS_METHOD','direct');
$table_prefix = 'wp_';
if ( ! defined( 'ABSPATH' ) ) {
define( 'ABSPATH', __DIR__ . '/' );}
require_once ABSPATH . 'wp-settings.php';
