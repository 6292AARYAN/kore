 function openNav() {
     document.getElementById("mySidenav").style.left = "0";
     $("#bodyOverlay").fadeIn(800);
 }

 function closeNav() {
     document.getElementById("mySidenav").style.left = "-250px";
     $("#bodyOverlay").fadeOut(800);
 }

 $(function() {
     $(window).scroll(function() {
         if ($(this).scrollTop() > 100) {
             $('#back-top').fadeIn();
         } else {
             $('#back-top').fadeOut();
         }
     });
     $('#back-top a').click(function() {
         $('body,html').animate({
             scrollTop: 0
         }, 800);
         return false;
     });


 });

 $(window).scroll(function() {
     if ($(this).scrollTop() > 0) {
         $('header').addClass('header_fixer');

     } else {
         $('header').removeClass('header_fixer');

     }
 });

(function($){
	$('.dropdown-menu a.dropdown-toggle').on('click', function(e) {
	  if (!$(this).next().hasClass('show')) {
		$(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
	  }
	  var $subMenu = $(this).next(".dropdown-menu");
	  $subMenu.toggleClass('show');

	  $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
		$('.dropdown-submenu .show').removeClass("show");
	  });

	  return false;
	});
})(jQuery)
 $(document).ready(function() {
     var owl = $('.loop1');
     owl.owlCarousel({
         stagePadding: 0,
         margin: 30,
         nav: true,
         loop: true,
         autoplay: true,
         autoplayHoverPause: true,
         navText: ["<span class='icon-angle-right sbtn prev'></span>", "<span class='icon-angle-left sbtn next'></span>"],
         responsive: {
             0: {
                 items: 1
             },
             480: {
                 items: 1
             },

             600: {
                 items: 1
             },
             768: {
                 items: 1
             },
             980: {
                 items: 1
             },
             1152: {
                 items: 1
             },
             1240: {
                 items: 1
             }
         }
     })
 });


 $(document).ready(function() {
     var owl = $('.loop2');
     owl.owlCarousel({
         stagePadding: 0,
         margin: 30,
         nav: false,
         loop: true,
         dots: false,
         autoplay: true,
         autoplayHoverPause: true,
         navText: ["<span class='icon-angle-right sbtn prev'></span>", "<span class='icon-angle-left sbtn next'></span>"],
         responsive: {
             0: {
                 items: 1
             },
             480: {
                 items: 2
             },

             600: {
                 items: 2
             },
             768: {
                 items: 3
             },
             980: {
                 items: 4
             },
             1152: {
                 items: 4
             },
             1240: {
                 items: 4
             }
         }
     })
 });


 var modal = document.getElementById("myModal");
 var btn = document.getElementById("myPopBtn");
 var span = document.getElementsByClassName("close")[0];
 btn.onclick = function() {
     modal.style.display = "block";
 }
 span.onclick = function() {
     modal.style.display = "none";
 }
 window.onclick = function(event) {
     if (event.target == modal) {
         modal.style.display = "none";
     }
 }

 var vid = document.getElementById("videoPouse");
 $('#md-close').click(function() {
     vid.pause();
 });