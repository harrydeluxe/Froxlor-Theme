<article>
	<header>
		<h2>
			{$lng['aps']['specialoptions']}
		</h2>
	</header>

	<section class="midform midformaps_1 bradiusodd">

    <form id="manage_packages_form" action="$filename" method="post" enctype="application/x-www-form-urlencoded">
        <input type="hidden" name="s" value="$s" />
        <input type="hidden" name="action" value="$action" />
        <input type="hidden" name="page" value="$page" />
        <input type="hidden" name="save" value="save" />
        <input class="hide" type="submit" name="downloadallpackages" />
    </form>

    
    <div class="btn-group">
        <a class="btn btn-inverse dropdown-toggle" data-toggle="dropdown" href="#">
        {$lng['admin']['phpsettings']['actions']}
        <span class="caret"></span>
        </a>
        <ul id="manage_packages_actions" class="dropdown-menu">
            <li><a href="downloadallpackages">{$lng['aps']['downloadallpackages']}</a></li>
            <li><a href="updateallpackages">{$lng['aps']['updateallpackages']}</a></li>
            <li><a href="enablenewest">{$lng['aps']['enablenewest']}</a></li>
            <li><a href="removeunused">{$lng['aps']['removeunused']}</a></li>
        </ul>
    </div>

	</section>
    
	<br />
	<section class="midform bradiusodd">
		<p style="margin-left:10px;"><strong>{$lng['aps']['statistics']}</strong></p>
		<p style="margin-left:10px;">{$Statistics}</p>
	</section>
</article>

<br />

<article>
	<header>
		<h2>
			{$lng['aps']['managepackages']}
		</h2>
	</header>

	<section>
	
		<form action="$filename" method="post" enctype="application/x-www-form-urlencoded">

			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th style="width:30%;">{$lng['aps']['packagenameandversion']}</th>
					<th>{$lng['ticket']['status']}</th>
					<th>{$lng['aps']['installations']}</th>
					<th style="width:7%;">{$lng['aps']['lock']}</th>
					<th style="width:7%;">{$lng['aps']['unlock']}</th>
					<th style="width:7%;">{$lng['aps']['remove']}</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="3"><strong>{$lng['aps']['allpackages']}</strong></td>
					<td><input type="radio" name="all" value="lock"/></td>
					<td><input type="radio" name="all" value="unlock"/></td>
					<td><input type="radio" name="all" value="remove"/></td>
				</tr>
			</tfoot>
			<tbody>
				{$Packages}
			</tbody>
			</table>

			<p class="submit">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="action" value="$action" />
				<input type="hidden" name="page" value="$page" />
				<input class="btn" type="reset" value="{$lng['panel']['reset']}"/>&nbsp;
				<input class="btn btn-success" type="submit" name="save" value="{$lng['panel']['save']}"/>
			</p>

		</form>
	</section>

</article>

