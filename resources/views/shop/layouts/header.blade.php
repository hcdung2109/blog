<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->

<!-- HEADER-TOP START -->
<div class="header-top">
    <div class="container">
        <div class="row">
            <!-- HEADER-LEFT-MENU START -->
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="header-left-menu">
                    <div class="welcome-info">
                        Welcome <span>BootExperts</span>
                    </div>
                    <div class="currenty-converter">
                        <form method="post" action="#" id="currency-set">
                            <div class="current-currency">
                                <span class="cur-label">Currency : </span><strong>USD</strong>
                            </div>
                            <ul class="currency-list currency-toogle">
                                <li>
                                    <a title="Dollar (USD)" href="#">Dollar (USD)</a>
                                </li>
                                <li>
                                    <a title="Euro (EUR)" href="#">Euro (EUR)</a>
                                </li>
                            </ul>
                        </form>
                    </div>
                    <div class="selected-language">
                        <div class="current-lang">
                            <span class="current-lang-label">Language : </span><strong>English</strong>
                        </div>
                        <ul class="languages-choose language-toogle">
                            <li>
                                <a href="#" title="English">
                                    <span>English</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="Français (French)">
                                    <span>Français</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- HEADER-LEFT-MENU END -->
            <!-- HEADER-RIGHT-MENU START -->
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="header-right-menu">
                    <nav>
                        <ul class="list-inline">
                            <li><a href="checkout.html">Check Out</a></li>
                            <li><a href="wishlist.html">Wishlist</a></li>
                            <li><a href="my-account.html">My Account</a></li>
                            <li><a href="{{ route('shop.cart') }}">Giỏ Hàng</a></li>
                            <li><a href="registration.html">Sign in</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- HEADER-RIGHT-MENU END -->
        </div>
    </div>
</div>
<!-- HEADER-TOP END -->
<!-- HEADER-MIDDLE START -->
<section class="header-middle">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- LOGO START -->
                <div class="logo">
                    <a href="index.html"><img src="/frontend/img/logo.png" alt="bstore logo" /></a>
                </div>
                <!-- LOGO END -->
                <!-- HEADER-RIGHT-CALLUS START -->
                <div class="header-right-callus">
                    <h3>Hotline</h3>
                    <span>{{ $settings->hotline }}</span>
                </div>
                <!-- HEADER-RIGHT-CALLUS END -->
                <!-- CATEGORYS-PRODUCT-SEARCH START -->
                <div class="categorys-product-search">
                    <form action="#" method="get" class="search-form-cat">
                        <div class="search-product form-group">
                            <select name="catsearch" class="cat-search">
                                <option value="">Categories</option>
                                <option value="2">--Women</option>
                                <option value="3">---T-Shirts</option>
                                <option value="4">--Men</option>
                                <option value="5">----Shoose</option>
                                <option value="6">--Dress</option>
                                <option value="7">----Tops</option>
                                <option value="8">---Casual</option>
                                <option value="9">--Evening</option>
                                <option value="10">--Summer</option>
                                <option value="11">---sports</option>
                                <option value="12">--day</option>
                                <option value="13">--evening</option>
                                <option value="14">-----Blouse</option>
                                <option value="15">--handba</option>
                                <option value="16">--phone</option>
                                <option value="17">-house</option>
                                <option value="18">--Beauty</option>
                                <option value="19">--health</option>
                                <option value="20">---clothing</option>
                                <option value="21">---kids</option>
                                <option value="22">--Dresse</option>
                                <option value="22">---Casual</option>
                                <option value="23">--day</option>
                                <option value="24">--evening</option>
                                <option value="24">---Blouse</option>
                                <option value="25">-handb</option>
                                <option value="66">--phone</option>
                                <option value="27">---house</option>
                            </select>
                            <input type="text" class="form-control search-form" name="s" placeholder="Enter your search key ... " />
                            <button class="search-button" value="Search" name="s" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </form>
                </div>
                <!-- CATEGORYS-PRODUCT-SEARCH END -->
            </div>
        </div>
    </div>
