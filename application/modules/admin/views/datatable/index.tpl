{extends file="templates/main.tpl"}

{block name="block_css"}
	<link rel="stylesheet" href="{base_url('public/library/datatables/')}css/dataTables.bootstrap.css" />
{/block}

{block name="main_content"}
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-time"></i></span>
						<h5>{$name_table}</h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-striped table-bordered data-table" id="data-table">
							<thead>
								<tr>
									{foreach $datatables.init_data as $item }
										<th width="{$item.width}">{$item.label} </th>
									{/foreach }
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
{/block}

{block name="block_script"}
	<script src="{base_url('public/library/datatables/')}js/jquery.dataTables.js"></script> 
	<script src="{base_url('public/library/datatables/')}js/dataTables.bootstrap.js"></script> 
	<script src="{base_url('public/library/datatables/')}js/jquery.dataTables.columnFilter.js"></script> 

	<script type="text/javascript">
		$(function () {
			$('#data-table').dataTable({
				"sPaginationType": "full_numbers",
				"sPaginationType": "bootstrap",
				"bProcessing": true,
				"bServerSide": true,
				"sAjaxSource": "{$datatables.json_data}",		
				"fnServerData": function( sUrl, aoData, fnCallback ) {
					$.ajax( {
						"url": sUrl,
						"data": aoData,
						"type": "POST",
						"success": fnCallback,
						"dataType": "jsonp",
						"cache": false
					} );
				}
			});
		});


		function delete_confirm(url){
			$("button[my-type=delete_confirm]").attr('onclick', 'window.location="'+url+'"');
			return true;
		}
	</script>
{/block}