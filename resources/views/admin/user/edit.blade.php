@extends('admin.layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Chỉnh Sửa Thông Tin Người Dùng <a href="{{ route('admin.user.index') }}" class="btn btn-primary">Danh Sách</a>
        </h1>
    </section>


    <!-- Main content -->
    <section class="content">
        <div class="row">

            <div class="col-md-12">
            @if ($errors->any()) <!-- kiểm tra có bất kỳ lỗi nào -->
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4><i class="icon fa fa-ban"></i> Lỗi !</h4>
                    @foreach ($errors->all() as $error)
                        <p>{{ $error }}</p>
                    @endforeach
                </div>
                @endif
            </div>

            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thông tin</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form"  method="POST" action="{{ route('admin.user.update',['id' => $user->id]) }}" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">

                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên</label>
                                <input value="{{ $user->name }}" name="name" type="text" class="form-control" id="exampleInputEmail1" placeholder="Nhập tên">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input value="{{ $user->email }}" name="email" type="email" class="form-control" id="exampleInputEmail1" placeholder="Nhập Email">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1" style="color:red;">*** Mật khẩu Mới</label>
                                <input name="password" type="password" class="form-control" id="exampleInputEmail1" placeholder="Nhập MK">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputFile">Image</label>
                                <input type="file" id="exampleInputFile" name="avatar">
                                <img src="{{ asset($user->avatar) }}" alt="" width="100">
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input {{ $user->is_active == 1 ? 'checked' : '' }} type="checkbox" value="1" name="is_active"> <b>Kích hoạt</b>
                                </label>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Lưu</button>
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </div>
            <!--/.col (left) -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
@endsection
