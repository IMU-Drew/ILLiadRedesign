
$(document).ready(function(){
    $("label").wrap('<div class="form-group"></div>"');
    $(".form-group input").addClass('form-control');
    $("textarea").addClass('form-control');
    $("input[type='submit']").addClass('btn btn-default');
    $("input[type='reset']").addClass('btn btn-default');

    var allButFirstChild = $( ".navbar li:not(:first-child)" );
    $('#menuButton').click(function(){
        if (allButFirstChild.is( ":hidden" )) {
            allButFirstChild.slideDown(300);

        } else {
            allButFirstChild.slideUp(300);

        }});

    $(window).on('resize', function(){


        if (allButFirstChild.is( ":hidden" ) && $(window).width() > 768) {
            // if the navigation menu and nav button are both hidden,
            // then the responsive nav is closed and the nav menu is still hidden.
            // just display the nav menu which will auto-hide at <560px width and remove class.
           allButFirstChild.show();
        }
    });


});


