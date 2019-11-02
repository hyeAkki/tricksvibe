<?php
/*
 * @link              http://wpthemespace.com
 * @since             1.0.0
 * @package           click to top
 *
 * @wordpress-plugin
 * Plugin Name:       Click to top
 * Plugin URI:        http://wpthemespace.com
 * Description:       A Click to top tool kit that helps your visitor go top smoothly.
 * Version:           1.2.3
 * Author:            Noor alam
 * Author URI:        https://www.fiverr.com/nnalam
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       click-top
 * Domain Path:       /languages
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}
/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
 if ( is_admin() ) {
     // We are in admin mode
     require_once( dirname(__file__).'/admin/click_top_options.php');
}


require_once( dirname(__file__). '/includes/click_top_options_set.php');



 if ( ! function_exists( 'click_to_top_script' ) ) :
function click_to_top_script() {
wp_enqueue_style( 'click-to-top-font-awesome.min', plugins_url( '/assets/css/font-awesome.min.css', __FILE__ ), array(), '4.5', 'all');
wp_enqueue_style( 'click-to-top-hover', plugins_url( '/assets/css/hover.css', __FILE__ ), array(), '1.0', 'all');
wp_enqueue_style( 'click-to-top-style', plugins_url( '/assets/css/click-top-style.css', __FILE__ ), array(), '1.0', 'all');

wp_enqueue_script('jquery');
wp_enqueue_script( 'click-to-top-easing', plugins_url( '/assets/js/jquery.easing.js', __FILE__ ), array( 'jquery' ), '1.0', false);
wp_enqueue_script( 'click-to-top-scrollUp', plugins_url( '/assets/js/jquery.scrollUp.js', __FILE__ ), array( 'jquery' ), '1.0', false);
}
add_action( 'wp_enqueue_scripts', 'click_to_top_script' );
endif;

	/**
	 * Load the plugin text domain for translation.
	 *
	 * @since    1.0.0
	 */
if ( ! function_exists( 'click_top_top_textdomain' ) ) :
	function click_top_top_textdomain() {

		load_plugin_textdomain(
			'click-top',
			false,
			dirname( dirname( plugin_basename( __FILE__ ) ) ) . '/languages'
		);

	}
add_action( 'plugins_loaded', 'click_top_top_textdomain' );
endif;

function click_top_admin_script(){
	wp_enqueue_script( 'click-top-admin-js', plugins_url( '/assets/js/admin.js', __FILE__ ), array( 'jquery' ), '1.6.0', true);


}
add_action('admin_enqueue_scripts','click_top_admin_script');