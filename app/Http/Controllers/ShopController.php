<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ShopController extends Controller
{
    // trang chủ
    public function index()
    {
        return view('shop.index');
    }

    // trang liên hệ
    public function contact()
    {
        return view('shop.contact');
    }

    // Trang danh sách sản phẩm
    public function listProducts()
    {
        return view('shop.list-products');
    }

    // Trang Chi tiết Sản phẩm
    public function detailProduct()
    {
        return view('shop.detail-product');
    }

    // Tranh danh sách tin tức
    public function listArticles()
    {
        return view('shop.list-articles');
    }

    // Trang chi tiết tin tức
    public function detailArticle()
    {
        return view('shop.detail-article');
    }
}
