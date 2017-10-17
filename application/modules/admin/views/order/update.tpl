{extends file="templates/main.tpl"}

{block name="block_css"}
	<link rel="stylesheet" href="{$link_backend}css/uniform.css" />
	<link rel="stylesheet" href="{$link_backend}css/select2.css" />
	
	<script src="{base_url('/public/library')}/ckeditor/ckeditor.js"></script> 
{/block}


{block name="main_content"}

	<div class="container-fluid"><hr>
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"> <i class="icon-briefcase"></i> </span>
						<h5 >Company Name</h5>
					</div>
					<div class="widget-content">
						<div class="row-fluid">
							<div class="span6">
							<table class="">
								<tbody>
									<tr>
										<td><h4>Tên Khách Hàng</h4></td>
									</tr>
								</tbody>
							</table>
							</div>
							<div class="span6">
								<table class="table table-bordered table-invoice">
									<tbody>
										
										<tr>
											<td>Địa chỉ:</td>
											<td><strong>501 Mafia Street., washington, NYNC 3654</strong></td>
										</tr>
										<tr>
											<td class="width30">Số điện thoại:</td>
											<td class="width70"><strong>+84984347435</strong></td>
										</tr>
										<tr>
											<td class="width30">Email:</td>
											<td class="width70"><strong>abc@gmail.com</strong></td>
										</tr>
										<tr>
											<td>Ngày đặt hàng:</td>
											<td><strong>April 01, 2013</strong></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row-fluid">
						<div class="span12">
							<table class="table table-bordered table-invoice-full">
								<thead>
									<tr>
										<th class="head0">STT</th>
										<th class="head1">Sản phẩm</th>
										<th class="head0 right">Số lượng</th>
										<th class="head1 right">Giá</th>
										<th class="head0 right">Tổng</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>cà rốt</td>
										<td class="right">2</td>
										<td class="right">$150</td>
										<td class="right"><strong>$300</strong></td>
									</tr>
									<tr>
										<td>2</td>
										<td>dưa chuột</td>
										<td class="right">1</td>
										<td class="right">$1,200</td>
										<td class="right"><strong>$1,2000</strong></td>
									</tr>
									<tr>
										<td>3</td>
										<td>cà chua</td>
										<td class="right">2</td>
										<td class="right">$850</td>
										<td class="right"><strong>$1,700</strong></td>
									</tr>
								</tbody>
							</table>
							<div class="pull-right">
								<h4><span>Tổng giá:</span> $7,650.00</h4>
								<br>
								<a class="btn btn-primary btn-large pull-right" href="">Pay Invoice</a> </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

{/block}

{block name="block_script"}
	<script src="{$link_backend}js/masked.js"></script> 
	<script src="{$link_backend}js/jquery.uniform.js"></script>
	<script src="{$link_backend}js/select2.min.js"></script>
	<script src="{$link_backend}js/matrix.js"></script>
	<script src="{$link_backend}js/matrix.form_common.js"></script>
	<script src="{$link_backend}js/wysihtml5-0.3.0.js"></script> 
	<script src="{$link_backend}js/jquery.peity.min.js"></script> 
{/block}