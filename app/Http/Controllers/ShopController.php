<?php

namespace App\Http\Controllers;

use App\Setting;
use App\Contact;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function __construct()
    {
        // lấy dữ liệu setting và chia sẻ global
        // 4. cấu hình website
        $settings = Setting::first();

        // Chia sẻ dữ qua tất các layout
        view()->share([
            'settings' => $settings
        ]);
    }

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

    // thêm dữ liệu khách hàng liên hệ vào bảng contact
    public function postContact(Request $request)
    {
        //validate
        $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email'
        ]);

        //luu vào csdl
        $contact = new Contact();
        $contact->name = $request->input('name');
        $contact->phone = $request->input('phone');
        $contact->email = $request->input('email');
        $contact->content = $request->input('content');
        $contact->save();

        // chuyển về trang chủ
        return redirect('/');
    }
}
