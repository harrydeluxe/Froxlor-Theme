$header
	<article>
		<header>
			<h2>
				{$lng['admin']['admins']}&nbsp;({$admincount})
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'admins'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if 15 < $count >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['admin_add']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th class="multi">
						<span>{$lng['customer']['name']}{$arrowcode['name']}</span>
						<span>{$lng['login']['username']}{$arrowcode['loginname']}</span>
					</th>
					<th>{$lng['panel']['options']}</th>
				</tr>
			</thead>
				<if $pagingcode != ''>
					<tfoot>
						<tr>
							<td colspan="2"><div class="pagination">{$pagingcode}</div></td>
						</tr>
					</tfoot>
				</if>
			<tbody>
				$admins
			</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
			</p>

			</form>

			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['admin_add']}</a>
			</div>

		</section>

	</article>
$footer

