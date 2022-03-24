<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended_olp.tpl"}
<!-- <div class="row">
	[HEADER]
</div> -->
<style>
	.paralax {
		background-attachment: fixed;
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
	}
</style>
<div>
	<div class="row">
		<div class="col-xs-5 d-block position-fixed h-100">
			<div style="position: fixed; height: 100%; background-color: #000; padding: 1.5rem" class="col-xs-5">
				<div>
					<a><img src='{LOGO_SRC}' /></a>
					<h1 class="text-white">{SITE_NAME}</h1>
				</div>
				<div>
					[MENU]
				</div>
			</div>
		</div>
		<div class="col-xs-19">
			<div>
				<div>
					<div class="text-white text-center paralax"
						style="padding:3rem; height: 300px; background-size: cover; background-position: center center; background-image: url({BANNER_SRC});">
						<div class=""
							style="border: 4px solid #ffffff; padding: 3rem; height: 100%;width: 100%;align-self: center;display: flex; flex-direction: column; justify-content: center;">
							<h1 class="" style="font-weight: 700 !important; font-size: 32px;">{SITE_DESCRIPTION}</h1>
						</div>
					</div>
				</div>
				<div>
					{MODULE_CONTENT}
				</div>
				[FOOTER]
			</div>
		</div>
	</div>
</div>
</div>
<!-- {FILE "footer_extended_olp.tpl"}
{FILE "footer_only.tpl"} -->
<!-- END: main -->