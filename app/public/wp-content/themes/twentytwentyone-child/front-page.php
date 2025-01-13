<?php
/**
 * Template Name: template-acceuil
 * Description: Un modèle personnalisé pour la page d'accueil.
 */
get_header();
?>
<main class="home-page">
    <section class="hero">
        <div class="hero-content">
            <h1>Développeur Web Wordpress</h1>
            <div class="menu-gear"> 
            </div>
        </div>
    </section>
    <section class="blocks-container">
        <div id="block1" class="block">
            <div class="content">
                <h2>Mon parcours</h2>
                <p>Fasciné par les technologies numérique et informatique, j'ai appris en autonomie avant de réaliser une formation de développeur web wordpress certifiante auprès de l'organisme Openclassrooms. C'est un plaisir de coder et créer dans ces technologies au développement constant.</p>
            </div>
        </div>
        <div id="block2" class="block"">
        <a href="https://github.com/Aymeric-B-pro/animationKoukaki.git" class="block-link" target="_blank">
            <div class="content">
                <h2>Projet d'animations</h2>
                <p>Le projet "Améliorez le site d'un studio d'animation avec JavaScript et des animations CSS", sert à découvrir différentes animations possibles avec les outils cités. L'opportunité de découvrir une partie des choses que l'on peut produire en front-end.<BR>Cliquez-moi pour le lien GITHUB</p>
            </div>
        </div>
        <div id="block3" class="block"">
        <a href="https://github.com/Aymeric-B-pro/Projet11motaphotolocal.git" class="block-link" target="_blank">
            <div class="content">
                <h2>Projet de site de photographe</h2>
                <p>Le projet "Créez un site WordPress complexe pour une photographe freelance". Un projet complexe où on apprend à créer un site entier avec entre autre, une personnalisation de l'interface de wordpress, et Ajax.<BR>Cliquez-moi pour le lien GITHUB</p>
            </div>
        </div>
    </section>
</main>

<?php get_footer(); ?>
