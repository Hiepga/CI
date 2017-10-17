{extends file="templates/main.tpl"}
{block name="block_css"}
    <link rel="stylesheet" href="{$link_backend}css/uniform.css" />
	<link rel="stylesheet" href="{$link_backend}css/select2.css" />
{/block}

{block name="main_content"}
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Khách Hàng</a> </div>
			<h1>Khách Hàng</h1>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"><i class="icon-time"></i></span>
							<h5>To Do List</h5>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-striped table-bordered data-table">
								<thead>
									<tr>
										<th>STT</th>
										<th>Tên</th>
										<th>Địa chỉ</th>
										<th>Chức năng</th>
									</tr>
								</thead>
								<tbody>
									{assign var="i" value="1"}
									{for $foo=1 to 5}
										<tr>
											<td class="taskDesc">{$i}</td>
											<td class="taskDesc">Nguyễn Văn A</td>
											<td class="taskDesc">Nghệ An</td>
											<td class="taskOptions">
												<a href="{base_url()}admin/cvadmin/update/{$item->id_cv}" class="tip-top" data-original-title="Update"><i class="icon-ok"></i></a> 
												<a href="{base_url()}admin/cvadmin/update/{$item->id_cv}" class="tip-top" data-original-title="Delete"><i class="icon-remove"></i></a>
											</td>
										</tr>
										{$i++}
									{/for}
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
{/block}
