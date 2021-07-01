@extends('shop.layouts.main')

@section('content')
    <div class="row">
        <!-- MAIN-SLIDER-AREA START -->
        <div class="main-slider-area">
            <!-- SLIDER-AREA START -->
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="slider-area">
                    <div id="wrapper">
                        <div class="slider-wrapper">
                            <div id="mainSlider" class="nivoSlider">
                                @foreach($banners as $key => $banner)
                                    <img src="{{ asset($banner->image) }}" alt="main slider" title="#htmlcaption{{ $key }}"/>
                                @endforeach
                            </div>

                            @foreach($banners as $key2 => $banner)
                                <div id="htmlcaption{{ $key2 }}" class="nivo-html-caption slider-caption">
                                    <div class="slider-progress"></div>
                                    <div class="slider-cap-text slider-text1">
                                        <div class="d-table-cell">
                                            <h2 class="animated bounceInDown">{{ $banner->title }}</h2>
                                            <p class="animated bounceInUp">{{ $banner->description }}</p>
                                            <a class="wow zoomInDown" data-wow-duration="1s" data-wow-delay="1s" href="#">Xem Thêm<i class="fa fa-caret-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
            <!-- SLIDER-AREA END -->
            <!-- SLIDER-RIGHT START -->
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="slider-right zoom-img m-top">
                    <a href="#"><img class="img-responsive" src="/frontend/img/product/cms11.jpg" alt="sidebar left" /></a>
                </div>
            </div>
            <!-- SLIDER-RIGHT END -->
        </div>
        <!-- MAIN-SLIDER-AREA END -->
    </div>
    <!-- TOW-COLUMN-PRODUCT START -->
    <!-- TOW-COLUMN-PRODUCT END -->

    @foreach($data as $item)
        <div class="row">
            <!-- FEATURED-PRODUCTS-AREA START -->
            <div class="featured-products-area">
                <div class="center-title-area">
                    <h2 class="center-title">{{ $item['category']->name }}</h2>
                </div>
                <div class="col-xs-12">
                    <div class="row">
                        <!-- FEARTURED-CAROUSEL START -->
                        <div class="feartured-carousel">
                            <!-- SINGLE-PRODUCT-ITEM START -->
                            @foreach($item['products'] as $product)
                                <div class="item">
                                <div class="single-product-item">
                                    <div class="product-image">
                                        <a href="{{ route('shop.detailProduct',['slug' => $product->slug]) }}"><img src="{{ asset($product->image) }}" alt="product-image" /></a>
                                        @if($product->is_hot == 1)
                                            <a href="#" class="new-mark-box">Hot</a>
                                        @endif
                                        <div class="overlay-content">
                                            <ul>
                                                <li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
                                                <li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
                                                <li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <a href="single-product.html">{{ $product->name }}</a>
                                        <div class="price-box">
                                            <span class="price">{{ number_format($product->sale, 0,",",".") }} đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                        <!-- FEARTURED-CAROUSEL END -->
                    </div>
                </div>
            </div>
            <!-- FEATURED-PRODUCTS-AREA END -->
        </div>
    @endforeach

    <div class="row">
        <!-- IMAGE-ADD-AREA START -->
        <div class="image-add-area">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <!-- ONEHALF-ADD START -->
                <div class="onehalf-add-shope zoom-img">
                    <a href="#"><img src="/frontend/img/product/one-helf1.jpg" alt="shope-add" /></a>
                </div>
                <!-- ONEHALF-ADD END -->
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <!-- ONEHALF-ADD START -->
                <div class="onehalf-add-shope zoom-img">
                    <a href="#"><img src="/frontend/img/product/one-helf2.jpg" alt="shope-add" /></a>
                </div>
                <!-- ONEHALF-ADD END -->
            </div>
        </div>
        <!-- IMAGE-ADD-AREA END -->
    </div>
@endsection
