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
                                <th >Danh Mục Cha</th>
                                <th class="text-center">Hình ảnh</th>
                                <th class="text-center">Vị trí</th>
                                <th class="text-center">Loại Danh Mục</th>
                                <th class="text-center">Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            @foreach($data as $index => $item)
                                <tr>
                                    <td>{{ $index }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>
                                        @foreach($categories as $cate)
                                            @if($item->parent_id === $cate->id)
                                                {{ $cate->name }}
                                            @endif
                                        @endforeach
                                    </td>
                                    <td class="text-center">
                                        @if($item->image)
                                            <img width="100" src="{{ asset($item->image) }}">
                                        @endif
                                    </td>
                                    <td class="text-center">{{ $item->position }}</td>
                                    <td class="text-center">
                                        @if($item->type == 1)
                                            Sản phẩm
                                        @elseif($item->type == 2)
                                            Tin tức
                                        @else
                                            Khác
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        {!! ($item->is_active == 1) ? '<span class="badge bg-green"> hiển thị </span>' : '<span class="badge bg-red">ẩn</span>'  !!}
                                    </td>
                                    <td class="text-center">
                                        <a href="{{ route('category.edit', ['id' => $item->id]) }}" class="btn btn-primary">
                                            <i class="fa fa-fw fa-pencil"></i>
                                        </a>
                                        <button type="button" class="btn btn-danger">
                                            <i class="fa fa-fw fa-remove"></i>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix">
                        {{ $data->links() }}
                    </div>
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->

        </div>

    </section>
    <!-- /.content -->
@endsection
