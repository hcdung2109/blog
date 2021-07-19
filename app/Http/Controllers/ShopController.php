<?php

namespace App\Http\Controllers;

use App\Article;
use App\Banner;
use App\Order;
use App\OrderDetail;
use App\OrderProduct;
use App\Setting;
use App\Contact;
use App\Category;
use App\Product;
use Illuminate\Http\Request;
use Cart;

class ShopController extends Controller
{
    public $categories; // danh sách danh mục

    public function __construct()
    {
        // lấy dữ liệu setting và chia sẻ global
        // 1. cấu hình website
        $settings = Setting::first();

        // 2. Lấy dữ liệu - Danh mục, có trạng thái là hiển thị
        $this->categories = Category::where([
            'is_active' => 1,
            'type' => 1, // lấy ra danh mục sản phẩm
            ])->get(); // bao gồm cả menu cha và con


        // Chia sẻ dữ qua tất các layout
        view()->share([
            'settings' => $settings,
            'categories' => $this->categories
        ]);
    }

    // trang chủ
    public function index()
    {
        $sildeBanners =  Banner::where(['is_active' => 1,'type' => 1])->get();
        $bottomBanners =  Banner::where(['is_active' => 1,'type' => 3])->get();

        $listCategories = $this->categories; // lấy toàn bộ danh mục

        $data = []; // chứa dữ liệu bao gồm danh muc và sản phẩm

        foreach($listCategories as $key => $category) {
            if ($category->parent_id == 0) { // kiểm tra xem có phải danh mục cha
                $data[$key]['category'] = $category; // b1 . lấy danh mục
                //$data[$key]['products'] = []; // b2 . láy toàn bộ sản phẩm của cả nhóm danh mục


                $ids = []; // mảng các id của nhóm danh mục cha
                $ids[] = $category->id;  // $ids : 1

                foreach ($listCategories as $key2 => $child) {
                    if ($child->parent_id == $category->id) {
                        $ids[] = $child->id; // $ids : 1,7

                        foreach ($listCategories as $key3 => $child2) {
                            if ($child2->parent_id == $child->id) {
                                $ids[] = $child2->id; // // $ids : 1,7,60

                            }
                        }
                    }
                }


                //SELECT * FROM `products` WHERE is_active = 1  AND category_id IN(1,7,60)
                $data[$key]['products'] = Product::where(['is_active' => 1])
                                                    ->whereIn('category_id' , $ids) // category_id IN(1,7,60)
                                                    ->limit(10)
                                                    ->orderBy('id', 'desc')
                                                    ->get();
            }
        }

        return view('shop.index', [
            'banners' => $sildeBanners,
            'data' => $data,
            'bottomBanners' => $bottomBanners

        ]);
    }

    // trang liên hệ
    public function contact()
    {
        return view('shop.contact');
    }

    // Trang danh sách sản phẩm
    public function listProducts($slug)
    {
        $category = Category::where(['slug' => $slug, 'is_active' => 1])->firstOrFail();

        $ids = []; // chưa cả id cha và con
        $ids[] = $category->id;

        $listCategories = $this->categories; // lấy toàn bộ danh mục
        foreach ($listCategories as $child) {
            if ($child->parent_id == $category->id) {
                $ids[] = $child->id;

                foreach ($listCategories as $child2) {
                    if ($child2->parent_id == $child->id) {
                        $ids[] = $child2->id;
                    }
                }
            }
        }

        $products = Product::where(['is_active' => 1, 'category_id' => $ids])->get();

        return view('shop.list-products',[
            'category' => $category,
            'products' => $products
        ]);
    }

    // Trang Chi tiết Sản phẩm
    public function detailProduct($slug)
    {
        $product = Product::where(['slug' => $slug, 'is_active' => 1])->firstOrFail();


        // lấy ra những sản phẩm liên quan
        // 1. lấy những sản phẩm cùng danh mục
        // 2. loại trừ cái đang xem

        // step 2 : lấy list 10 SP liên quan
        $relatedProducts = Product::where([ ['is_active' , '=', 1],
                                            ['category_id', '=' , $product->category_id ],
                                            ['id', '<>' , $product->id]
                                        ])->orderBy('id', 'desc')
                                         ->take(10)
                                         ->get();

        return view('shop.detail-product', [
            'product' => $product,
            'relatedProducts' => $relatedProducts
        ]);
    }

