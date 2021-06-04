<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Trang chủ
Route::get('/', 'ShopController@index');

// Trang liên hệ
Route::get('/lien-he', 'ShopController@contact');

// Trang danh mục
Route::get('/danh-muc-san-pham', 'ShopController@listProducts');

// Trang chi tiết sản phẩm
Route::get('/chi-tiet-san-pham', 'ShopController@detailProduct');

// Trang danh sach tin tuc
Route::get('/tin-tuc', 'ShopController@listArticles');

// Trang chi tiet tin tuc
Route::get('/chi-tiet-tin-tuc', 'ShopController@detailArticle');

Route::get('/dat-hang', 'CartController@index');


//giúp cho chúng ta tạo các url  tương ứng với controller truyền vào
Route::resource('category', 'CategoryController');
Route::resource('banner', 'BannerController');
