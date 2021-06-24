<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/backend/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <li>
                <a href="{{ route('admin.category.index') }}">
                    <i class="fa fa-th"></i> <span>QL Danh Mục</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.product.index') }}">
                    <i class="fa fa-th"></i> <span>QL Sản Phẩm</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.user.index') }}">
                    <i class="fa fa-th"></i> <span>QL Người Dùng</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class="fa fa-th"></i> <span>QL Nhà Cung Cấp</span>
                </a>
            </li>

            <li>
                <a href="">
                    <i class="fa fa-th"></i> <span>Cấu Hình Website</span>
                </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
