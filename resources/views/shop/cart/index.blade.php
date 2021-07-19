@extends('shop.layouts.main')

@section('content')
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <!-- BSTORE-BREADCRUMB START -->
            <div class="bstore-breadcrumb">
                <a href="index.html">Trang Chủ</a>
                <span><i class="fa fa-caret-right	"></i></span>
                <span>Giỏ Hàng</span>
            </div>
            <!-- BSTORE-BREADCRUMB END -->
        </div>
    </div>
    <div class="row">
        @if(count($listProducts))
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <!-- SHOPPING-CART SUMMARY START -->
                <h2 class="page-title">Danh Sách Sản Phẩm Trong Gio Hàng</h2>
                <!-- SHOPPING-CART SUMMARY END -->
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <!-- SHOPING-CART-MENU START -->
            <div class="table-responsive">
                <!-- TABLE START -->
                <table class="table table-bordered" id="cart-summary">
                    <!-- TABLE HEADER START -->
                    <thead>
                    <tr>
                        <th class="cart-product">Image</th>
                        <th class="cart-description">Tên</th>
                        <th class="cart-unit text-right">Giá</th>
                        <th class="cart_quantity text-center">Số Lượng</th>
                        <th class="cart-delete">&nbsp;</th>
                        <th class="cart-total text-right">Thành Tiền</th>
                    </tr>
                    </thead>
                    <!-- TABLE HEADER END -->
                    <!-- TABLE BODY START -->
                    <tbody>
                    <!-- SINGLE CART_ITEM START -->
                    @foreach($listProducts as $product)
                        <tr>
                            <td class="cart-product">
                                <a href="#"><img alt="Blouse" src="{{ asset($product->options->image) }}"></a>
                            </td>
                            <td class="cart-description">
                                <p class="product-name"><a href="#">{{ $product->name }}</a></p>
                            </td>
                            <td class="cart-unit">
                                <ul class="price text-right">
                                    <li class="price">{{ number_format($product->price, 0,",",".") }} đ</li>
                                </ul>
                            </td>
                            <td class="cart_quantity text-center">
                                <div class="cart-plus-minus-button">
                                    <input class="cart-plus-minus" type="text" name="qtybutton" value="{{ $product->qty }}">
                                </div>
                                <button data-id="{{ $product->rowId }}" type="button" class="btn btn-link btnUpdateQty" >Cập nhật</button>
                            </td>
                            <td class="cart-delete text-center">
                                <span>
                                    <a href="{{ route('shop.removeProductToCart',['rowId' => $product->rowId ]) }}" class="cart_quantity_delete" title="Delete"><i class="fa fa-trash-o"></i></a>
                                </span>
                            </td>
                            <td class="cart-total">
                                <span class="price">{{ number_format( $product->qty * $product->price, 0,",",".") }} đ</span>
                            </td>
                        </tr>
                    @endforeach

                    </tbody>
                    <!-- TABLE BODY END -->
                    <!-- TABLE FOOTER START -->
                    <tfoot>
                    <tr class="cart-total-price">
                        <td class="cart_voucher" colspan="2" rowspan="4"></td>
                        <td class="text-right" colspan="3">Tổng tiền</td>
                        <td id="total_product" class="price" colspan="1">{{ $totalPrice }}</td>
                    </tr>

                    </tfoot>
                    <!-- TABLE FOOTER END -->
                </table>
                <!-- TABLE END -->
            </div>
            <!-- CART TABLE_BLOCK END -->
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <!-- RETURNE-CONTINUE-SHOP START -->
            <div class="returne-continue-shop">
                <a href="{{ route('shop.cancelCart') }}" class="procedtocheckout pull-left" style="background-color: black; color: white">Hủy Đơn Hàng</a>
                <a href="index.html" class="continueshoping"><i class="fa fa-chevron-left"></i>Tiếp tục mua hàng</a>
                <a href="{{ route('shop.order') }}" class="procedtocheckout">Tiến hành đặt hàng<i class="fa fa-chevron-right"></i></a>
            </div>
            <!-- RETURNE-CONTINUE-SHOP END -->
            </div>
        @else
            <h3 class="text-center">Không có sản phẩm trong giỏ hàng</h3>
        @endif
    </div>
@endsection

@section('my_js')
    <script type="text/javascript">
        $(document).ready(function() {

            // đính kèm token vào mỗi request ajax
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') // suAbidEneUPjfI5mHvWdFbSQ1PsM4OYSm73vF7kZ
                }
            });

            $('.btnUpdateQty').click(function () {

                var qty = $(this).closest('.cart_quantity').find('.cart-plus-minus').val();
                var rowId = $(this).attr('data-id');  // attr : lấy giá trị của thuộc tính của thẻ HTML

                window.location.href = '/cap-nhat-so-luong/'+rowId+'/'+qty;
            });
        });
    </script>
@endsection
