<!-- //header fixed -->

<!-- //header style Two -->
<header>
    <div class="wrapper">
        <div class="inner-wrapper">
            <div class="sub-nav">
                <!--backgoround yellow-->
                <div class="container-fluid">
                    <div class="px-4">
                        <div class="nav-container">
                            <div class="f">
                                <div class="nav-links">
                                    <ul>
                                        <li>
                                            <span class="lang">
                                                english

                                            </span>
                                        </li>
                                        <li class="shipp">
                                            <span class="country-flag">
                                                <img src="{{asset('images/egypt.png' )}}" alt="shipp"
                                                    class="img-fluid icon">
                                            </span>

                                            <span class="shipping-c">الشحن الى </span>
                                            <span class="shipping-country">مصر</span>
                                            <span class="select-arrow">
                                                <img src="images/down-arrow.svg" class="img-fluid">
                                            </span>

                                        </li>
                                        <div class="choose-country arrow p-3 text-right">
                                            <div class="city">
                                                <input type="checkbox" name="country" id="emirates">
                                                <span class="flag px-2"><img src="images/emirates.png"
                                                        class="img-fluid icon" alt="emirates"></span>
                                                <label class="country-name" for="emirates">الامارات العربيه
                                                    المتحدة</label>
                                            </div>
                                            <div class="city">
                                                <input type="checkbox" name="country" id="saudi">
                                                <span class="flag px-2"><img src="images/saudi.png"
                                                        class="img-fluid icon" alt="saudi"></span>
                                                <label class="country-name" for="saudi">المملكه العربيه
                                                    السعوديه</label>
                                            </div>
                                            <div class="city">
                                                <input type="checkbox" name="country" id="egypt">
                                                <span class="flag px-2"><img src="images/egypt.png"
                                                        class="img-fluid icon" alt="egypt"></span>
                                                <label class="country-name" for="egypt">مصر</label>
                                            </div>
                                        </div>
                                    </ul>
                                </div>
                                <div class="nav-links">
                                    <ul>
                                        <li>
                                            <span>
                                                <i class="fas fa-exchange-alt"></i>
                                            </span>
                                            <span>
                                                توصيل سريع
                                            </span>
                                        </li>
                                        <li class="pl-0">
                                            <span>
                                                <i class="fas fa-percentage"></i>
                                            </span>
                                            <span class="ml-0">
                                                اقوى العروض
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="navSPart">
                            <div class="row f-100">
                                <div class="col-1">
                                    <div class="logo">
                                        <a href="#"> <img src="images/noon_logo_black_arabic.svg" class="img-fluid"></a>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-7">
                                    <div class="search-bar f">
                                        <input type="text" placeholder="انت بتدور على اي؟">
                                        <span class="search-icon">
                                            <img src="images/search.svg" class="img-fluid small-icon" alt="search-icon">
                                        </span>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-4">
                                    <div class="shoppingAndreg">
                                        <ul class="f">
                                            <li class="registration">
                                                <a href="#">
                                                    <span>
                                                        تسجيل الدخول او الاشتراك
                                                    </span>
                                                    <span class="select-arrow">
                                                        <img src="images/down-arrow.svg" class="img-fluid" alt="arrow">
                                                    </span>
                                                </a>
                                            </li>
                                            <li class="shopingCart">
                                                <a href="#">
                                                    <Span>
                                                        عربه التسوق
                                                    </Span>
                                                    <span>
                                                        <img src="images/supermarket (1).svg" alt="cart"
                                                            class="img-fluid icon">
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-nav">
                <!--background white-->
                <div class="container-fluid">
                    <div class="px-4">
                        <div class="nav-container">
                            <div class="row ">
                                <div class="col-xl-2 col-3 px-0">
                                    <div class="allCats">
                                        <div class="f">
                                            <span>
                                                كل الفئات
                                            </span>
                                            <span class="select-arrow">
                                                <img src="images/down-arrow.svg" class="img-fluid" alt="arrow">
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-7 col-8">
                                    <div class="catsLinks">
                                        <ul class="f mb-0 ">
                                            @foreach($result['commonContent']["categories"] as $menus)
                                            <li data-category="{{$menus->id}}" class="px-3"><a
                                                    href="">{{$menus->name}}</a>


                                                <div class="sup-nav-pop linksC" id="categoryDeatiles{{$menus->id}}">
                                                    <div class="wrapper">
                                                        <div class="container-fluid">
                                                            <div class="inner-data px-3">
                                                                <div class="row">
                                                                    <div class="col-2">
                                                                        <div class="sup-cats">
                                                                            <p class="head">فئات المنتجات</p>
                                                                            <!-- كل الصب  الكاتجوري-->
                                                                            <ul>
                                                                                @if(count($menus->sub_categories))
                                                                                @foreach($menus->sub_categories as $sub)
                                                                                <li><a href="#">{{$sub->sub_name}}</a>
                                                                                </li>

                                                                                @endforeach
                                                                                @endif
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-4">
                                                                        <div class="head">
                                                                            <span>افضل الماركات</span>
                                                                        </div>
                                                                        <div class="brands-container">
                                                                            <div class="row">
                                                                                <?php 
                                            // all brands كل الفئات
                                            echo getSixBrandBycategoryId($menus->id) ?>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-4">
                                                                        <div class="brand-box-big">
                                                                            <img src="{{asset($menus->path)}}" alt="top"
                                                                                class="img-fluid">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-2">
                                                                        <div class="brand-box-big">
                                                                            <img src="{{asset('').$menus->path}}"
                                                                                alt="top" class="img-fluid">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <div class="fixedPopUp">

                                            </div>

                                            @endforeach
                                            <li><a href="#">عروض</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>









            <!--- كل الفئات -->

            <div class="main-nav-pop">
                <div class="wrapper">
                    <div class="px-2">
                        <div class="row">
                            <div class="col-7">
                                <div class="pop-body">
                                    <div class="row">
                                        <div class="col-12 pl-0">
                                            <div class="pop-body-part-one text-right">
                                                <div class="part-one-header f">
                                                    <span>كل الفئات</span>
                                                    <span class="select-arrow">
                                                        <img src="images/down-arrow.svg" class="img-fluid" alt="arrow">
                                                    </span>
                                                </div>
                                                <div class="part-one-content">
                                                    <ul>
                                                        @foreach($result['commonContent']["categories"] as $menusright)
                                                        <li data-category="{{$menusright->id}}"><a
                                                                href="">{{$menusright->name}}</a>



                                                            <div class="hideElement" id="{{$menusright->id}}">
                                                                <!-- need data details to be her -->
                                                                <div class="col-8">
                                                                    <div class="pop-body-part-two">
                                                                        <div class="pop-header">
                                                                            <a href="#" class="f">
                                                                                <span class="cat-name">
                                                                                    الالكترونيات
                                                                                </span>
                                                                                <span>
                                                                                    <span>
                                                                                        عرض جميع الفئات
                                                                                    </span>
                                                                                    <span class="cat-name">
                                                                                        الالكترونيات
                                                                                    </span>
                                                                                    <span class="select-arrow">
                                                                                        <img src="images/right.svg"
                                                                                            alt="arrow"
                                                                                            class="img-fluid">
                                                                                    </span>
                                                                                </span>
                                                                            </a>
                                                                        </div>
                                                                        <div class="pop-inner">
                                                                            <div class="row">
                                                                                <div class="col-6">
                                                                                    <div
                                                                                        class="inner-content-one text-right">
                                                                                        <ul>
                                                                                            <li>المشهورة اكتر</li>
                                                                                            <li><a
                                                                                                    href="#">تليقزيونات</a>
                                                                                            </li>
                                                                                            <li><a href="#">اجهزة
                                                                                                    الكومبيوتر
                                                                                                    المحموله</a>
                                                                                            </li>
                                                                                            <li><a href="#">كاميرات</a>
                                                                                            </li>
                                                                                            <li><a href="#">اجهزة
                                                                                                    الصوت</a>
                                                                                            </li>
                                                                                            <li><a href="#">مستلزمات
                                                                                                    الكومبيوتر</a></li>
                                                                                            <li><a href="#">العاب
                                                                                                    الفيديو</a></li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-6">
                                                                                    <div
                                                                                        class="inner-content-two text-right">
                                                                                        <ul>
                                                                                            <li>افضل الماركات</li>
                                                                                            <li><a href="#">سامسونج</a>
                                                                                            </li>
                                                                                            <li><a href="#">ال جى</a>
                                                                                            </li>
                                                                                            <li><a href="#">جاك</a></li>
                                                                                            <li><a href="#">لينوفو</a>
                                                                                            </li>
                                                                                            <li><a href="#">اتش بى</a>
                                                                                            </li>
                                                                                            <li><a href="#">ديل</a></li>
                                                                                            <li><a href="#">ابل</a></li>
                                                                                            <li><a href="#">توشيبا</a>
                                                                                            </li>
                                                                                            <li><a href="#">سونى</a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- afaf{{$menusright->name}} -->

                                                            </div>



                                                        </li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-8">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</header>


