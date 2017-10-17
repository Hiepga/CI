
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
					<div class="widget-title">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#tab1">Hồ Sơ</a></li>
							<li><a data-toggle="tab" href="#tab2">Công Việc</a></li>
							<li><a data-toggle="tab" href="#tab3">Học Tập</a></li>
							<li><a data-toggle="tab" href="#tab4">Dự án</a></li>
						</ul>
					</div>
					<form enctype="multipart/form-data" method="post" action="" class="form-horizontal">
						<div class="widget-content tab-content">
							<div id="tab1" class="tab-pane active">
								<div class="widget-content nopadding">
									<div class="control-group">
										<label class="control-label">Họ Tên: </label>
										<div class="controls">
											<input name="hoten" type="text" class="span11" placeholder="Họ Tên" value="{$content_cv->name}" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Ngày sinh: </label>
										<div class="controls">
											<input type="text" data-date="{$content_cv->birthday}" data-date-format="dd-mm-yyyy" value="{$content_cv->birthday}" class="datepicker span11">
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Avatar</label>
										<div class="controls">
											<input type="file" name="images" id="image" value="{$content_cv->avatar}">
											<img src="{base_url('public/static/uploads/cv1/')}{$content_cv->avatar}" alt="" width="50" height="50">
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Nghề Ứng Tuyển: </label>
										<div class="controls">
											<input name="ngheungtuyen" type="text" class="span11" placeholder="Nghề Ứng Tuyển" value="{$content_cv->job}" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Email: </label>
										<div class="controls">
											<input name="email" type="text"  class="span11" placeholder="Email" value="{$content_cv->email}" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Website: </label>
										<div class="controls">
											<input name="website" type="text" class="span11" placeholder="Số Điện Thoại" value="{$content_cv->website}" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Số Điện thoại: </label>
										<div class="controls">
											<input name="phone" type="text" class="span11" placeholder="Số Điện Thoại" value="{$content_cv->phone}" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Địa chỉ: </label>
										<div class="controls">
											<input name="address" type="text" class="span11" placeholder="Địa Chỉ" value="{$content_cv->address}" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Kích Hoạt</label>
										<div class="controls">
											<select name="active" value="{$content->active}">
												<option value="1">Có</option>
												<option value="0">Không</option>
											</select>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Nội dung: </label>
										<div class="controls">
											<textarea name="introduce" class="textarea_editor span11" id="introduce" rows="6" placeholder="Enter text ...">{$content_cv->introduce}</textarea>
										</div>
									</div>
								</div>
							</div>

							<div id="tab2" class="tab-pane">
							</div>

							<div id="tab3" class="tab-pane">
							</div>

							<div id="tab4" class="tab-pane">
								
							</div>

							<div class="form-actions">
								<button type="submit" class="btn btn-success">Lưu</button>
								<button type="submit" class="btn btn-danger">Thoát</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<!--main-container-part-->
{/block}

