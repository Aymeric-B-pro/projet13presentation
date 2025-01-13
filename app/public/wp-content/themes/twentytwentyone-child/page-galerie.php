<?php
/**
 * Template Name: Galerie
 * Description: Page des projets.
 */
get_header();
?>
<main class="home-page">
    <section class="hero">
        <div class="hero-content">
            <h1>Les Projets</h1>
        </div>
    </section>
    <section class="image-catalogue">
        <div class="filter-container">
            <div class="filter-group">
                <select id="category-filter">
                    <option value="">Langages</option>
                    <?php
                    $langages = get_terms(array(
                        'taxonomy' => 'langage',
                        'hide_empty' => true,
                    ));

                    foreach ($langages as $category) {
                        echo '<option value="' . esc_attr($category->term_id) . '">' . esc_html($category->name) . '</option>';
                    }
                    ?>
                </select>
                <select id="projet-filter">
                    <option value="">Projets</option>
                    <?php
                    $projets = get_terms(array(
                        'taxonomy' => 'projet',
                        'hide_empty' => true,
                    ));

                    foreach ($projets as $projet) {
                        echo '<option value="' . esc_attr($projet->term_id) . '">' . esc_html($projet->name) . '</option>';
                    }
                    ?>
                </select>
            </div>
            <div class="filter-group">
                <select id="date-order">
                    <option value="">Trier par</option>
                    <option value="DESC">à partir des plus récentes</option>
                    <option value="ASC">à partir des plus anciennes</option>
                </select>
                <button class="reset-filters">Réinitialiser les filtres</button>
            </div>
        </div>
        <div class="image-grid">
            <?php
            $args = array(
                'post_type'      => 'image',
                'posts_per_page' => 8,
                'orderby'        => 'date',
                'order'          => 'DESC'
            );
            $image_query = new WP_Query($args);
            if ($image_query->have_posts()) :
                while ($image_query->have_posts()) : $image_query->the_post();
                    get_template_part('template_parts/photo_block', null, array('image_id' => get_the_ID()));
                endwhile;
            else :
                echo '<p>Aucune image trouvée.</p>';
            endif;
            wp_reset_postdata();
            ?>
        </div>
        <div class="load-more-container">
            <button id="load-more" data-page="1" data-url="<?php echo admin_url('admin-ajax.php'); ?>">Charger plus</button>
        </div>
    </section>
</main>

<?php get_footer(); ?>
