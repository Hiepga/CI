
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
						{if isset($user)}
							<h5>{$user->username}</h5>
						{/if}
					</div>
					<div class="widget-content nopadding">
						<form enctype="multipart/form-data" method="post" action="" class="form-horizontal">
							<div class="control-group">
								<label class="control-label">Quản trị viên :</label>
								<div class="controls">
									<input type="text" name="name_cat" class="span11" placeholder="Quản trị viên" value="{$user->username}" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Email :</label>
								<div class="controls">
									<input type="text" name="name_cat" class="span11" placeholder="Email" value="{$user->email}" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Password</label>
								<div class="controls">
									<input id="password" type="password" name="password" value="{$user->password}" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Nhập lại Password</label>
								<div class="controls">
									<input id="password2" type="password" name="password2" value="{$user->password}" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Kích Hoạt</label>
								<div class="controls">
									<select name="active" value="{$user->id}">
										<option value="1">Kích hoạt</option>
										<option value="0">Không Kích hoạt</option>
									</select>
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
	<script src="{$link_backend}js/jquery.validate.js"></script> 
	<script src="{$link_backend}js/matrix.js"></script>
	<script src="{$link_backend}js/matrix.form_common.js"></script>
	<script src="{$link_backend}js/wysihtml5-0.3.0.js"></script> 
	<script src="{$link_backend}js/jquery.peity.min.js"></script> 
{/block}