{extends file="template.tpl"}

{block name="content"}
	<section id="content_news">
		<div class="page-content">
			<div class="content_style">
				{if isset($detail)}
					<div class="title">
						<h4>{$detail->tittle}</h4>
					</div>
					<div class="detail_style">
						{$detail->detail}
					</div>
				{else}
					<p>Không tồn tài tin này</p>
				{/if}
			</div>
		</div>
	</section>
{/block}