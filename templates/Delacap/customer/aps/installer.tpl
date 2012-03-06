<article>
	<header>
		<h2>
			{$Xml->name}
		</h2>
	</header>
	
	<section class="fullform bradiusodd">

			<form class="form-inline form-delacap" action="$filename" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>
                
                	<if $ErrorMessage != 0>
                        <div class="alert alert-error">
                            {$lng['aps']['wizard_error']}
                        </div>
					</if>

					<table class="table table-bordered table-striped">
						<tr>
							<td colspan="2"><strong>{$lng['aps']['install_wizard']}</strong></td>
							<td style="text-align: center; padding: 10px; background-color:#FFFFFF;"><img src="{$Icon}" alt="{$Xml->name} Icon"/></td>
						</tr>
						$Data
						<tr>
							<td colspan="3">
								<input class="btn btn-success" type="submit" value="{$lng['aps']['install']}" />
							</td>
						</tr>
					</table>

					<p style="display: none;">
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="action" value="install" />
						<input type="hidden" name="withinput" value="withinput" />
						<input type="hidden" name="id" value="{$Row['ID']}" />
					</p>
				</fieldset>
			</form>
	</section>
</article>