{block name="block_script"}
	<script>
		var editor = CKEDITOR.replace('introduce',{
		language:'vi',
		filebrowserBrowseUrl :'{base_url("public/library/ckfinder/ckfinder.html")}',

		filebrowserImageBrowseUrl : '{base_url("public/library/ckfinder/ckfinder.html?type=Images")}',

		filebrowserFlashBrowseUrl : '{base_url("public/library/ckfinder/ckfinder.html?type=Flash")}',

		filebrowserUploadUrl : '{base_url("public/library/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files")}',

		filebrowserImageUploadUrl : '{base_url("public/library/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images")}',

		filebrowserFlashUploadUrl : '{base_url("public/library/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash")}',

		});

	// ADD DATA FOR EXPERIENCE
		var htmlexperience	  = '<div class="widget-content content_tab nopadding">';
			htmlexperience	  += '<div class="control-group">';			
				htmlexperience	  += '<label class="control-label">Công Ty: </label>';
				htmlexperience	  += '<div class="controls">';
					htmlexperience	  += '<input type="text" name="name_company[]" id="name_company" class="span11 " placeholder="Công ty" value="" onchange="addEventTab($(this));" />';
				htmlexperience	  += '</div>';
			htmlexperience   += '</div>';
			htmlexperience	  += '<div class="control-group">';			
				htmlexperience	  += '<label class="control-label">Vị trí: </label>';
				htmlexperience	  += '<div class="controls">';
					htmlexperience	  += '<input type="text" value="" name="name_job[]" id="name_job" class="span11" placeholder="vị trí" value="" />';
				htmlexperience	  += '</div>';
			htmlexperience   += '</div>';
			htmlexperience	  += '<div class="control-group">';			
				htmlexperience	  += '<label class="control-label">Ngày bắt đầu: </label>';
				htmlexperience	  += '<div class="controls">';
					htmlexperience  += '<div  data-date="12-02-2012" class="input-append date datepicker">';
						htmlexperience	  += '<input type="text" value="" name="date_begin[]" id="date_begin" data-date-format="mm-dd-yyyy" class="span11" >';
						htmlexperience	  += '<span class="add-on"><i class="icon-th"></i></span>';
					htmlexperience	  += '</div>';
				htmlexperience	  += '</div>';
			htmlexperience   += '</div>';
			htmlexperience	  += '<div class="control-group">';			
				htmlexperience	  += '<label class="control-label">Ngày kết thúc: </label>';
				htmlexperience	  += '<div class="controls">';
					htmlexperience	  += '<div  data-date="12-02-2012" class="input-append date datepicker">';
						htmlexperience	  += '<input type="text" value="" name="date_end[]" id="date_end" data-date-format="mm-dd-yyyy" class="span11" >';
						htmlexperience	  += '<span class="add-on"><i class="icon-th"></i></span>';
					htmlexperience	  += '</div>';
				htmlexperience	  += '</div>';
			htmlexperience   += '</div>';
			htmlexperience	  += '<div class="control-group">';			
				htmlexperience	  += '<label class="control-label">Mô Tả Công Việc: </label>';
				htmlexperience	  += '<div class="controls">';
					htmlexperience	  += '<textarea name="describe[]" class="textarea_editor span11" rows="6" placeholder="Enter text ..."></textarea>';
				htmlexperience	  += '</div>';
			htmlexperience   += '</div>';
		htmlexperience	  += '</div>';

		(jQuery)(function(){
			{if isset($experience)}	

				{foreach $experience as $item}
					(jQuery)("#tab2").append(htmlexperience);

					(jQuery)("#tab2").children("div.content_tab").last().children('div.control-group').children('div.controls').children('input#name_company').val('{$item.company_work}');

					(jQuery)("#tab2").children("div.content_tab").last().children('div.control-group').children('div.controls').children('input#name_job').val('{$item.position}');

					(jQuery)("#tab2").children("div.content_tab").last().children('div.control-group').children('div.controls').children('div.input-append').children('input#date_begin').val('{$item.time_begin}');

					(jQuery)("#tab2").children("div.content_tab").last().children('div.control-group').children('div.controls').children('div.input-append').children('input#date_end').val('{$item.time_end}');

					(jQuery)("#tab2").children("div.content_tab").last().children('div.control-group').children('div.controls').children('textarea.textarea_editor').val('{$item.describe}');
				{/foreach}
			{/if}
		})
	// END


	// ADD DATA FOR EDUCATION
		var htmleducation	  = '<div class="widget-content content_tab nopadding">';
			htmleducation	  += '<div class="control-group">';			
				htmleducation	  += '<label class="control-label">Trường: </label>';
				htmleducation	  += '<div class="controls">';
					htmleducation	  += '<input type="text" name="name_school[]" id="name_school" class="span11 " placeholder="Trường" value="" onchange="addEventTab($(this));" />';
				htmleducation	  += '</div>';
			htmleducation   += '</div>';
			htmleducation	  += '<div class="control-group">';			
				htmleducation	  += '<label class="control-label">Ngành: </label>';
				htmleducation	  += '<div class="controls">';
					htmleducation	  += '<input type="text" value="" name="name_study[]" id="name_study" class="span11" placeholder="Ngành" value="" />';
				htmleducation	  += '</div>';
			htmleducation   += '</div>';
			htmleducation	  += '<div class="control-group">';			
				htmleducation	  += '<label class="control-label">Ngày bắt đầu: </label>';
				htmleducation	  += '<div class="controls">';
					htmleducation	  += '<div  data-date="12-02-2012" class="input-append date datepicker">';
						htmleducation	  += '<input type="text" value="" name="date_begin_study[]" id="date_begin_study" data-date-format="mm-dd-yyyy" class="span11" >';
						htmleducation	  += '<span class="add-on"><i class="icon-th"></i></span>';
					htmleducation	  += '</div>';
				htmleducation	  += '</div>';
			htmleducation   += '</div>';
			htmleducation	  += '<div class="control-group">';			
				htmleducation	  += '<label class="control-label">Ngày kết thúc: </label>';
				htmleducation	  += '<div class="controls">';
					htmleducation	  += '<div  data-date="12-02-2012" class="input-append date datepicker">';
						htmleducation	  += '<input type="text" value="" name="date_end_study[]" id="date_end_study" data-date-format="mm-dd-yyyy" class="span11" >';
						htmleducation	  += '<span class="add-on"><i class="icon-th"></i></span>';
					htmleducation	  += '</div>';
				htmleducation	  += '</div>';
			htmleducation   += '</div>';
			htmleducation	  += '<div class="control-group">';			
				htmleducation	  += '<label class="control-label">Mô Tả Công Việc: </label>';
				htmleducation	  += '<div class="controls">';
					htmleducation	  += '<textarea name="describe_study[]" class="textarea_editor span11" rows="6" placeholder="Enter text ..."></textarea>';
				htmleducation	  += '</div>';
			htmleducation   += '</div>';
		htmleducation	  += '</div>';

		(jQuery)(function(){
			{if isset($education)}	

				{foreach $education as $item_education}
					(jQuery)("#tab3").append(htmleducation);

					(jQuery)("#tab3").children("div.content_tab").last().children('div.control-group').children('div.controls').children('input#name_school').val('{$item_education.school}');

					(jQuery)("#tab3").children("div.content_tab").last().children('div.control-group').children('div.controls').children('input#name_study').val('{$item_education.study}');

					(jQuery)("#tab3").children("div.content_tab").last().children('div.control-group').children('div.controls').children('div.input-append').children('input#date_begin_study').val('{$item_education.time_begin}');

					(jQuery)("#tab3").children("div.content_tab").last().children('div.control-group').children('div.controls').children('div.input-append').children('input#date_end_study').val('{$item_education.time_end}');

					(jQuery)("#tab3").children("div.content_tab").last().children('div.control-group').children('div.controls').children('textarea.textarea_editor').val('{$item_education.describe}');
				{/foreach}
			{/if}
		})
	// END


	// ADD DATA FOR PROJECT
		var htmlproject;
		(jQuery)(function(){
			{if isset($project)}
			    var i = 0 ;	
				{foreach $project as $item_project}
					htmlproject	  = '<div class="widget-content content_tab nopadding">';
						htmlproject	  += '<div class="control-group">';			
							htmlproject	  += '<label class="control-label">Tên dự án: </label>';
							htmlproject	  += '<div class="controls">';
								htmlproject	  += '<input type="text" name="name_project[]" id="name_project" class="span11" placeholder="Tên dự án" value="{$item_project.name_project}" onchange="addEventTab($(this));" />';
							htmlproject	  += '</div>';
						htmlproject   += '</div>';
						htmlproject	  += '<div class="control-group">';			
							htmlproject	  += '<label class="control-label">Link dự án: </label>';
							htmlproject	  += '<div class="controls">';
								htmlproject	  += '<input type="text" name="link_project[]" id="link_project" class="span11" placeholder="Link dự án" value="{$item_project.link_project}" />';
							htmlproject	  += '</div>';
						htmlproject   += '</div>';

						htmlproject	  += '<div class="control-group">';			
							htmlproject	  += '<label class="control-label">Avatar Project: </label>';
							htmlproject	  += '<div class="controls">';
								htmlproject	  += '<input type="file" name="avatar_project'+i+'" id="avatar_project'+i+'" value="{$item_project.avatar_project}">';
								htmlproject	  += '<img src="{base_url('public/static/uploads/cv1/')}{$item_project.avatar_project}" alt="" width="50" height="50">';
							htmlproject	  += '</div>';
						htmlproject   += '</div>';

						htmlproject	  += '<div class="control-group">';			
							htmlproject	  += '<label class="control-label">Ảnh chi tiết: </label>';
							htmlproject	  += '<div class="controls">';
								htmlproject	  += '<input type="file" name="detailed_pic'+i+'" id="detailed_pic'+i+'" value="{$item_project.detailed_pic}">';
								htmlproject	  += '<img src="{base_url('public/static/uploads/cv1/')}{$item_project.detailed_pic}" alt="" width="50" height="50">';
							htmlproject	  += '</div>';
						htmlproject   += '</div>';

						htmlproject	  += '<div class="control-group">';			
							htmlproject	  += '<label class="control-label">Mô Tả Dự Án: </label>';
							htmlproject	  += '<div class="controls">';
								htmlproject	  += '<textarea name="describe_project[]" class="textarea_editor span11" rows="6" placeholder="Enter text ...">{$item_project.describe_project}</textarea>';
							htmlproject	  += '</div>';
						htmlproject   += '</div>';
					htmlproject	  += '</div>';
			
					(jQuery)("#tab4").append(htmlproject);
					i++;
				{/foreach}
			{/if}
		})
	// END

	</script>
	<script src="{$link_backend}js/bootstrap-datepicker.js"></script> 
	<script src="{$link_backend}js/masked.js"></script> 
	<script src="{$link_backend}js/jquery.uniform.js"></script>
	<script src="{$link_backend}js/select2.min.js"></script>
	<script src="{$link_backend}js/matrix.js"></script>
	<script src="{$link_backend}js/matrix.form_common.js"></script>
	<script src="{$link_backend}js/wysihtml5-0.3.0.js"></script> 
	<script src="{$link_backend}js/jquery.peity.min.js"></script> 
	<script src="{$link_backend}js/bootstrap-wysihtml5.js"></script> 

{/block}