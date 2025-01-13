<?php

add_action('wp_enqueue_scripts', 'theme_enqueue_styles');
function theme_enqueue_styles() {
    
    wp_enqueue_style('parent-style', get_template_directory_uri() . '/style.css');
    wp_enqueue_script(
        'primary-navigation',
        get_template_directory_uri() . '/assets/js/primary-navigation.js',
        array( 'jquery' ), 
        wp_get_theme()->get( 'Version' ),
        true
    );
    wp_enqueue_style('child-style', get_stylesheet_directory_uri() . '/style.css', array('parent-style'), filemtime(get_stylesheet_directory() . '/style.css'));

    wp_enqueue_script('child-theme-scripts', get_stylesheet_directory_uri() . '/js/scripts.js', array('jquery'), '1.0.0', true);
    wp_localize_script('child-theme-scripts', 'child_style_js', array(
        'ajax_url' => admin_url('admin-ajax.php')
    ));
}

function enqueue_font_awesome() {
    wp_enqueue_style('font-awesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css');
}
add_action('wp_enqueue_scripts', 'enqueue_font_awesome');


function register_my_menus() {
    register_nav_menus( array(
        'main-menu'   => __( 'Menu en tete', 'text-domain' ),
        'footer-menu' => __( 'Menu pied de page', 'text-domain' )
    ));
}
add_action( 'after_setup_theme', 'register_my_menus' );

function projetdev_request_images() {
    $args = array(
        'post_type'      => 'image',
        'posts_per_page' => 8 
    );
    $query = new WP_Query($args);
    if($query->have_posts()) {
        $response = $query->posts;
    } else {
        $response = false;
    }
    wp_send_json($response);
    wp_die();
}

function load_more_images() {
    $paged = isset($_POST['page']) ? intval($_POST['page']) : 1;
    $total_images_query = new WP_Query(array(
        'post_type' => 'image',
        'posts_per_page' => -1,
    ));
    $total_images = $total_images_query->found_posts;
    $args = array(
        'post_type'      => 'image',
        'posts_per_page' => 8,
        'paged'          => $paged,
        'orderby'        => 'date',
        'order'          => 'DESC', 
    );
    $image_query = new WP_Query($args);
    if ($image_query->have_posts()) {
        ob_start();
        while ($image_query->have_posts()) {
            $image_query->the_post();
            get_template_part('template_parts/photo_block', null, array('image_id' => get_the_ID()));
        }
        $content = ob_get_clean();
        wp_send_json_success(array(
            'content' => $content,
            'total_images' => $total_images,
            'images_loaded' => $paged * 8    // Calculer le nombre de images chargées
        ));
    } else {
        wp_send_json_error('Aucune image supplémentaire.');
    }
    wp_reset_postdata();
    wp_die();
}

function filter_images() {
    // Récupérer les paramètres des filtres transmis via AJAX
    $category = isset($_POST['category']) ? intval($_POST['category']) : '';
    $projet = isset($_POST['projet']) ? intval($_POST['projet']) : '';
    $date_order = isset($_POST['date_order']) ? sanitize_text_field($_POST['date_order']) : 'DESC';
    $page = isset($_POST['page']) ? intval($_POST['page']) : 1;
    // Arguments de la requête principale
    $args = array(
        'post_type' => 'image',
        'posts_per_page' => 8,
        'paged' => $page,
        'orderby' => 'date',
        'order' => $date_order,
    );
    // Ajout des filtres de catégorie et de projet si sélectionnés
    if ($category) {
        $args['tax_query'][] = array(
            'taxonomy' => 'langage',
            'field'    => 'term_id',
            'terms'    => $category,
        );
    }
    if ($projet) {
        $args['tax_query'][] = array(
            'taxonomy' => 'projet',
            'field'    => 'term_id',
            'terms'    => $projet,
        );
    }
    // Exécuter la requête WP_Query avec les arguments filtrés
    $image_query = new WP_Query($args);
    // Compter le nombre total de images pour gérer le bouton "Load More"
    $total_images_query = new WP_Query(array(
        'post_type' => 'image',
        'posts_per_page' => -1,
        'tax_query' => $args['tax_query'] ?? [],
    ));
    $total_images = $total_images_query->found_posts;

    // Récupération des résultats pour les images
    if ($image_query->have_posts()) {
        ob_start();
        while ($image_query->have_posts()) {
            $image_query->the_post();
            get_template_part('template_parts/photo_block', null, array('image_id' => get_the_ID()));
        }
        $content = ob_get_clean();
        wp_send_json_success(array(
            'content' => $content,
            'total_images' => $total_images,
            'images_loaded' => $page * 8
        ));
    } else {
        wp_send_json_error('Aucune image trouvée.');
    }
    wp_reset_postdata();
    wp_die();
}
add_action('wp_ajax_filter_images', 'filter_images');
?>