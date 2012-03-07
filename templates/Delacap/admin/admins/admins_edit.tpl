$header
	<article>
		<header>
			<h2>
				{$title}
			</h2>
		</header>

		<if $result['adminid'] == $userinfo['userid']>
			<div class="alert alert-info">
				{$lng['error']['youcanteditallfieldsofyourself']}
			</div>
		</if>

		<section class="fullform bradiusodd">

			<form rel="submit" class="form-inline form-delacap" action="{$linker->getLink(array('section' => 'admins'))}" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>
                
					<table class="table table-bordered table-striped">
						{$admin_edit_form}
					</table>

					<p style="display: none;">
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="action" value="$action" />
						<input type="hidden" name="id" value="$id" />
						<input type="hidden" name="send" value="send" />
					</p>
				</fieldset>
			</form>

		</section>

	</article>
	<br />
	<article>
		<section class="alert alert-info">
			<span style="color:#ff0000;">*</span>: {$lng['admin']['valuemandatory']}
		</section>
	</article>
$footer

