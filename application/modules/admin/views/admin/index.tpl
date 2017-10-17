{extends file="templates/main.tpl"} 
{block name="main_content"}
  <!--main-container-part-->

<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lg span3"> <a href="{base_url('admin/charts')}"> <i class="icon-signal"></i> Biểu đồ</a> </li>
        <li class="bg_ly"> <a href="{base_url('admin/charts')}"> <i class="icon-inbox"></i><span class="label label-success">101</span> Đơn Đặt Hàng </a> </li>
        <li class="bg_lb"> <a href="{base_url('admin/product/index/add')}"> <i class="icon-pencil"></i>Thêm Sản Phẩm mới</a> </li>
        <li class="bg_lo"> <a href="{base_url('admin/product')}"> <i class="icon-th"></i> Sản Phẩm</a> </li>
        <li class="bg_lg"> <a href="{base_url('admin/news')}"> <i class="icon-th-list"></i> Bài Viết</a> </li>

      </ul>
    </div>
<!--End-Action boxes-->    

<!--Chart-box-->    
    <div class="row-fluid">
      <div class="widget-box">
        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
          <h5>Site Analytics</h5>
        </div>
        <div class="widget-content" >
          <div class="row-fluid">
            <div class="span9">
              <div class="chart"></div>
            </div>
            <div class="span3">
              <ul class="site-stats">
                <li class="bg_lh"><i class="icon-user"></i> <strong>25</strong> <small>Lượt View mới</small></li>
                <li class="bg_lh"><i class="icon-plus"></i> <strong>{$total_product}</strong> <small>Sản Phẩm</small></li>
                <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>656</strong> <small>Đơn Đặt Hàng</small></li>
                <li class="bg_lh"><i class="icon-tag"></i> <strong>{$total_news}</strong> <small>Bài Viết</small></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--End-Chart-box--> 
    <div class="row-fluid">
      <div class="span6">
      <!-- Begin Post News -->
        {if isset($all_news)}
        <div class="widget-box">
          <div class="widget-title bg_ly" data-toggle="collapse" href="#collapseG2"><span class="icon"><i class="icon-chevron-down"></i></span>
            <h5>Sản phẩm mới</h5>
          </div>
          <div class="widget-content nopadding collapse in" id="collapseG2">
            <ul class="recent-posts">
              {foreach $all_product as $item_product}
              <li>
                <div class="user-thumb"> <img width="40" height="40" alt="User" src="{base_url('public/static/uploads/product/')}{$item_product->img_avatar}"> </div>
                <div class="article-post"> 
                  <span class="user-info"> By: john Deo / Date: {$item_product->date_update|date_format} </span>
                  <p><a href="#">{$item_product->name}</a> </p>
                </div>
              </li>
              {/foreach}

              <li>
                <button class="btn btn-warning btn-mini">View All</button>
              </li>
            </ul>
          </div>
        </div>
        {/if}
      <!-- End -->

      <!-- Begin New News -->
        {if isset($all_news)}
        <div class="widget-box">
          <div class="widget-title bg_lo"  data-toggle="collapse" href="#collapseG3" > <span class="icon"> <i class="icon-chevron-down"></i> </span>
            <h5>Bài Viết Mới</h5>
          </div>
          <div class="widget-content nopadding updates collapse in" id="collapseG3">
            {foreach $all_news as $item_news}
              <div class="new-update clearfix"><i class="icon-ok-sign"></i>
                <div class="update-done">
                  <a title="" href="{base_url('admin')}"><strong>{$item_news->tittle}</strong></a> 
                  <span>{$item_news->content|truncate:100:"...":true}</span> 
                </div>
                <div class="update-date">{$item_news->date_update|date_format}</div>
              </div>
            {/foreach}
          </div>
        </div>
        {/if}
      <!-- End -->
      </div>
      <div class="span6">

      <!-- Begin New Shopping -->
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
            <h5>Đơn Hàng mới</h5>
          </div>
          <div class="widget-content">
            <div class="todo">
              <ul>
                  {for $foo=1 to 5}
                  <li class="clearfix">
                    <div class="txt"> Manage all the orders <span class="date badge badge-important">12.03.2013</span> </div>
                    <div class="pull-right"> 
                      <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> 
                      <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> 
                    </div>
                  </li>
                  {/for}
              </ul>
            </div>
          </div>
        </div>
      <!-- End -->

        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
            <h5>Progress Box</h5>
          </div>
          <div class="widget-content">
            <ul class="unstyled">
              <li> <span class="icon24 icomoon-icon-arrow-up-2 green"></span> 81% Clicks <span class="pull-right strong">567</span>
                <div class="progress progress-striped ">
                  <div style="width: 81%;" class="bar"></div>
                </div>
              </li>
              <li> <span class="icon24 icomoon-icon-arrow-up-2 green"></span> 72% Uniquie Clicks <span class="pull-right strong">507</span>
                <div class="progress progress-success progress-striped ">
                  <div style="width: 72%;" class="bar"></div>
                </div>
              </li>
              <li> <span class="icon24 icomoon-icon-arrow-down-2 red"></span> 53% Impressions <span class="pull-right strong">457</span>
                <div class="progress progress-warning progress-striped ">
                  <div style="width: 53%;" class="bar"></div>
                </div>
              </li>
              <li> <span class="icon24 icomoon-icon-arrow-up-2 green"></span> 3% Online Users <span class="pull-right strong">8</span>
                <div class="progress progress-danger progress-striped ">
                  <div style="width: 3%;" class="bar"></div>
                </div>
              </li>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </div>


<!--end-main-container-part-->
{/block}