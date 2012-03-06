<article>
	<header>
		<h2>
			{$lng['aps']['search']}
		</h2>
	</header>
	
	<section class="fullform bradiusodd">

			<form action="$filename" method="get" enctype="application/x-www-form-urlencoded">
				<fieldset>

					<table class="table table-bordered table-striped">
						<tr>
							<td>{$lng['aps']['search_description']}</td>
							<td><input type="text" name="keyword" class="text" value="$Keyword"/></td>
						</tr>
						<tr>
							<td style="text-align: right;" colspan="2"><input class="btn" type="submit" value="{$lng['aps']['search']}" /></td>
						</tr>
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
