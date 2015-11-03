
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

        }
    });

    $(window).on('resize', function(){


        if (allButFirstChild.is( ":hidden" ) && $(window).width() > 768) {
           allButFirstChild.show();
        }
    });

    /* from http://stackoverflow.com/questions/8584098/how-to-change-an-element-type-using-jquery */
    $.fn.changeElementType = function(newType) {
        var newElements = [];

        $(this).each(function() {
            var attrs = {};

            $.each(this.attributes, function(idx, attr) {
                attrs[attr.nodeName] = attr.nodeValue;
            });

            var newElement = $("<" + newType + "/>", attrs).append($(this).contents());

            $(this).replaceWith(newElement);

            newElements.push(newElement);
        });

        return $(newElements);
    };

    optionElements = $("option");
    selectElements = $("select");

    optionElements.wrap('<li role="presentation"></li>');
    selectElements.wrap('<div class="dropdown"></div>');
    selectElements.before('<button class="btn btn-default dropdown-toggle"  type="button" data-toggle="dropdown"></button>');

    selectElements.addClass("dropdown-menu").attr("role", "menu");
    optionElements.attr("role", "menuitem").attr("href", "#").removeAttr("selected");

    selectElements.changeElementType("ul");
    optionElements.changeElementType("a");

    /*
    var errors = $('.statusError');
    if (errors.length == 0)
    {
        var status = $('#status');
        if (status) {
            $('#status').hide();
        }

    }*/




});