<script type="text/javascript">
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
$(".part-one-content ul li a").mouseenter(function() {
    var theText = $(this).text();
    $(".cat-name").text(theText);
});
$(".catsLinks li:not(:last-child) a,.sup-nav-pop").mouseenter(function() {

    //     // $(".sup-nav-pop,.fixedPopUp").show()
    var elemId = $(this).data('category');
    $('#categoryDeatiles' + elemId).show()
        (".fixedPopUp,.sup-nav-pop").show()
})
$(".sup-nav-pop").mouseleave(function() {
    var elemId = $(this).data('category');
    $('#categoryDeatiles' + elemId).hide()
        (".fixedPopUp").hide()
})
$('.linksC').hide()
$('.hideElement').hide();
$('.catsLinks li').hover(function() {

    var elemId = $(this).data('category');
    $('#categoryDeatiles' + elemId).show().slideDown();
    (".fixedPopUp").show()

}, function() {
    var elemId = $(this).data('category');
    $('#categoryDeatiles' + elemId).css('display', 'none');
    (".fixedPopUp").hide()

})



$('.part-one-content li').hover(function() {
    var elemId = $(this).data('category');
    $('#' + elemId).show().slideDown();
}, function() {
    var elemId = $(this).data('category');
    $('#' + elemId).css('display', 'none');

})



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



$.post({
    url: '/relatedCatgory',
    data: {
        '_token': '{{csrf_token()}}',
        id: elemId
    },
    success: function(data) {
        $('#categoryDeatiles' + elemId).show()
        $('#categoryDeatiles' + elemId).html(data);
    },
    error: function(msg) {
        alert('failed' + msg);
    }

})
</script>