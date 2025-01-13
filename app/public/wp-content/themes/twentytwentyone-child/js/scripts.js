document.addEventListener('DOMContentLoaded', function() {
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var btn = document.getElementsByClassName('contactlink');

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on the button, open the modal
    Array.from(btn).forEach((el) => {
        el.onclick = function() {
            modal.style.display = "block";
        }
    });

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
} )



document.addEventListener('scroll', () => {
    const blocks = document.querySelectorAll('.block');

    blocks.forEach((block, index) => {
        const rect = block.getBoundingClientRect();

        // Si le bloc est visible dans la fenêtre
        if (rect.top < window.innerHeight && rect.bottom > 0) {
            const scrollPosition = window.scrollY || document.documentElement.scrollTop;

            // Multiplier la vitesse en fonction de l'index (effet inversé)
            const speedMultiplier = (blocks.length - index) * 0.1; // Le dernier bloc est le plus lent
            const offset = (scrollPosition - block.offsetTop) * speedMultiplier;

            // Appliquer une translation pour effet vers le bas/haut
            block.style.transform = `translateY(${offset}px)`;
        }
    });
});

// Observer les blocs pour l'animation d'apparition
const observer = new IntersectionObserver(
    (entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    },
    { threshold: 0.5 } // Visible à 50% avant d'apparaître
);

document.querySelectorAll('.block').forEach((block) => observer.observe(block));







document.addEventListener('DOMContentLoaded', function () {
    const gearsLeft = document.querySelectorAll('.corner-nut.top-left, .corner-nut.bottom-left');
    const gearsRight = document.querySelectorAll('.corner-nut.top-right, .corner-nut.bottom-right'); //
    let lastScrollTop = 0; // Position précédente du scroll

    // Fonction pour détecter la direction du défilement
    function handleScroll() {
        console.log('Scroll détecté');
        const currentScrollTop = window.scrollY || document.documentElement.scrollTop;
        const isScrollingDown = currentScrollTop > lastScrollTop;

        // Gestion des roues à gauche
        gearsLeft.forEach(gear => {
            gear.classList.remove('rotate-left', 'rotate-right');
            if (isScrollingDown) {
                gear.classList.add('rotate-right');
            } else {
                gear.classList.add('rotate-left');
            }
        });
        // Gestion des roues à droite
        gearsRight.forEach(gear => {
            gear.classList.remove('rotate-left', 'rotate-right');
            if (isScrollingDown) {
                gear.classList.add('rotate-left');
            } else {
                gear.classList.add('rotate-right');
            }
        });

        setTimeout(() => {
            gearsLeft.forEach(gear => gear.classList.remove('rotate-left', 'rotate-right'));
            gearsRight.forEach(gear => gear.classList.remove('rotate-left', 'rotate-right'));
        }, 1000);

        lastScrollTop = currentScrollTop <= 0 ? 0 : currentScrollTop; // Empêche les valeurs négatives
    }

    // Ajouter un écouteur pour le défilement
    window.addEventListener('scroll', handleScroll);
});






jQuery(document).ready(function($) {
    // Fonction pour charger les images avec filtrage
    function loadImages(page = 1) {
        let category = $('#category-filter').val();
        let projet = $('#projet-filter').val();
        let dateOrder = $('#date-order').val() || 'DESC'; // Valeur par défaut pour le tri
        
        // Requête AJAX
        $.ajax({
            url: child_style_js.ajax_url,  // URL pour l'admin-ajax.php
            type: 'POST',
            data: {
                action: 'filter_images',
                category: category,
                projet: projet,
                date_order: dateOrder,
                page: page,
            },
            success: function(response) {
                if (response.success) {
                    // Vider la grille avant d'ajouter de nouvelles images si on est sur la page 1
                    if (page === 1) $('.image-grid').empty();
                    
                    // Ajouter les images retournées par la requête
                    $('.image-grid').append(response.data.content);
                    
                    // Si toutes les images ont été chargées, masquer le bouton "Charger plus"
                    if (response.data.images_loaded >= response.data.total_images) {
                        $('#load-more').hide();
                    } else {
                        // Mettre à jour la page pour le prochain chargement
                        $('#load-more').data('page', page + 1);
                        $('#load-more').show();
                    }
                } else {
                    $('#load-more').hide();
                }
            },
            error: function(error) {
                console.log('Erreur AJAX:', error);  // Afficher l'erreur dans la console
            }
        });
    }

    // Lors de la modification des filtres, recharger les images depuis la première page
    $('#category-filter, #projet-filter, #date-order').on('change', function() {
        loadImages(1);
    });

    // Lors du clic sur "Charger plus", charger la page suivante
    $('#load-more').on('click', function() {
        let page = $(this).data('page') || 1;  // Récupérer la page actuelle
        loadImages(page);
    });
        // Gérer le bouton de réinitialisation
    $('#reset-filters').on('click', function () {
        $('#category-filter').val('');
        $('#projet-filter').val('');
        $('#date-order').val('');
        loadImages(1); // Recharge les images avec les filtres réinitialisés
    });
});


//Animation et classes du menu sous media query
document.addEventListener('DOMContentLoaded', function () {
    const menuToggle = document.querySelector('#primary-mobile-menu');
    const menu = document.querySelector('#site-navigation');
    const logo = document.querySelector('.site-branding');

    if (menuToggle && menu && logo) {
        menuToggle.addEventListener('click', function () {
            // Basculer la classe 'menu-open' sur le menu
            const isOpen = menu.classList.toggle('menu-open');

            // Basculer la classe 'logo-menu-openanim' sur le logo
            if (isOpen) {
                logo.classList.add('logo-menu-openanim');
            } else {
                logo.classList.remove('logo-menu-openanim');
            }
        });
    }
});