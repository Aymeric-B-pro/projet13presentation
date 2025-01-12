<?php
global $acf_ui_options_page, $acf_parent_page_options;

$acf_duplicate_options_page = acf_get_ui_options_page_from_request_args( 'acfduplicate' );

if ( acf_is_ui_options_page( $acf_duplicate_options_page ) ) {
	// Reset vars that likely have to be changed.
	$acf_duplicate_options_page['key']        = uniqid( 'ui_options_page_' );
	$acf_duplicate_options_page['title']      = '';
	$acf_duplicate_options_page['page_title'] = '';
	$acf_duplicate_options_page['menu_title'] = '';
	$acf_duplicate_options_page['menu_slug']  = '';

	// Rest of the vars can be reused.
	$acf_ui_options_page = $acf_duplicate_options_page;
}

acf_render_field_wrap(
	array(
		'label'       => __( 'Page Title', 'secure-custom-fields' ),
		/* translators: example options page name */
		'placeholder' => __( 'Site Settings', 'secure-custom-fields' ),
		'type'        => 'text',
		'name'        => 'page_title',
		'key'         => 'page_title',
		'class'       => 'acf_options_page_title acf_slugify_to_key',
		'prefix'      => 'acf_ui_options_page',
		'value'       => $acf_ui_options_page['page_title'],
		'required'    => true,
	),
	'div',
	'field'
);

acf_render_field_wrap(
	array(
		'label'    => __( 'Menu Slug', 'secure-custom-fields' ),
		'type'     => 'text',
		'name'     => 'menu_slug',
		'key'      => 'menu_slug',
		'class'    => 'acf-options-page-menu_slug acf_slugified_key',
		'prefix'   => 'acf_ui_options_page',
		'value'    => $acf_ui_options_page['menu_slug'],
		'required' => true,
	),
	'div',
	'field'
);

acf_render_field_wrap(
	array(
		'label'    => __( 'Parent Page', 'secure-custom-fields' ),
		'type'     => 'select',
		'name'     => 'parent_slug',
		'key'      => 'parent_slug',
		'class'    => 'acf-options-page-parent_slug',
		'prefix'   => 'acf_ui_options_page',
		'value'    => $acf_ui_options_page['parent_slug'],
		'choices'  => $acf_parent_page_options,
		'required' => true,
	),
	'div',
	'field'
);

do_action( 'acf/post_type/basic_settings', $acf_ui_options_page );

acf_render_field_wrap( array( 'type' => 'seperator' ) );

acf_render_field_wrap(
	array(
		'label'        => __( 'Advanced Configuration', 'secure-custom-fields' ),
		'instructions' => __( 'I know what I\'m doing, show me all the options.', 'secure-custom-fields' ),
		'type'         => 'true_false',
		'name'         => 'advanced_configuration',
		'key'          => 'advanced_configuration',
		'prefix'       => 'acf_ui_options_page',
		'value'        => $acf_ui_options_page['advanced_configuration'],
		'ui'           => 1,
		'class'        => 'acf-advanced-settings-toggle',
	)
);

?>
	<div class="acf-hidden">
		<input type="hidden" name="acf_ui_options_page[key]" value="<?php echo esc_attr( $acf_ui_options_page['key'] ); ?>" />
	</div>
<?php