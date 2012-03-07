$header
<article>
	<header>
		<h2>
			{$title}
		</h2>
	</header>

	<section class="fullform bradiusodd">

		<form rel="submit" class="form-inline form-delacap" action="{$linker->getLink(array('section' => 'email'))}" method="post" enctype="application/x-www-form-urlencoded">
			<fieldset>
            
				<table class="table table-bordered table-striped">
					{$email_edit_form}
					<tr>
						<td class="maintitle" colspan="2"><a class="btn" href="{$linker->getLink(array('section' => 'email', 'page' => 'emails'))}">{$lng['emails']['back_to_overview']}</a></td>
					</tr>
				</table>
                
			</fieldset>
		</form>

	</section>
</article>
$footer
