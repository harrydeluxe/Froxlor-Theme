$header
	<article>
		<header>
			<h2>
				{$title}
			</h2>
		</header>

		<section class="fullform bradiusodd">

			<form rel="submit" class="form-inline form-delacap" action="{$linker->getLink(array('section' => 'admins'))}" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>

					<table class="table table-bordered table-striped">
						{$admin_add_form}
					</table>

					<p style="display: none;">
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="action" value="$action" />
						<input type="hidden" name="send" value="send" />
					</p>
				</fieldset>
			</form>

		</section>

	</article>
	<br />
	<article>
    	<section class="alert alert-info">
				<span style="color:#ff0000;">*</span>: {$lng['admin']['valuemandatory']}<br />
				<span style="color:#ff0000;">**</span>: {$lng['admin']['valuemandatorycompany']}
		</section>
	</article>
$footer
