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
                                                <img src="images/egypt.png" alt="shipp" class="img-fluid icon">
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
                                        @if($result['commonContent']['setting'][77]->value=='logo')
                                        <a href="#"> <img
                                                src="{{asset('').$result['commonContent']['setting'][15]->value}}"
                                                alt="<?=stripslashes($result['commonContent']['setting'][79]->value)?>"
                                                class="img-fluid"></a>
                                        @endif
                                    </div>
                                </div>

                                <div class="col-xl-8 col-7">

                                    <form class="search-bar f" action="{{ URL::to('/shop')}}" method="get">
                                        <input type="hidden" name="category" value="">
                                        <input type="text" name="search" placeholder="انت بتدور على اي؟">

                                        <button type="submit" style="
    background: white;
    border: none;
">
                                            <span class="search-icon">
                                                <img src="images/search.svg" class="img-fluid small-icon"
                                                    alt="search-icon">
                                            </span>

                                        </button>


                                    </form>

                                </div>

                                <div class="col-xl-3 col-4">
                                    <div class="shoppingAndreg">
                                        <ul class="f">

                                            <li class="registration">
                                                @if(auth()->guard('customer')->check())
                                                @lang('website.Welcome')
                                                {{auth()->guard('customer')->user()->first_name}}
                                                <span class="select-arrow">
                                                    <img src="images/down-arrow.svg" class="img-fluid" alt="arrow">
                                                </span>
                                                @else
                                                <a href="#">
                                                    <span>
                                                        تسجيل الدخول او الاشتراك
                                                    </span>
                                                    <span class="select-arrow">
                                                        <img src="images/down-arrow.svg" class="img-fluid" alt="arrow">
                                                    </span>
                                                </a>
                                                @endif
                                            </li>
                                            <div class="reg p-3 text-right">
                                                <div class="p-3">

                                                    @if(auth()->guard('customer')->check())
                                                    <ul>
                                                        <li class="mb-2 px-5"> <a
                                                                href="{{url('profile')}}">@lang('website.Profile')</a>
                                                        </li>
                                                        <li class="mb-2 px-5"> <a
                                                                href="{{url('wishlist')}}">@lang('website.Wishlist')
                                                                <span class="total_wishlist">
                                                                    ({{$result['commonContent']['total_wishlist']}})</span></a>
                                                        </li>
                                                        <li class="mb-2 px-5"> <a
                                                                href="{{url('compare')}}">@lang('website.Compare')&nbsp;(<span
                                                                    id="compare">{{$count}}</span>)</a> </li>
                                                        <li class="mb-2 px-5"> <a
                                                                href="{{url('orders')}}">@lang('website.Orders')</a>
                                                        </li>
                                                        <li class="mb-2 px-5"> <a
                                                                href="{{url('shipping-address')}}">@lang('website.Shipping
                                                                Address')</a> </li>
                                                        <li class="mb-2 px-5"> <a
                                                                href="{{url('logout')}}">@lang('website.Logout')</a>
                                                        </li>
                                                    </ul>


                                                    @else
                                                    <div class="noon-login text-center">
                                                        <div class="mb-2">حبايب نون</div>
                                                        <a class="btn btn-info px-5" href="/login">تسجيل دخول</a>

                                                    </div>

                                                    <hr>
                                                    <div class="noon-reg text-center">
                                                        <div class="mb-2">لسه معندكش حساب؟</div>
                                                        <a href="/login">اشترك</a>
                                                        <br>
                                                        <a href="/seller3333333/index.php"> تسجيل دخول كبائع</a>

                                                    </div>

                                                    @endif
                                                </div>
                                            </div>
                                            <li class="shopingCart">
                                                <a href="/viewcart">
                                                    <Span>
                                                        عربه التسوق
                                                    </Span>
                                                    <?php $qunatity=0; ?>
                                                    @foreach($result['commonContent']['cart'] as $cart_data)
                                                    <?php $qunatity += $cart_data->customers_basket_quantity; ?>
                                                    @endforeach
                                                    <span>
                                                        <img src="images/supermarket (1).svg" alt="cart"
                                                            class="img-fluid icon">@if($qunatity > 0)
                                                        <div class="jsx-127861163 cartIconContainer"><i
                                                                class="icon icon-cart-o cartIcon" style="color:"></i>
                                                            <div
                                                                style="transition: opacity 300ms ease-in-out 0s; opacity: 1;">
                                                                <div class="jsx-127861163 counter"> {{ $qunatity }}
                                                                </div>
                                                            </div>
                                                        </div>
                                                        @endif

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
                                        <ul class="f mb-0">
                                            @foreach($result['commonContent']["categories"] as $menus)

                                            <li><a href="#">{{$menus->name}}</a>
                                                <div class="sup-nav-pop mx-3">
                                                    <div class="wrapper">
                                                        <div class="container-fluid">
                                                            <div class="inner-data px-3">
                                                                <div class="row">
                                                                    <div class="col-2">
                                                                        <div class="sup-cats">
                                                                            <p class="head">فئات المنتجات
                                                                            </p>
                                                                            <ul>


                                                                                @if(count($menus->sub_categories))
                                                                                @foreach($menus->sub_categories as $sub)
                                                                                <li><a href="">{{$sub->sub_name}}</a>
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
                                                                                    echo getSixBrandBycategoryId($menus->id) 
                                                                                    ?>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-4">
                                                                        <div class="brand-box-big">
                                                                            <!--images/ar-top-electronics_01.png -->
                                                                            <img src="{{asset($menus->path)}}" alt="top"
                                                                                class="img-fluid">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-2">
                                                                        <div class="brand-box-big">
                                                                            <!--- images//ar-top-electronics_02.png -->
                                                                            <img src="{{asset($menus->path)}}" alt="top"
                                                                                class="img-fluid">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                    </div>
                                    </li>
                                    <!-- <div class="fixedPopUp">

                                            </div> -->
                                    </li>

                                    @endforeach


                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-nav-pop">
            <div class="wrapper">
                <div class="px-2">
                    <div class="row">
                        <div class="col-7">
                            <div class="pop-body">
                                <div class="row">
                                    <div class="col-4 pl-0">
                                        <div class="pop-body-part-one text-right">
                                            <div class="part-one-header f">
                                                <span>كل الفئات</span>
                                                <span class="select-arrow">
                                                    <img src="images/down-arrow.svg" class="img-fluid" alt="arrow">
                                                </span>
                                            </div>
                                            <div class="part-one-content">
                                                <ul>
                                                    @foreach($result['commonContent']["categories"] as $menuss)
                                                    <li id="{{$menuss->id}}" class=""><a href="#">{{$menuss->name}}</a>

                                                    </li>

                                                    @endforeach
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-8" id="dataPoup">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="fixedPopUp">

        </div>
    </div>
    </div>
</header>

<script type="text/javascript">
$('.part-one-content li').hover(function() {
    $.post({
        url: '/getcontent',
        data: {
            '_token': '{{csrf_token()}}',
            'catgory_id': $(this).attr('id')
        },
        success: function(data) {
            $('#dataPoup').html(data);
        },
        error: function(data) {
            alert(data);
        }
    })


    ;
})
</script>