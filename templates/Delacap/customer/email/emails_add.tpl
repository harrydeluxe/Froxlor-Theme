$header
<article>
	<if $domains == ''>
        <div class="alert alert-error">
            <h4 class="alert-heading">{$lng['admin']['warning']}</h4>
            {$lng['emails']['noemaildomainaddedyet']}
        </div>
	</if>
	<else>
	<header>
		<h2>
			{$title}
		</h2>
	</header>

	<section class="fullform bradiusodd">

		<form rel="submit" class="form-inline form-delacap" action="{$linker->getLink(array('section' => 'email'))}" method="post" enctype="application/x-www-form-urlencoded">
			<fieldset>

				<table class="table table-bordered table-striped">
					{$email_add_form}
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
$footer
