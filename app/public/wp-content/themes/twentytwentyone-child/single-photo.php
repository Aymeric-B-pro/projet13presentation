<?php
/**
 * Template Name : single-photo
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */
?>

<?php
get_header();

// Commence la boucle WordPress pour récupérer les données du CPT "image"
if ( have_posts() ) : while ( have_posts() ) : the_post();
?>
    <div class="single-image-container">
        <div class="bloc-top" >
            <div class="left-info-block">
                <h2><?php the_title(); ?></h2>
                <p>REFERENCE : <?php the_field('projet');?></p>
                <p>LANGAGE PRINCIPALE : <?php the_terms($post->ID, 'langage');?></p>
                <p>PROJET : <?php the_terms($post->ID, 'projet');?></p>
                <p>ANNÉE : <?php echo get_the_date();?></p>
            </div>
            <div class="right-image-block ">
                <a href="<?php echo esc_url(wp_get_attachment_url(get_post_thumbnail_id())); ?>"
                data-image-url="<?php echo esc_url(wp_get_attachment_url(get_post_thumbnail_id())); ?>"
                data-image-title="<?php echo esc_attr(get_the_title()); ?>"
                data-image-category="<?php echo esc_attr(wp_get_post_terms($post->ID, 'langage')[0]->name ?? ''); ?>">
                <?php the_post_thumbnail('large'); ?></a>
            </div>
        </div>
        <div class=middle-box>
            <div class="bottom-interactions-container">
                <div class="contact-left">
                    <p>Ce type de fonctionnalité vous intéresse ?</p>
                </div>
                <div class="contact-link">
                <a href="#myModal" class="contactlink" data-ref-image="<?php the_field('projet'); ?>">CONTACT</a>
                </div>
            </div>
            <?php
            // Obtenir le précédent et le suivant
            $prev_post = get_adjacent_post(false, '', true); // True pour précédent
            $next_post = get_adjacent_post(false, '', false); // False pour suivant
            // Si pas de précédent, retourner à la dernière image
            if (empty($prev_post)) {
                $prev_post = get_posts(array(
                    'post_type' => 'image',
                    'posts_per_page' => 1,
                    'order' => 'DESC'
                ))[0];
            }
            // Si pas de suivant, retourner à la première image
            if (empty($next_post)) {
                $next_post = get_posts(array(
                    'post_type' => 'image',
                    'posts_per_page' => 1,
                    'order' => 'ASC'
                ))[0];
            }
            ?>
            <div class="navigation-links">
                <a href="<?php echo get_permalink($prev_post); ?>" class="nav-link prev-link">
                    &larr;
                    <span class="nav-preview prev-preview" style="background-image: url('<?php echo get_the_post_thumbnail_url($prev_post, 'thumbnail'); ?>');"></span>
                </a>
                <a href="<?php echo get_permalink($next_post); ?>" class="nav-link next-link">
                    &rarr;
                    <span class="nav-preview next-preview" style="background-image: url('<?php echo get_the_post_thumbnail_url($next_post, 'thumbnail'); ?>');"></span>
                </a>
            </div>
        </div>
        <div class="bottom-box">
            <h3>Vous aimerez aussi</h3>
            <div class="image-grid">
                <?php
                $terms = wp_get_post_terms(get_the_ID(), 'langage');
                if (!empty($terms) && !is_wp_error($terms)) {
                    $term = $terms[0];
                    $args = array(
                        'post_type'      => 'image',
                        'posts_per_page' => 2,
                        'post__not_in'   => array(get_the_ID()), // Exclure la image courante
                        'tax_query'      => array(
                            array(
                                'taxonomy' => 'langage',
                                'field'    => 'term_id',
                                'terms'    => $term->term_id,
                            ),
                        ),
                    );
                    $related_images = new WP_Query($args);
                    if ($related_images->have_posts()) :
                        while ($related_images->have_posts()) : $related_images->the_post();
                            $photo_id = get_the_ID();
                            get_template_part('template_parts/photo_block', null, array('image_id' => $image_id));
                        endwhile;
                        wp_reset_postdata();
                    endif;
                    }
                    ?>
            </div>
        </div>
    <?php
endwhile;
endif;

get_footer();
