<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CartController extends GeneralController
{
    // Trang danh sach san pham dat hang
    public function index()
    {
        return view('shop.cart.index');
    }
}
