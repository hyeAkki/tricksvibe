<?php
/*
 * @link              http://wpthemespace.com
 * @since             1.0.0
 * @package           haslider slider
 *
 * @wordpress-plugin
 * Plugin Name:       Magical Posts Display
 * Plugin URI:        http://wpthemespace.com
 * Description:       Show your site posts in a great way.
 * Version:           1.0.0
 * Author:            Noor alam
 * Author URI:        https://profiles.wordpress.org/nalam-1
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       magical-posts-display
 * Domain Path:       /languages
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

define( 'MAGICAL_POSTS_DISPLAY_DIR', plugin_dir_path( __FILE__ ) );
define( 'MAGICAL_POSTS_DISPLAY_URL', plugin_dir_url( __FILE__ ) );

/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
 if ( is_admin() ) {
     // We are in admin mode
require_once( MAGICAL_POSTS_DISPLAY_DIR .'admin/mp-display-post.php' );
require_once( MAGICAL_POSTS_DISPLAY_DIR .'admin/mp-display-admin-role.php' );
require_once( MAGICAL_POSTS_DISPLAY_DIR .'admin/mp-display-column-set.php' );
require_once( MAGICAL_POSTS_DISPLAY_DIR .'admin/mp-display-update-massage.php' );

require_once (MAGICAL_POSTS_DISPLAY_DIR . 'admin/src/cmb2/init.php');
require_once (MAGICAL_POSTS_DISPLAY_DIR . 'admin/src/cmb2-tabs/cmb2-tabs.php');
require_once (MAGICAL_POSTS_DISPLAY_DIR . 'admin/src/cmb-field-select2/cmb-field-select2.php');
require_once (MAGICAL_POSTS_DISPLAY_DIR . 'admin/src/cmb2-slider/slider-field.php');
require_once (MAGICAL_POSTS_DISPLAY_DIR . 'admin/src/cmb2-radio-image.php');
require_once (MAGICAL_POSTS_DISPLAY_DIR . 'admin/src/cmb2-switch-button.php');
require_once (MAGICAL_POSTS_DISPLAY_DIR .'admin/extra-function.php' );
require_once (MAGICAL_POSTS_DISPLAY_DIR .'admin/mp-display-meta-tab.php' );

}

require_once( MAGICAL_POSTS_DISPLAY_DIR .'includes/mp-display-shortcode.php' );

	/**
	 * Load the plugin all style and script.
	 *
	 * @since    1.0.0
	 */

 if ( ! function_exists( 'mp_display_style_script' ) ) :
function mp_display_style_script() {
wp_enqueue_style( 'animate', plugins_url( '/assets/css/animate.css', __FILE__ ), array(), '1.0', 'all');
wp_enqueue_style( 'bootstrap.min', plugins_url( '/assets/css/bootstrap.min.css', __FILE__ ), array(), '1.0', 'all');
wp_enqueue_style( 'font-awesome.min', plugins_url( '/assets/css/font-awesome.min.css', __FILE__ ), array(), '1.0', 'all');
wp_enqueue_style( 'mp-style', plugins_url( '/assets/css/mp-style.css', __FILE__ ), array(), '1.0', 'all');


wp_enqueue_script( 'bootstrap.min', plugins_url( '/assets/js/bootstrap.min.js', __FILE__ ), array( 'jquery' ), '1.0', true);
wp_enqueue_script( 'haslider-main', plugins_url( '/assets/js/main.js', __FILE__ ), array( 'jquery' ), '1.0', true);
}
add_action( 'wp_enqueue_scripts', 'mp_display_style_script',999 );
endif;

/**
 * Admin style enqueue.
 *
 * @since 1.0.0
 */
if ( ! function_exists( 'mp_display_admin_scripts' ) ) :
 function mp_display_admin_scripts() {
 	global $pagenow;

    if(!in_array($pagenow, array('post-new.php', 'post.php'))) {
    	return;
    }
	wp_enqueue_style('mp-admin-style', plugins_url('/assets/css/admin-style.css', __FILE__), array(), '1.0.0', 'all' );

	wp_enqueue_script( 'cmb2-conditional-logic', plugins_url( '/assets/js/cmb2-conditional-logic.js', __FILE__ ), array( 'jquery' ), '2.5.1', true);


}
add_action( 'admin_enqueue_scripts', 'mp_display_admin_scripts' );
endif;

/**
 * haslider slider activation hook.
 *
 */ 
 if ( ! function_exists( 'mp_display_activation_setup' ) ) :
function mp_display_activation_setup() {
    // Trigger our function that registers the custom post type
    mp_display_post_type();
 
    // Clear the permalinks after the post type has been registered
    flush_rewrite_rules();
    // Add new administrator role
	mp_display_admin_role();
}
register_activation_hook( __FILE__, 'mp_display_activation_setup' ); 
endif; 
/**
 * haslider slider deactivation hook.
 *
 */ 
 if ( ! function_exists( 'mp_display_deactivation_setup' ) ) :
function mp_display_deactivation_setup() {
 
    // Clear the permalinks to remove our post type's rules
    flush_rewrite_rules();
	
	// gets the administrator role remove
	mp_display_admin_role_remove();
 
}
register_deactivation_hook( __FILE__, 'mp_display_deactivation_setup' );
endif;

	/**
	 * Load the plugin text domain for translation.
	 *
	 * @since    1.0.0
	 */
if ( ! function_exists( 'mp_display_textdomain' ) ) :
	function mp_display_textdomain() {

		load_plugin_textdomain(
			'magical-posts-display',
			false,
			dirname( dirname( plugin_basename( __FILE__ ) ) ) . '/languages'
		);

	}
add_action( 'plugins_loaded', 'mp_display_textdomain' );
endif;

function mp_display_img_size(){
//new image size added
add_image_size( 'slider-bg', 1900, 800, true );
add_image_size( 'slider-img1', 420, 650, true );
add_image_size( 'slider-img2', 320, 640, true );
}
add_action( 'plugins_loaded', 'mp_display_img_size' );