</section>
<!-- HEADER-MIDDLE END -->
<!-- MAIN-MENU-AREA START -->
<header class="main-menu-area">
    <div class="container">
        <div class="row">
            <!-- MAINMENU START -->
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 no-padding-right menuarea">
                <div class="mainmenu">
                    <nav>
                        <ul class="list-inline mega-menu">
                            <li><a href="/">Trang Chủ</a></li>
                            @if(!empty($categories))
                                @foreach($categories as $category)
                                    @if($category->parent_id == 0)
                                        <li>
                                            <a href="{{ route('shop.listProducts',['slug' => $category->slug]) }}">{{ $category->name }}</a>
                                            <!-- DRODOWN-MEGA-MENU START -->

                                            <div class="drodown-mega-menu">
                                                <div class="left-mega col-xs-6">
                                                    <div class="mega-menu-list">
                                                        @foreach($categories as $key => $child)
                                                            @if($child->parent_id != 0 && $child->parent_id == $category->id  && ($key%2) == 1)
                                                                <a class="mega-menu-title" href="{{ route('shop.listProducts',['slug' => $child->slug]) }}">
                                                                   {{ $child->name }}</a>
                                                            @endif
                                                        @endforeach
                                                    </div>
                                                </div>
                                                <div class="right-mega col-xs-6">
                                                    <div class="mega-menu-list">
                                                        @foreach($categories as $key => $child)
                                                            @if($category->id == $child->parent_id && ($key%2) == 0)
                                                                <a class="mega-menu-title" href="{{ route('shop.listProducts',['slug' => $child->slug]) }}">
                                                                   {{ $child->name }}
                                                                </a>
                                                            @endif
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>

                                        </li>
                                    @endif
                                @endforeach
                            @endif
                            <li><a href="{{ route('shop.listArticles') }}">Tin Tức</a></li>
                            <li><a href="{{ route('shop.contact') }}">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- MAINMENU END -->
        </div>
        <div class="row">
            <!-- MOBILE MENU START -->
            <div class="col-sm-12 mobile-menu-area">
                <div class="mobile-menu hidden-md hidden-lg" id="mob-menu">
                    <span class="mobile-menu-title">MENU</span>
                    <nav>
                        <ul>
                            <li><a href="/">Trang Chủ</a>
                                <ul>
                                    <li><a href="index.html">Home variation 1</a></li>
                                    <li><a href="index-2.html">Home variation 2</a></li>
                                </ul>
                            </li>
                            <li><a href="shop-gird.html">Women</a>
                                <ul>
                                    <li><a href="shop-gird.html">Tops</a>
                                        <ul>
                                            <li><a href="shop-gird.html">T-Shirts</a></li>
                                            <li><a href="shop-gird.html">Blouses</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="shop-gird.html">Dresses</a>
                                        <ul>
                                            <li><a href="shop-gird.html">Casual Dresses</a></li>
                                            <li><a href="shop-gird.html">Summer Dresses</a></li>
                                            <li><a href="shop-gird.html">Evening Dresses</a></li>
                                        </ul>
                                    </li>

                                </ul>
                            </li>
                            <li><a href="shop-gird.html">men</a>
                                <ul>
                                    <li><a href="shop-gird.html">Tops</a>
                                        <ul>
                                            <li><a href="shop-gird.html">Sports</a></li>
                                            <li><a href="shop-gird.html">Day</a></li>
                                            <li><a href="shop-gird.html">Evening</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="shop-gird.html">Blouses</a>
                                        <ul>
                                            <li><a href="shop-gird.html">Handbag</a></li>
                                            <li><a href="shop-gird.html">Headphone</a></li>
                                            <li><a href="shop-gird.html">Houseware</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="shop-gird.html">Accessories</a>
                                        <ul>
                                            <li><a href="shop-gird.html">Houseware</a></li>
                                            <li><a href="shop-gird.html">Home</a></li>
                                            <li><a href="shop-gird.html">Health & Beauty</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="shop-gird.html">clothing</a></li>
                            <li><a href="shop-gird.html">tops</a></li>
                            <li><a href="shop-gird.html">T-shirts</a></li>
                            <li><a href="#">Delivery</a></li>
                            <li><a href="about-us.html">About us</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- MOBILE MENU END -->
        </div>
    </div>
</header>
<!-- MAIN-MENU-AREA END -->
