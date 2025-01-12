<?php
/**
 * Template Name: template-acceuil
 * Description: Un modèle personnalisé pour la page d'accueil.
 */
get_header();
?>
<main class="home-page">
    <section class="hero" style="background-image: url('<?php echo get_random_photo_background(); ?>');">
        <div class="hero-content">
            <h1>Développeur Web Wordpress</h1>
            <img src="http://aymericbdev.local/wp-content/themes/twentytwentyone-child/assets-child\gear.png" class="gear">
        </div>
    </section>
    <section class="blocks-container">
        <div id="block1" class="block">
            <div class="content">
                <h2>Formation certifiante</h2>
                <p> Fasciné par les technologies numériques et informatique, j'ai réalisé une formation de développeur web wordpress certifiante auprès de l'organisme Openclassrooms. C'est un plaisir de coder et créer dans ces technologies au développement constant.</p>
            </div>
        </div>
        <div id="block2" class="block">
            <div class="content">
                <h2>Projet d'animations</h2>
                <p>Le projet 9, "Améliorez le site d'un studio d'animation avec JavaScript et des animations CSS", sert à découvrir différentes animations possibles avec les outils cités. L'opportunité de découvrir une partie des choses que l'on peut produire en front end.</p>
            </div>
        </div>
        <div id="block3" class="block">
            <div class="content">
                <h2>Projet de site de photographe</h2>
                <p>Le projet 12, "Créez un site WordPress complexe pour une photographe freelance". Un projet complexe où on apprend à créer un site entier ainsi que la méthode Ajax.</p>
            </div>
        </div>
    </section>
</main>

<?php get_footer(); ?>
