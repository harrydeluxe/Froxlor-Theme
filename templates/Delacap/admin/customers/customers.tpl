$header
	<article>
		<header>
			<h2>
				{$lng['admin']['customers']}&nbsp;({$customercount})
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'customers'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if ($userinfo['customers_used'] < $userinfo['customers'] || $userinfo['customers'] == '-1') && 15 < $userinfo['customers_used'] >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['customer_add']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th class="multi">
						<span>{$lng['customer']['name']}{$arrowcode['c.name']}</span>
						<span>{$lng['customer']['firstname']}{$arrowcode['c.firstname']}</span>
						<span>{$lng['login']['username']}{$arrowcode['c.loginname']}</span>
						<span>{$lng['admin']['admin']}{$arrowcode['a.loginname']}</span>
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
				$customers
			</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
			</p>

			</form>

			<if $userinfo['customers_used'] < $userinfo['customers'] || $userinfo['customers'] == '-1'>
			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['customer_add']}</a>
			</div>
			</if>

		</section>

	</article>
$footer
