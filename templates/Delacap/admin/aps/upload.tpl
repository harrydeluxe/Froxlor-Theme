<article>
	<header>
		<h2>
			{$lng['aps']['upload']}
		</h2>
	</header>

	<section class="midform midformaps_1 bradiusodd">
	
		<form class="well form-inline" action="$filename" method="post" enctype="multipart/form-data">
			<fieldset>
            
			<p style="margin-left:5em;">
				<strong>{$lng['aps']['upload_description']}</strong><br />
				<a href="http://www.apsstandard.org/" rel="external">http://www.apsstandard.org/</a>
			</p>
			<p style="margin-left:5em;">
				{$Output}
			</p>
			<p class="submit">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
				<input type="hidden" name="action" value="$action" />
				<input class="btn btn-success" type="submit" value="{$lng['aps']['upload']}" />
			</p>
			</fieldset>
		</form>

	</section>

</article>

