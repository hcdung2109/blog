@extends('admin.layouts.main')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            QL Danh Mục <a href="{{ route('category.create') }}" class="btn btn-primary">Thêm</a>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table class="table table-bordered">
                            <tr>
                                <th style="width: 10px">#</th>
                                <th>Tên</th>
                                <th>Danh Mục Cha</th>
                                <th>Hình ảnh</th>
                                <th>Vị trí</th>
                                <th>Loại</th>
                                <th>Hiện thị</th>
                            </tr>
                            @foreach($data as $index => $item)
                                <tr>
                                    <td>{{ $index }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->parent_id }}</td>
                                    <td>
                                        @if($item->image)
                                            <img width="100" src="{{ asset($item->image) }}">
                                        @endif
                                    </td>
                                    <td>{{ $item->position }}</td>
                                    <td>{{ $item->type }}</td>
                                    <td>{{ $item->is_active }}</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        <ul class="pagination pagination-sm no-margin pull-right">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->

        </div>

    </section>
    <!-- /.content -->
@endsection
