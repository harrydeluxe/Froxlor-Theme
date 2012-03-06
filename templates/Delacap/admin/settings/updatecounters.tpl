$header
<article>
		<header>
			<h2>
				{$lng['admin']['updatecounters']}
			</h2>
		</header>

		<section>
        	<table class="table table-bordered table-striped ">
				<tr>
					<td colspan="2"><h3>{$lng['admin']['customers']}</h3></td>
				</tr>
{$customers}
			</table>
		</section>
        
		<section>
        	<table class="table table-bordered table-striped">
				<tr>
					<td colspan="2"><h3>{$lng['admin']['admins']}</h3></td>
				</tr>
{$admins}
			</table>
		</section>
</article>
$footer
