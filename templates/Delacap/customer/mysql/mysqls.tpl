 $header
	<article>
		<header>
			<h2>
				{$lng['menue']['mysql']['databases']}&nbsp;({$mysqls_count})
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'mysql'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if ($userinfo['mysqls_used'] < $userinfo['mysqls'] || $userinfo['mysqls'] == '-1') && 15 < $mysqls_count >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['mysql']['database_create']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>{$lng['mysql']['databasename']}{$arrowcode['databasename']}</th>
						<th>{$lng['mysql']['databasedescription']}{$arrowcode['description']}</th>
						<th nowrap>{$lng['mysql']['size']}</th>
						<if 1 < count($sql_root)><th>{$lng['mysql']['mysql_server']}</th></if>
						<th width="250">{$lng['panel']['options']}</th>
					</tr>
				</thead>
				<if $pagingcode != ''>
					<tfoot>
						<tr>
							<td colspan="<if 1 < count($sql_root)>5<else>4</if>"><div class="pagination">{$pagingcode}</div></td>
						</tr>
					</tfoot>
				</if>
				<tbody>
					{$mysqls}
				</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
			</p>

			</form>

			<if ($userinfo['mysqls_used'] < $userinfo['mysqls'] || $userinfo['mysqls'] == '-1') >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['mysql']['database_create']}</a>
				</div>
			</if>

		</section>
	</article>
$footer

