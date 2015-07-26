<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'db_plcsystems');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Bt?Wx(n@n2z!EDK!E0wh;%LkBG@f.+JQ-l)u48`Mv^h*+nuY2P%,I*H<bH+x>~H`');
define('SECURE_AUTH_KEY',  '88|3O1s/NOD-+t+aoOB6Y-*&K0tU2 !a}g]FLN2xC.&F`l_& `U8I+HhL.VK0XUo');
define('LOGGED_IN_KEY',    'J-Qc^QnEI)lzIndX+sr()rU8?+nr5(smEu#a^-,3PNsT+!(9g-I1ma--cqb:)*8y');
define('NONCE_KEY',        ')gjg@q>%jNky~&SakiYw2%Q;]qRj?DlhC!_~9|#d7SKg[%[ob%o;5HJh:cP[wO3c');
define('AUTH_SALT',        'v&@U_G:dST_y!@^h-]V/2^(_]9Fw<f[U8}uPy(D/mDR5THnM<q`sbJ>wiMfKQ7({');
define('SECURE_AUTH_SALT', '51Ng[0=:&B6l~j}{1AfV6LC|H#S@Uw4|}yf{:~:n#I5O${Zkdk)LPcegDNZZ+t5+');
define('LOGGED_IN_SALT',   'h7;[wnO8UF=c{hgV,A)NTQ%O2aw?U^$BcL-,;f1U~c`K93?&&9IPH.02RQ)Plg@>');
define('NONCE_SALT',       'K|_H_^7AI:D5E.Rkj6RS8f`?G>H:[$ tuKPp]4T<P--?uy?2&L[V8cfrv<n+ag|*');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
