<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '8TH# dZRSG_E_~WwO(F3sF_9Ev^|n-+b9]6qFk4evm4Fox;w_DFhuad+_YPZoi_}' );
define( 'SECURE_AUTH_KEY',   'o3k8ktNCL4jQSgi9D1QKA}KGD>o>mm&?]P5>9.DGV6c*bio0I 107Tizp<a~CAjt' );
define( 'LOGGED_IN_KEY',     '.Qam>/S<FcgualH54>@6h{zGij6Zi`C0l)5Z3H]B1%-oCK{s^rUnspL30*nQyPEa' );
define( 'NONCE_KEY',         '0 ^|J(sunE2r{=)/3~ZblAPZM~paa*&CG~-ju}PKSYR;G9*3zX+ */}!r,+T+s/A' );
define( 'AUTH_SALT',         ':T{{+bWH^0Sx&,.%1jDw(xNK9Xt8V78b!dkDq@u^8)1e/#hQqqd`AT S#/QU5h/%' );
define( 'SECURE_AUTH_SALT',  'Z?=*eQ5A5N5B0Rq~<o}2nyHbsZNjr_aAK:@l&%p*LJApTg/lN%;B{/G`@5eoupPa' );
define( 'LOGGED_IN_SALT',    'Jix}U=NC]wAEFP8_?f56d}.K~#AzVUAe5vy`A8Yej-XU~+;LqbDKj1qddBg4^0q>' );
define( 'NONCE_SALT',        '}iNTH%$$zdIV=9?8LVfV(!uE$6=z9zOVV-w)H[s]ych{89;;J k#5$h~k|QhX]56' );
define( 'WP_CACHE_KEY_SALT', 'O??d^wnu~PY v4W[^27+xciCVCb^{(#|Exn*1Sm4u/&A5-u6p},lp#nVQ)>A0{c~' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
