<?php
// Before removing this file, please verify the PHP ini setting `auto_prepend_file` does not point to this.

if (file_exists('/usr/app/wp-content/plugins/wordfence/waf/bootstrap.php')) {
	define("WFWAF_LOG_PATH", '/usr/app/wp-content/wflogs/');
	include_once '/usr/app/wp-content/plugins/wordfence/waf/bootstrap.php';
}
?>