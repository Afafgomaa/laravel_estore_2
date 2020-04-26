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
    clickShow(".registration", ".reg,.fixedPopUp");
    // show on hover

    function hoverShow(hover, showedElement) {
        $(hover).hover(
            function() {
                $(showedElement).show();
                $(".fixedPopUp").show();
            },
            function() {
                $(showedElement).hide();
                $(".fixedPopUp").hide();
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

    $(".part-one-content ul li a").mouseenter(function() {
        var theText = $(this).text();
        $(".cat-name").text(theText);
    });

    $(".catsLinks>ul>li:not(:last-child) a,.allCats").mouseenter(function() {
        $(".fixedPopUp").show();
    });
    $(".catsLinks>ul>li:not(:last-child) a,.allCats").mouseleave(function() {
        $(".fixedPopUp").hide();
    });
});