<!--sidebar-menu-->
<div id="sidebar"><a href="{base_url('admin')}" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="{base_url('admin')}"><i class="icon icon-home"></i> <span>Trang Quản Trị</span></a></li>
    <li><a href="{base_url('admin/charts')}"><i class="icon icon-signal"></i><span>Biểu Đồ</span></a></li>

    <li class="submenu">
      <a><i class="icon icon-shopping-cart"></i><span>Đơn Hàng</span><span class="label label-important">2</span></a>
      <ul>
        <li><a href="{base_url('admin/order')}">Đơn hàng chưa xử lí</a></li>
        <li><a href="{base_url('admin/order')}">Đơn hàng đã xử lí</a></li>
      </ul>
    </li>

    <li class="submenu">
      <a><i class="icon icon-th"></i><span>Danh Sách Hàng Hóa</span><span class="label label-important">2</span></a>
      <ul>
        <li><a href="{base_url('admin/product')}">Danh Sách Sản Phẩm</a></li>
        <li><a href="{base_url('admin/productcategory')}">Danh Mục Sản Phẩm</a></li>
      </ul>
    </li>

    <li class="submenu">
      <a><i class="icon icon-th-list"></i> <span>Tin Tức</span> <span class="label label-important">2</span></a>
      <ul>
        <li><a href="{base_url('admin/news')}">Danh Sách Tin</a></li>
        <li><a href="{base_url('admin/newscategory')}">Danh Mục Tin</a></li>
      </ul>
    </li>

    <li class="submenu"><a href="#"><i class="icon icon-user"></i><span>Quản lí</span> <span class="label label-important">2</span></a>
      <ul>
        <li><a href="{base_url('admin/customer')}">Khách Hàng</a></li>
        <li><a href="{base_url('admin/user')}">Quản Trị Trang</a></li>
      </ul>
    </li>

    <li class="submenu"><a href="#"><i class="icon icon-file"></i><span>Chức Năng Khác</span><span class="label label-important">1</span></a>
      <ul>
        <li><a href="{base_url('admin/cvadmin')}">Quản lí CV</a></li>
      </ul>
    </li>

    <li class="content"><span>Tổng Đơn Hàng Chưa Xử Lí</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 0%;" class="bar"></div>
      </div>
      <span class="percent">0%</span>
      <div class="stat">0 / 100 </div>
    </li>
    <li class="content"> <span>Tổng số tin mới</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 0%;" class="bar"></div>
      </div>
      <span class="percent">0%</span>
      <div class="stat">0 / 100</div>
    </li>
  </ul>
</div>
<!--sidebar-menu-->