<article>
		<header>
			<h2>
				{$lng['aps']['specialoptions']}
			</h2>
		</header>
		
		<section class="fullform bradiusodd">
	        	<table class="table table-bordered table-striped">
						<tr>
							<td><strong>{$lng['aps']['statistics']}</strong></td>
							<td>$Statistics</td>
						</tr>
				</table>
		</fieldset>
		<br /><br />
		</section>
</article>
<br /><br />
<article>
		<header>
			<h2>
				{$lng['aps']['manageinstances']}
			</h2>
		</header>
		
		<section class="fullform bradiusodd">
		<form action="$filename" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>
                
	        	<table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th style="text-align:center;">{$lng['aps']['packagenameandstatus']}</th>
                            <th style="text-align:center;">{$lng['aps']['stopinstall']}</th>
                            <th style="text-align:center;">{$lng['aps']['uninstall']}</th>
                        </tr>
                    </thead>
                    <tbody>
                            {$Instances}
                            <td colspan="3"><input class="btn" type="reset" value="{$lng['panel']['reset']}" />&nbsp;<input class="btn btn-success" type="submit" name="save" value="{$lng['panel']['save']}" /></td>
                        </tr>
                    </tbody>
				</table>
				<p style="display: none;">
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="send" value="send" />
				</p>
		</fieldset>
		</form>
		<br /><br />
		</section>
</article>
