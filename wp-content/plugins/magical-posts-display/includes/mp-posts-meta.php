<?php 
/*
*
* All posts meta 
*
*
*/


if ( ! function_exists( 'mp_display_posted_on' ) ) :
	/**
	 * Prints HTML with meta information for the xblog post-date/time.
	 */
	function mp_display_posted_on() {
		$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';
		if ( get_the_time( 'U' ) !== get_the_modified_time( 'U' ) ) {
			$time_string = '<time class="updated" datetime="%3$s">%4$s</time>';
		}

		$time_string = sprintf( $time_string,
			esc_attr( get_the_date( DATE_W3C ) ),
			esc_html( get_the_date() ),
			esc_attr( get_the_modified_date( DATE_W3C ) ),
			esc_html( get_the_modified_date() )
		);

		$posted_on = sprintf(
			/* translators: %s: post date. */
			esc_html_x( '%s', 'post date', 'magical-posts-display' ),
			'<a href="' . esc_url( get_permalink() ) . '" rel="bookmark"><i class="fa fa-clock-o"></i> ' . $time_string . '</a>'
		);

		echo '<span class="posted-on">' . $posted_on . '</span>'; // WPCS: XSS OK.

	}
endif;

if ( ! function_exists( 'mp_display_posted_by' ) ) :
	/**
	 * Prints HTML with meta information for the xblog author.
	 */
	function mp_display_posted_by() {
		$byline = sprintf(
			/* translators: %s: post author. */
			esc_html_x( ' %s', 'post author', 'magical-posts-display' ),
			'<span class="author vcard"><a class="url fn n" href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '">' . esc_html( get_the_author() ) . '</a></span>'
		);

		echo '<span class="byline"> <i class="fa fa-user-circle"></i>' . $byline . '</span>'; // WPCS: XSS OK.

	}
endif;

if ( ! function_exists( 'mp_display_category_link' ) ) :
	/**
	 * Prints HTML with meta information for the xblog author.
	 */
	function mp_display_category_link() {
		if ( 'post' === get_post_type() ) {
			/* translators: used between list items, there is a space after the comma */
			$categories_list = get_the_category_list( esc_html__( ', ', 'magical-posts-display' ) );
			if ( $categories_list ) {
				/* translators: 1: list of categories. */
				printf( '<span class="cat-links"><i class="fa fa-folder-open-o"></i>' . esc_html__( ' %1$s', 'magical-posts-display' ) . '</span>', $categories_list ); // WPCS: XSS OK.
			}

		} 

	}
endif;

if ( ! function_exists( 'mp_display_tag_link' ) ) :
	/**
	 * Prints HTML with meta information for the xblog author.
	 */
	function mp_display_tag_link() {
		if ( 'post' === get_post_type() ) {
			/* translators: used between list items, there is a space after the comma */
			$tags_list = get_the_tag_list( '', esc_html_x( ', ', 'list item separator', 'magical-posts-display' ) );
			if ( $tags_list ) {
				/* translators: 1: list of tags. */
			printf( '<span class="tags-links">' . esc_html__( 'Tag: %1$s', 'magical-posts-display' ) . '</span>', $tags_list ); // WPCS: XSS OK.
			}
		} 

	}
endif;



if ( ! function_exists( 'mp_display_single_comment_icon' ) ) :
	/**
	 * Prints HTML with meta information for the categories, tags and comments.
	 */
	function mp_display_single_comment_icon() {
		if ( ! post_password_required() && ( comments_open() && get_comments_number() ) ) {
			echo '<span class="single-comments-link ml-2"><i class="fa fa-comments"></i>';
			comments_popup_link(
				sprintf(
					wp_kses(
						/* translators: %s: post title */
						__( '<span class="screen-reader-text"> on %s</span>', 'magical-posts-display' ),
						array(
							'span' => array(
								'class' => array(),
							),
						)
					),
					get_the_title()
				)
			,__('1 ','magical-posts-display'),__('% ','magical-posts-display'),'comments-link', ' ');
			echo '</span>';
		}

	}
endif;

function mp_display_pagination( $paged, $mp_loop ){
?>
<div class="mp-pagination">
<?php
 echo paginate_links( array(
 	'current' => $paged,
 	'total' => $mp_loop->max_num_pages,
 	'next_text' => '<i class="fa fa-angle-right"></i>',
 	'prev_text' => '<i class="fa fa-angle-left"></i>',
 ) ); ?>
</div>
<?php
}