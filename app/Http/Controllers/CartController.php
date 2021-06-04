<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CartController extends Controller
{
    // Trang danh sach san pham dat hang
    public function index()
    {
        return view('shop.cart.index');
    }
}
