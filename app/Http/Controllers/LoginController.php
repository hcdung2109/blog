<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('admin.login');
    }

    public function postLogin(Request $request)
    {
        //validate du lieu
        $request->validate([
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6'
        ],[
            'email.required' => 'Bạn chưa nhập Email',
            'password.required' => 'Bạn chưa nhập Password',
        ]); //$errors

        // lấy email và password từ form login
        /*$data = [
            'email' => trim($request->input('email')),
            'password' => trim($request->input('password'))
        ];*/

        $data = $request->only('email', 'password');

        $remember = $request->input('remember');

        // check success
        if (Auth::attempt($data, $remember)) { // check người dùng tồn tại
            // SELECT * FROM user WHERE email='duc@gmail.com' and password='12345678'
            return redirect()->route('admin.product.index');
        }

        return redirect()->back()->with('msg', 'Email hoặc Password không chính xác');;
    }

    // đăng xuất
    public function logout()
    {
       // xoá phiên đăng nhập (session && cookie)
        Auth::logout();
        // chuyển về trang đăng nhập
        return redirect()->route('admin.login');
    }
}
