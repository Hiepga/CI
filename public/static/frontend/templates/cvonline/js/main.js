jQuery(document).ready(function() {

	var height = $(window).height();
 //    alert(height);
	$('#main section .page-content').css('height', height-5);
	$('#main #profile .profile-style .img-profile').css('min-height', height);

	$('.wrapper').nrTab({
        tab:'.menu-header li',
        view:'#main>section',
        action:'click',
        href:'ref'
    });


    /* niceScroll layers*/
    $("#main section .page-content").niceScroll({
        touchbehavior: false,
        scrollspeed: 60,
        mousescrollstep: 38,
        cursorwidth: 8,
        cursorborder: 0,
        autohidemode: false,
        zindex: 99999999,
        horizrailenabled: false,
        cursorborderradius: 20,
        cursorcolor: "#333"
    });

    $(".fancybox-img").fancybox({
        padding     : 1,
        width       : '100%',
        height      : '100%',
        maxWidth    : '100%',
        maxHeight   : '100%',
        openEffect  : 'elastic',
        closeEffect : 'elastic',
        closeBtn    : true,
        loop        : true,
    });


    $('.menu-header li a').click(function() {

        var ahref = $(this).attr('ref').split("#");
        var id_name = ahref[1];
        
        if (id_name == "resume") {
            $('.skillbar').each(function() {
                $(this).find('.skillbar-bar').width(0);
            });

            $('.skillbar').each(function() {
                $(this).find('.skillbar-bar').animate({
                    width: $(this).attr('data-percent')
                }, 2000);
            });
        }

    });

    /* ------------------- opens the menu responsive ------------------------ */
    $("#btn_open_menu").click(function(e) {
        e.preventDefault();
        $("#header").toggleClass("active");
        if ($("#header").hasClass('active')) {
            $("#header #menu_closed").css('display', 'block');
        } else {
            $("#header #menu_closed").css('display', 'none');
        }
        return false;
    });

    //closed menu in responsive
    $("#menu_closed").click(function(e) {
        e.preventDefault();
        $("#header").removeClass('active')
        $("#header #menu_closed").css('display', 'none');
        return false;
    });
});