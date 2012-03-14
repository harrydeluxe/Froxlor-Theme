 $header
	<article>
		<header>
			<h2>
				{$lng['menue']['ftp']['accounts']}&nbsp;({$ftps_count})
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'ftp'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if ($userinfo['ftps_used'] < $userinfo['ftps'] || $userinfo['ftps'] == '-1') && 15 < $ftps_count >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'ftp', 'page' => 'accounts', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['ftp']['account_add']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>{$lng['login']['username']}{$arrowcode['username']}</th>
						<th>{$lng['panel']['path']}{$arrowcode['homedir']}</th>
						<th>{$lng['panel']['options']}</th>
					</tr>
				</thead>
				<if $pagingcode != ''>
					<tfoot>
						<tr>
							<td colspan="3"><div class="pagination">{$pagingcode}</div></td>
						</tr>
					</tfoot>
				</if>
				<tbody>
					{$accounts}
				</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
			</p>

			</form>

			<if ($userinfo['ftps_used'] < $userinfo['ftps'] || $userinfo['ftps'] == '-1') >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'ftp', 'page' => 'accounts', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['ftp']['account_add']}</a>
				</div>
			</if>

		</section>
	</article>
$footer