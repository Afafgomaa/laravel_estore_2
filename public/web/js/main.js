$(document).ready(function() {
    // choose the shipping country
    $(".city").on("click", function() {
        var flag = $(this).find(".flag img").attr("src");
        var country = $(this).find(".country-name").text();
        var countryFlag = $(".country-flag img");
        var shippingCountry = $(".shipping-country");

        countryFlag.attr("src", flag);
        shippingCountry.text(country);
    });

    // show the countries
    function clickShow(clicker, showElement) {
        $(clicker).on("click", function() {
            $(showElement).toggle();
        });
    }

    clickShow(".shipp", ".choose-country,.fixedPopUp");

    // show on hover
    function hoverShow(hover, showedElement) {
        $(hover).hover(
            function() {
                $(showedElement).show();
                $(".fixedPopUp").show();
                $(".sup-nav-pop").hide()
            },
            function() {
                $(showedElement).hide();
                $(".fixedPopUp").hide()
            }
        );

        $(showedElement).mouseenter(function() {
            $(showedElement).show();
        });
        $(showedElement).mouseleave(function() {
            $(showedElement).hide();
        });
    }

    hoverShow(".allCats", ".pop-body");


    // copy text

    // function copyText(origin, copy) {
    //     var theText = $(origin).text();
    //     $(copy).text(theText);
    // }

    $(".part-one-content ul li a").mouseenter(function() {
        var theText = $(this).text();
        $(".cat-name").text(theText);
    });

    $(".catsLinks li:not(:last-child) a,.sup-nav-pop").mouseenter(function() {
        // $(".sup-nav-pop,.fixedPopUp").show()
        var elemId = $(this).data('category');
        $('#categoryDeatiles'+elemId,'fixedPopUp').show()
    })
    $(".sup-nav-pop").mouseleave(function() {
        var elemId = $(this).data('category');
        $('#categoryDeatiles'+elemId ,'fixedPopUp').hide()
        })
        // var catsLinks= $(".catsLinks a").
        // hoverShow(".catsLinks li:not(:last-child) a,.sup-nav-pop", ".sup-nav-pop");

});