    // Tranh danh sách tin tức
    public function listArticles()
    {
        $articles = Article::where(['is_active' => 1 ])->get();

        return view('shop.list-articles',[
                "articles" => $articles
            ]);
    }

    // Trang chi tiết tin tức
    public function detailArticle($slug)
    {
        $article = Article::where(['slug' => $slug, 'is_active' => 1])->firstOrFail();

        return view('shop.detail-article',
        [
            'article' => $article
        ]
        );
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

    // Thêm sản phẩm vào giỏ hàng
    public function addToCart($id)
    {
        $product = Product::findOrFail($id);

        // thông tin sẽ lưu vào giỏ

        // gọi đến thư viện thêm sản phẩm vào giỏ hàng
        Cart::add(
            ['id' => $product->id, 'name' => $product->name, 'qty' => 1, 'price' => $product->sale,'options' => ['image' => $product->image]]
        );

        //session(['totalItem' => Cart::count()]);

        // chuyển về trang danh sách sản phảm trong giỏ hàng
        return redirect()->route('shop.cart');
    }

    // Danh sách đặt hàng - giỏ hàng
    public function cart()
    {
        // lấy dữ liệu = tất cả sản phẩm trong giỏ hàng
        // b1. lấy toàn bộ sản phẩm đã lưu trong giỏ
        $listProducts = Cart::content();

        // lấy tổng giá của đơn hàng
        $totalPrice = Cart::subtotal(0,",",".");

        return view('shop.cart.index', [
            'listProducts' => $listProducts,
            'totalPrice' => $totalPrice // giá x số lượng
        ]);

    }

    // hủy đơn hàng
    public function cancelCart()
    {
        Cart::destroy();

        return redirect('/');
    }

    // Xóa sản phẩm trong giỏ
    public function removeProductToCart($rowId)
    {
        Cart::remove($rowId);

        return redirect()->route('shop.cart');
    }

    public function updateCart($rowId, $qty)
    {
        // cập nhật số lượng song => về trang giỏ hàng
        Cart::update($rowId, $qty);

        return redirect()->route('shop.cart');
    }

    // Tiến hành đặt hàng
    // Lưu được thông sản phẩm đã đặt hàng vào trong CSDL
    public function order()
    {
        return view('shop.cart.order');
    }

    // xử lý lưu dữ liệu vào trong database
    public function postOrder(Request $request)
    {
        $request->validate([
            'fullname' => 'required|max:255',
            'phone' => 'required',
            'email' => 'required|email',
            'address' => 'required',
        ]);

        // Lưu vào bảng đơn đặt hàng - orders
        $order = new Order();
        $order->fullname = $request->input('fullname');
        $order->phone = $request->input('phone');
        $order->email = $request->input('email');
        $order->address = $request->input('address');
        $order->note = $request->input('note');

        // lấy tổng giá của đơn hàng
        $totalPrice = Cart::subtotal(0,",",'');
        $order->total = $totalPrice; // tổng giá
        $order->order_status_id = 1; // 1 = mới , 2 = đang xử lý, 3= hoàn thành, 4 = hủy
        //$order->save();


        if ($order->save()) {
            // xử lý lưu chi tiết
            $id_order = $order->id;

            // lấy toàn bộ sản phẩm đã lưu trong giỏ
            $listProducts = Cart::content();

            foreach ($listProducts as $product)
            {
                //dd($product);
                $_detail = new OrderProduct();
                $_detail->order_id = $id_order;
                $_detail->name = $product->name;
                $_detail->image = $product->options->image;
                $_detail->product_id = $product->id;
                $_detail->qty = $product->qty;
                $_detail->price = $product->price;
                $_detail->save();

                // Giam số lượng trong kho
            }

            // Xóa thông tin giỏ hàng Hiện tại
            Cart::destroy();

            // chuyển về trang thông báo đặt hàng thành công
            return redirect()->route('shop.orderSuccess');
        }

    }

    // trang thông báo đặt hàng thành công
    public function orderSuccess()
    {
        return view('shop.cart.orderSuccess');
    }
}
