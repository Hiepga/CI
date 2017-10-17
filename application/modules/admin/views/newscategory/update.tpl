
{extends file="templates/main.tpl"}

{block name="block_css"}
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
						{if isset($content_cat)}
							<h5>{$content_cat->name_cat}</h5>
						{/if}
					</div>
					<div class="widget-content nopadding">
						<form enctype="multipart/form-data" method="post" action="" class="form-horizontal">
							<div class="control-group">
								<label class="control-label">Danh mục :</label>
								<div class="controls">
									<input type="text" name="name_cat" class="span11" placeholder="Tiêu đề" value="{$content_cat->name_cat}" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Thuộc Mục Lớn</label>
								<div class="controls">
									<select name="parent_id" value="{$parent_item->id}">
										<option value="0">Không thuộc danh mục nào</option>
										{foreach $list_category as $item}
											<option value="{$item.id}">{$item.name_cat}</option>
										{/foreach}
									</select>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Kích Hoạt</label>
								<div class="controls">
									<select name="active" value="{$parent_item->id}">
										<option value="1">Kích hoạt</option>
										<option value="0">Không Kích hoạt</option>
									</select>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Mô tả</label>
								<div class="controls">
									<textarea name="content_cat" class="span11" >{$content_cat->content_cat}</textarea>
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
<!--main-container-part-->
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