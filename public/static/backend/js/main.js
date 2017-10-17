var htmlTab	  = '<div class="widget-content content_tab nopadding">';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Công Ty: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<input type="text" name="name_company[]" id="name_company" class="span11 " placeholder="Công ty" value="" onchange="addEventTab($(this));" />';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Vị trí: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<input type="text" value="" name="name_job[]" id="name_job" class="span11" placeholder="vị trí" value="" />';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Ngày bắt đầu: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<div  data-date="12-02-2012" class="input-append date datepicker">';
				htmlTab	  += '<input type="text" value="" name="date_begin[]" id="date_begin" data-date-format="mm-dd-yyyy" class="span11" >';
				htmlTab	  += '<span class="add-on"><i class="icon-th"></i></span>';
			htmlTab	  += '</div>';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Ngày kết thúc: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<div  data-date="12-02-2012" class="input-append date datepicker">';
				htmlTab	  += '<input type="text" value="" name="date_end[]" id="date_end" data-date-format="mm-dd-yyyy" class="span11" >';
				htmlTab	  += '<span class="add-on"><i class="icon-th"></i></span>';
			htmlTab	  += '</div>';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Mô Tả Công Việc: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<textarea name="describe[]" class="textarea_editor span11" rows="6" placeholder="Enter text ..."></textarea>';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
htmlTab	  += '</div>';

(jQuery)(function(){
	{if isset($experience)}	
		{foreach $experience as $item}
			(jQuery)("#tab_experience").append(htmlTab);

			(jQuery)("#tab_experience").children("div.content_tab").last().children('div.control-group').children('div.controls').children('input#name_company').val('{$item->company_work}');

			(jQuery)("#tab_experience").children("div.content_tab").last().children('div.control-group').children('div.controls').children('input#name_job').val('{$item->position}');

			(jQuery)("#tab_experience").children("div.content_tab").last().children('div.control-group').children('div.controls').children('div.input-append').children('input#date_begin').val('{$item->time_begin}');

			(jQuery)("#tab_experience").children("div.content_tab").last().children('div.control-group').children('div.controls').children('div.input-append').children('input#date_end').val('{$item->time_end}');

			(jQuery)("#tab_experience").children("div.content_tab").last().children('div.control-group').children('div.controls').children('textarea.textarea_editor').val('{$item->describe}');
		{/foreach}
	{/if}
})



var htmlTab	  = '<div class="widget-content content_tab nopadding">';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Trường học: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<input type="text" name="name_school[]" id="name_school" class="span11 " placeholder="Trường đã học" value="" onchange="addEventTab($(this));" />';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Ngành học: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<input type="text" value="" name="name_study[]" id="name_study" class="span11" placeholder="Ngành học" value="" />';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Ngày bắt đầu: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<div  data-date="12-02-2012" class="input-append date datepicker">';
				htmlTab	  += '<input type="text" value="" name="date_begin[]" id="date_begin" data-date-format="mm-dd-yyyy" class="span11" >';
				htmlTab	  += '<span class="add-on"><i class="icon-th"></i></span>';
			htmlTab	  += '</div>';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Ngày kết thúc: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<div  data-date="12-02-2012" class="input-append date datepicker">';
				htmlTab	  += '<input type="text" value="" name="date_end[]" id="date_end" data-date-format="mm-dd-yyyy" class="span11" >';
				htmlTab	  += '<span class="add-on"><i class="icon-th"></i></span>';
			htmlTab	  += '</div>';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
	htmlTab	  += '<div class="control-group">';			
		htmlTab	  += '<label class="control-label">Mô Tả: </label>';
		htmlTab	  += '<div class="controls">';
			htmlTab	  += '<textarea name="describe[]" class="textarea_editor span11" rows="6" placeholder="Enter text ..."></textarea>';
		htmlTab	  += '</div>';
	htmlTab   += '</div>';
htmlTab	  += '</div>';

(jQuery)(function(){
	{if isset($education)}	
		{foreach $education as $item_education}
			(jQuery)("#tab_education").append(htmlTab);

			(jQuery)("#tab_education").children("div.content_tab").last().children('div.control-group').children('div.controls').children('input#name_school').val('{$item_education->school}');

			(jQuery)("#tab_education").children("div.content_tab").last().children('div.control-group').children('div.controls').children('input#name_study').val('{$item_education->study}');

			(jQuery)("#tab_education").children("div.content_tab").last().children('div.control-group').children('div.controls').children('div.input-append').children('input#date_begin').val('{$item_education->time_begin}');

			(jQuery)("#tab_education").children("div.content_tab").last().children('div.control-group').children('div.controls').children('div.input-append').children('input#date_end').val('{$item_education->time_end}');

			(jQuery)("#tab_education").children("div.content_tab").last().children('div.control-group').children('div.controls').children('textarea.textarea_editor').val('{$item_education->describe}');
		{/foreach}
	{/if}
})