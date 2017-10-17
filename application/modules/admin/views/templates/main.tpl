<!DOCTYPE html>
<html lang="en">
<head>
	{include file='templates/head.tpl'}

	

	<link rel="stylesheet" href="{$link_backend}css/bootstrap.min.css" />
	<link rel="stylesheet" href="{$link_backend}css/bootstrap-responsive.min.css" />
	

	{block name="block_css"}{/block}
	<link rel="stylesheet" href="{$link_backend}css/matrix-style.css" />
	<link rel="stylesheet" href="{$link_backend}css/matrix-media.css" />
	<link rel="stylesheet" href="{$link_backend}css/bootstrap-wysihtml5.css" />
</head>
<body>
	{include file='templates/header.tpl'}
	
	{include file='templates/sidebar.tpl'}

	<div id="content">
		{if isset($name_table)}
			<div id="content-header">
				<div id="breadcrumb">
					<a href="{base_url('admin')}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> 
					<a href="{$link}" class="current">{$name_table}</a> 
					{if isset($action_tit)}
						<a href="" class="current">{$action_tit}</a>
					{/if} 
				</div>
				{if isset($action_tit)}
					<h1>{$action_tit}</h1>
				{else}
					<h1>{$name_table}</h1>
				{/if}
			</div>
		{/if}
		{block name="main_content"}{/block}
	</div>

	

	{include file='templates/footer.tpl'}
	
	
	<script src="{$link_backend}js/jquery.min.js"></script> 
	<script src="{$link_backend}js/jquery.ui.custom.js"></script> 
	<script src="{$link_backend}js/bootstrap.min.js"></script> 

	{block name="block_script"}{/block}

	{include file='templates/footer_script.tpl'}

	{block name="message"}
		<script>
			{if isset($message)}
				$(document).ready(function(){
					$.gritter.add({
						title:	'Thông báo',
						text:	'{$message}.',
						image: 	"{$link_backend}img/demo/envelope.png",
						sticky: false
					});
				});
			{/if}
		</script>
	{/block}
	
	
</body>