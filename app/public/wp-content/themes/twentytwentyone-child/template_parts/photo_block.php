<?php
$image_id = isset($args['image_id']) ? $args['image_id'] : 0;

if ($image_id) {
    $thumbnail_url = get_the_post_thumbnail_url($image_id, 'large');
    $image_title = get_the_title($image_id);
    $image_permalink = get_permalink($image_id);
    $terms = wp_get_post_terms($image_id, 'langage');
    $category_name = !empty($terms) ? esc_html($terms[0]->name) : '';

    echo '<div class="related-image-block">';
    echo '<a href="' . esc_url($image_permalink) . '">';

    if ($thumbnail_url) {
        echo '<div class="image-container">';
        echo '<img src="' . esc_url($thumbnail_url) . '" alt="' . esc_attr($image_title) . '">';

        echo '<span class="overlay-icon view-icon"><i class="fa fa-eye"></i></span>';
        echo 'data-image-url="' . esc_url($thumbnail_url) . '" ';
        echo 'data-image-title="' . esc_attr($image_title) . '" ';
        echo 'data-image-category="' . esc_attr($category_name) . '">';
        echo '&#x26F6;</span>';

        echo '<div class="image-info">';
        echo '<span class="image-ref">' . esc_html(get_field('projet', $image_id)) . '</span>';
        echo '<span class="image-category">' . $category_name . '</span>';
        echo '</div>';

        echo '</div>'; // fin de .image-container
    }

    echo '</a>';
    echo '</div>';
} else {
    echo '<p>No Image ID found.</p>';
}
?>