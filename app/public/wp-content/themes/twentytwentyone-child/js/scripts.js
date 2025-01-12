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


// Sélectionner tous les blocs
const blocks = document.querySelectorAll('.block');

// Fonction d'activation lorsque l'élément est visible
const handleIntersection = (entries, observer) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            // Ajoute la classe 'visible' lorsque l'élément est visible
            entry.target.classList.add('visible');
            // On arrête l'observation de cet élément une fois qu'il est visible
            observer.unobserve(entry.target);
        }
    });
};

// Créer une instance d'IntersectionObserver
const observer = new IntersectionObserver(handleIntersection, {
    threshold: 0.5, // Observer lorsque 50% du bloc est visible
    rootMargin: '0px 0px -50px 0px' // Déclenche l'observation un peu avant l'élément
});

// Observer chaque bloc
blocks.forEach(block => {
    observer.observe(block);
});



document.addEventListener('DOMContentLoaded', function () {
    const gearsLeft = document.querySelectorAll('.corner-nut.top-left, .corner-nut.bottom-left'); // Roues à gauche
    const gearsRight = document.querySelectorAll('.corner-nut.top-right, .corner-nut.bottom-right'); // Roues à droite
    let lastScrollTop = 0; // Position précédente du scroll

    // Fonction pour détecter la direction du défilement
    function handleScroll() {
        console.log('Scroll détecté');
        const currentScrollTop = window.scrollY || document.documentElement.scrollTop;
        const isScrollingDown = currentScrollTop > lastScrollTop;

        // Gestion des roues à gauche
        gearsLeft.forEach(gear => {
            gear.classList.remove('rotate-left', 'rotate-right'); // Réinitialiser les classes
            if (isScrollingDown) {
                gear.classList.add('rotate-right'); // Vers la droite en descendant
            } else {
                gear.classList.add('rotate-left'); // Vers la gauche en montant
            }
        });

        // Gestion des roues à droite
        gearsRight.forEach(gear => {
            gear.classList.remove('rotate-left', 'rotate-right'); // Réinitialiser les classes
            if (isScrollingDown) {
                gear.classList.add('rotate-left'); // Vers la gauche en descendant
            } else {
                gear.classList.add('rotate-right'); // Vers la droite en montant
            }
        });

        // Retirer les classes après l'animation
        setTimeout(() => {
            gearsLeft.forEach(gear => gear.classList.remove('rotate-left', 'rotate-right'));
            gearsRight.forEach(gear => gear.classList.remove('rotate-left', 'rotate-right'));
        }, 1000); // Durée de l'animation (1s)

        lastScrollTop = currentScrollTop <= 0 ? 0 : currentScrollTop; // Empêche les valeurs négatives
    }

    // Ajouter un écouteur pour le défilement
    window.addEventListener('scroll', handleScroll);
});






jQuery(document).ready(function($) {
    function loadPhotos(page = 1) {
        let category = $('#category-filter').val();
        let format = $('#format-filter').val();
        let dateOrder = $('#date-order').val() || 'DESC'; // Valeur par défaut pour le tri
        $.ajax({
            url: child_style_js.ajax_url,
            type: 'POST',
            data: {
                action: 'filter_photos',
                category: category,
                format: format,
                date_order: dateOrder,
                page: page,
            },
            success: function(response) {
                if (response.success) {
                    if (page === 1) $('.photo-grid').empty();
                    $('.photo-grid').append(response.data.content);
                    if (response.data.photos_loaded >= response.data.total_photos) {
                        $('#load-more').hide();
                    } else {
                        $('#load-more').data('page', page + 1);
                        $('#load-more').show();
                    }
                } else {
                    $('#load-more').hide();
                }
            },
            error: function(error) {
                // Erreur AJAX gérée silencieusement sans log
            }
        });
    }

    $('#category-filter, #format-filter, #date-order').on('change', function() {
        loadPhotos(1);
    });

    $('#load-more').on('click', function() {
        let page = $(this).data('page') || 1;
        loadPhotos(page);
    });
});

//Récupération Ref Photo
jQuery(document).ready(function($) {
    $('.contactlink').on('click', function(event) {
        event.preventDefault(); // Empêche le comportement par défaut de l'ancre
        var refPhoto = $(this).data('ref-photo');
        $('input[name="your-subject"]').val(refPhoto);
        $('#myModal').fadeIn();
    });
    $('.close-button').on('click', function() {
        $('#myModal').fadeOut();
    });
    $(window).on('click', function(event) {
        if ($(event.target).is('#myModal')) {
            $('#myModal').fadeOut();
        }
    });
});

//Animation et classes du menu sous media query
document.addEventListener('DOMContentLoaded', function () {
    const menuToggle = document.querySelector('#primary-mobile-menu');
    const menu = document.querySelector('#site-navigation');
    const logo = document.querySelector('.site-logo');

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