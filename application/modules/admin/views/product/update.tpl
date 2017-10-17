{extends file="templates/main.tpl"}
{block name="block_css"}
	<link rel="stylesheet" href="{$link_backend}css/datepicker.css" />
	<link rel="stylesheet" href="{$link_backend}css/uniform.css" />
	<link rel="stylesheet" href="{$link_backend}css/select2.css" />
	
	<script src="{base_url('/public/library')}/ckeditor/ckeditor.js"></script> 
{/block}

{block name="main_content"}
	<div class="container-fluid">
		<div class="row-fluid">
		    <div class="span12">
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
						
						{if isset($product)}
							<h5>{$product->name}</h5>
						{/if}
					</div>
					<div class="widget-content nopadding">
						<form enctype="multipart/form-data" method="post" action="" class="form-horizontal">
							<div class="control-group">
								<label class="control-label">Tên sản phẩm :</label>
								<div class="controls">
									<input type="text" name="name" class="span11" placeholder="Tên sản phẩm" value="{$product->name}" />
								</div>
							</div>
							{if isset($list_category)}
								<div class="control-group">
									<label class="control-label">Chọn danh mục</label>
									<div class="controls">
										<select name="catproduct" value="{$product->id}">
											{foreach $list_category as $item_cat}
												<option value="{$item_cat.id}">{$item_cat.name_cat}</option>
											{/foreach}
										</select>
									</div>
								</div>
							{/if}

							<div class="control-group">
								<label class="control-label">Giá sản phẩm :</label>
								<div class="controls">
									<input type="text" name="price" class="span11" placeholder="Giá sản phẩm" value="{$product->price}" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Ảnh đại diện</label>
								<div class="controls">
									<input type="file" name="images" value="{$product->img_avatar}" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Code sản phẩm :</label>
								<div class="controls">
									<input type="text" disabled name="code" class="span11" placeholder="Tiêu đề" value="{$product->code}" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Kích hoạt</label>
								<div class="controls">
									<select name="active" value="{$product->active}">
										<option value="1">Có</option>
										<option value="0">Không</option>
									</select>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Giới Thiệu vắn tắt</label>
								<div class="controls">
									<textarea name="content" class="span11" >{$product->content}</textarea>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Giới thiệu chính</label>
								<div class="controls">
									<textarea name="detail" class="textarea_editor span12" id="detail" rows="6" placeholder="Enter text ...">{$product->detail}</textarea>
								</div>
							</div>

							<div class="form-actions">
								<button type="submit" class="btn btn-success">Save</button>
								<button type="submit" class="btn btn-primary">Reset</button>
							</div>
						</form>
					</div>
				</div>
		    </div>
		</div>
	</div>
{/block}

{block name="block_script"}

	<script src="{$link_backend}js/bootstrap-datepicker.js"></script> 
	<script src="{$link_backend}js/masked.js"></script> 
	<script src="{$link_backend}js/jquery.uniform.js"></script>
	<script src="{$link_backend}js/select2.min.js"></script>
	<script src="{$link_backend}js/matrix.js"></script>
	<script src="{$link_backend}js/matrix.form_common.js"></script>
	<script src="{$link_backend}js/wysihtml5-0.3.0.js"></script> 
	<script src="{$link_backend}js/jquery.peity.min.js"></script> 
	<script src="{$link_backend}js/bootstrap-wysihtml5.js"></script> 
	<script>
		var editor = CKEDITOR.replace('detail',{
		language:'vi',
		filebrowserBrowseUrl :'{base_url("public/library/ckfinder/ckfinder.html")}',

		filebrowserImageBrowseUrl : '{base_url("public/library/ckfinder/ckfinder.html?type=Images")}',

		filebrowserFlashBrowseUrl : '{base_url("public/library/ckfinder/ckfinder.html?type=Flash")}',

		filebrowserUploadUrl : '{base_url("public/library/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files")}',

		filebrowserImageUploadUrl : '{base_url("public/library/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images")}',

		filebrowserFlashUploadUrl : '{base_url("public/library/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash")}',

		});
	</script>
{/block}