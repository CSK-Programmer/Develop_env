<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'CSK_Blog' );

/** MySQL database username */
define( 'DB_USER', 'Admini' );

/** MySQL database password */
define( 'DB_PASSWORD', '100618' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '9~I=IkE}X`5Yf1.IFIjwl>FTW^<59B |kTj8n:1 ^1@&}5u#yU7}2$-WiaLc0[MM' );
define( 'SECURE_AUTH_KEY',  '9iILypc&:;o-Z/5hDdB$ERX Ju,3_<#qPpV-%5w?Bj)~d@krGZ97m5y9:QYr4!=[' );
define( 'LOGGED_IN_KEY',    'XXGG%D& eSIN29k&o|vV4~M!:b(!|o&%&Tm2d``8.hI|7_1|X2t^)<xooZcYLTpR' );
define( 'NONCE_KEY',        'G<}EhW4Pzi#PeJs(IYc6VHX!%MxGd[55U(u%_{ne-B{V4D~/j]$`2PN|5)-;GC]D' );
define( 'AUTH_SALT',        'zZS3 !a-uclA;H}?^$*8WlxiJC5(F}gqsj^N5^*>^`-nuRolU#sNP&<ft?[u~QF=' );
define( 'SECURE_AUTH_SALT', 'P.oLC,;_(;rL^^5lWK,w]$~1VwA>8P;Jk%x0lf*d)MJpw?/9sT/]LO@Ubkm7@pf5' );
define( 'LOGGED_IN_SALT',   'aq!B)H8T,R/6m<ZdW)g)bcc|1J~gw1.p`l:Snhz;YmtH n[r=DUDL}A@KY5n W-/' );
define( 'NONCE_SALT',       'R)/^:@N5PU]PNGC^GT9)!@l!J9qxum_`gD>u;3/g7aK|4yWdO9DRRw2|suI-3;aO' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
