<?php
/*
 * Include and setup custom metaboxes and fields. 
 *
 * @link              http://digitalkroy.com/mp-display
 * @since             1.0.0
 * @package          haslider slider
 *
 * @wordpress-plugin
 */
if ( ! function_exists( 'mp_display_cheackbox_default' ) ) :
function mp_display_cheackbox_default( $default ) {
    return isset( $_GET['post'] ) ? '' : ( $default ? (string) $default : '' );
}
endif;

//All meta show in tab
if ( ! function_exists( 'mp_display_group_tab' ) ) :
add_action( 'cmb2_init', 'mp_display_group_tab' );
function mp_display_group_tab() {

	$mp_display_meta = new_cmb2_box( array(
		'id'           => 'metabox-tabs',
		'title'        => __('All setup for magical posts display','magical-posts-display'),
		'object_types' => array('mp-display'), // post type
		'context'      => 'normal',
		'priority'     => 'high',
		'tabs'      => array(
            'one' => array(
                'label' => __('Setup Magical Posts', 'magical-posts-display'),
                'icon'  => 'dashicons-format-image', // Dashicon
            ),
            'two' => array(
                'label' => __('Post meta settings', 'magical-posts-display'),
                'icon'  => 'dashicons-format-gallery', // Dashicon
            ),
           /* 'three' => array(
                'label' => __('Advance Settings', 'magical-posts-display'),
                'icon'  => 'dashicons-format-gallery', // Dashicon
            ),*/
           
        ),
	) );
	/*
	$mp_display_meta->add_field(array(
        'name' => esc_html__('','posts_card_type'),
        'id'   => 'post_type',
        'type' => 'radio_image',
        'options' => array(
			'card' => __( 'Card view','posts_card_type' ),
			'section'   => __( 'section view','posts_card_type' ),
		),
		'default' => 'card',
		'tab'  => 'one',
        'render_row_cb' => array('CMB2_Tabs', 'tabs_render_row_cb'),
		
    ));*/
	
	// slider style one
	$slider_one = $mp_display_meta->add_field( array(
		'id'           => 'posts_card',
		'type'         => 'group',
		'repeatable'   => false,
		'tab'  => 'one',
        'render_row_cb' => array('CMB2_Tabs', 'tabs_render_row_cb'),
		'options'      => array(
			'group_title'   => __('Setup Magical Posts', 'magical-posts-display' ),
			
		),
		'fields' => array(
				array(
					'name' => __( 'Posts Show By', 'magical-posts-display' ),
					'desc'    => __( 'Add slider title. Must fill the field. Sliders can not be seen if it is empty.', 'magical-posts-display' ),
	    			'id'   => 'posts_show_by',
	    			'type' => 'pw_select',
	    			'default' => 'DESC',
	    			'options'          => array(
						'DESC'   => __( 'Latest Posts','magical-posts-display' ),
						'ASC'   => __( 'Oldest Posts','magical-posts-display' ),
						'category'   => __( 'Category','magical-posts-display' ),
						'tag'   => __( 'Tag','magical-posts-display' ),
					),
	    			
				),
				array(
					'name' => __( 'Select Category', 'magical-posts-display' ),
					'desc'    => __( 'Select category for display category posts', 'magical-posts-display' ),
	    			'id'   => 'posts_cat',
	    			'type' => 'pw_select',
	    			'default' => 'latest',
	    			'options'          => mp_display_get_term_options( 'category' ), 
	    			'attributes' => array(
						'data-conditional-id' => 'posts_show_by',
						'data-conditional-value' =>'category' ,

					),
	    			
				),
				array(
					'name' => __( 'Select tag', 'magical-posts-display' ),
					'desc'    => __( 'Select tag for display tag posts', 'magical-posts-display' ),
	    			'id'   => 'posts_tag',
	    			'type' => 'pw_select',
	    			'default' => 'latest',
	    			'options'          => mp_display_get_term_options( 'post_tag' ), 
	    			'attributes' => array(
						'data-conditional-id' => 'posts_show_by',
						'data-conditional-value' =>'tag' ,

					),
	    			
				),
				array(
					'name' => __( 'Posts number', 'magical-posts-display' ),
					'desc'    => __( 'Select posts number', 'magical-posts-display' ),
	    			'id'   => 'set_posts_num',
	    			'type' => 'radio_image',
	    			'default' => 'all',
	    			'options'          => array(
						'all'   => __( 'Show all posts','posts_card_type' ),
						'set'   => __( 'Select posts number','posts_card_type' ),
					),
	    			
				),
				array(
				'name'             => __( 'Number of posts', 'gbox' ),
				'desc'             => __( 'Set posts for display.', 'gbox' ),
				'id'               => 'posts_number',
				'type'        => 'own_slider',
				'min'         => '1',
				'max'         => '100',
				'default'     => '10', // start value
				'value_label' => __('posts:','gbox'),
				'attributes' => array(
						'data-conditional-id' => 'set_posts_num',
						'data-conditional-value' =>'set' ,

					),
				),
				array(
					'name' => __( 'Post card type', 'magical-posts-display' ),
					'desc'    => __( 'Select card type', 'magical-posts-display' ),
	    			'id'   => 'posts_card_type',
	    			'type' => 'pw_select',
	    			'default' => 'grid',
	    			'options'          => array(
						'grid'   => __( 'Grid style','posts_card_type' ),
						'list'   => __( 'List style','posts_card_type' ),
					),
	    			
				),/*
				array(
					'name' => __( 'Select grid Style', 'magical-posts-display' ),
					'desc'    => __( 'Select one style from here', 'magical-posts-display' ),
	    			'id'   => 'grid_style',
	    			'type' => 'pw_select',
	    			'default' => 'grid1',
	    			'options'          => array(
						'grid1'   => __( 'Grid style one','posts_card_type' ),
						'grid2'   => __( 'Grid style two','posts_card_type' ),
						'grid3'   => __( 'Grid style three','posts_card_type' ),
					),
					'attributes' => array(
						'data-conditional-id' => 'posts_card_type',
						'data-conditional-value' =>'grid' ,

					),
	    			
				),*/
				array(
					'name' => __( 'Grid column', 'magical-posts-display' ),
					'desc'    => __( 'Select grid column', 'magical-posts-display' ),
	    			'id'   => 'grid_column',
	    			'type' => 'pw_select',
	    			'default' => '4',
	    			'options'          => array(
						'12'   => __( 'One column','posts_card_type' ),
						'6'   => __( 'Two column','posts_card_type' ),
						'4'   => __( 'Three column','posts_card_type' ),
						'3'   => __( 'Four column','posts_card_type' ),
					),
					'attributes' => array(
						'data-conditional-id' => 'posts_card_type',
						'data-conditional-value' =>'grid' ,

					),
	    			
				),
/*
				array(
					'name' => __( 'Select list Style', 'magical-posts-display' ),
					'desc'    => __( 'Select one style from here', 'magical-posts-display' ),
	    			'id'   => 'list_style',
	    			'type' => 'pw_select',
	    			'default' => 'list1',
	    			'options'          => array(
						'list1'   => __( 'list style one','posts_card_type' ),
						'list2'   => __( 'List style two','posts_card_type' ),
					),
					'attributes' => array(
						'data-conditional-id' => 'posts_card_type',
						'data-conditional-value' =>'list' ,

					),
					
	    			
				),
*/
				array(
					'name' => __( 'Button text', 'magical-posts-display' ),
					'desc'    => __( 'Add read more button text.', 'magical-posts-display' ),
	    			'id'   => 'btn_text',
	    			'type' => 'text',
	    			'default' => __('Read More','magical-posts-display' ),
				),
				array(
					'name' => __( 'Select button', 'magical-posts-display' ),
					'desc'    => __( 'Select read more button style.', 'magical-posts-display' ),
	    			'id'   => 'button_style',
	    			'type' => 'pw_select',
	    			'default' => 'dark',
	    			'options'          => array(
	    				'dark'   => __( 'Button dark','posts_card_type' ),
						'primary'   => __( 'Button primary','posts_card_type' ),
						'secondary'   => __( 'Button secondary','posts_card_type' ),
						'success'   => __( 'Button success','posts_card_type' ),
						'danger'   => __( 'Button danger','posts_card_type' ),
						'warning'   => __( 'Button warning','posts_card_type' ),
						'info'   => __( 'Button info','posts_card_type' ),
						'light'   => __( 'Button light','posts_card_type' ),
						'link'   => __( 'Button link','posts_card_type' ),
					),
				),
	
			),
	) );	
	// tab one
		// slider style one
	$slider_one = $mp_display_meta->add_field( array(
		'id'           => 'posts_meta',
		'type'         => 'group',
		'repeatable'   => false,
		'tab'  => 'two',
        'render_row_cb' => array('CMB2_Tabs', 'tabs_render_row_cb'),
		'options'      => array(
			'group_title'   => __('Setup Magical Posts', 'magical-posts-display' ),
			
		),
		'fields' => array(
			array(
				'name'             => __( 'Show post category', 'gbox' ),
				'desc'             => __( 'You can show or hide post category.', 'gbox' ),
				'id'               => 'post_cat',
				'type'	           => 'switch',
		        'default'          => mp_display_cheackbox_default('on'),
			    			
			),
			array(
				'name'             => __( 'Show post author', 'gbox' ),
				'desc'             => __( 'You can show or hide post author.', 'gbox' ),
				'id'               => 'post_author',
				'type'	           => 'switch',
		        'default'          => mp_display_cheackbox_default('on'),
			    			
			),
			array(
				'name'             => __( 'Show post date', 'gbox' ),
				'desc'             => __( 'You can show or hide post date.', 'gbox' ),
				'id'               => 'post_date',
				'type'	           => 'switch',
		        'default'          => mp_display_cheackbox_default('on'),
			    			
			),
			array(
				'name'             => __( 'Show post comment', 'gbox' ),
				'desc'             => __( 'You can show or hide post comment. Post comment only show when comment open.', 'gbox' ),
				'id'               => 'post_comment',
				'type'	           => 'switch',
		        'default'          => '',
			    			
			),
			array(
				'name'             => __( 'Show post tag', 'gbox' ),
				'desc'             => __( 'You can show or hide post tag.', 'gbox' ),
				'id'               => 'post_tag',
				'type'	           => 'switch',
		        'default'          => '',
			    			
			),
		),
	) );


}
endif;
