 $header
	<article>
		<header>
			<h2>
				{$lng['menue']['extras']['directoryprotection']}
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'extras'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if 15 < $count >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'extras', 'page' => 'htpasswds', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['extras']['directoryprotection_add']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>{$lng['login']['username']}{$arrowcode['username']}</th>
						<th>{$lng['panel']['path']}{$arrowcode['path']}</th>
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
					{$htpasswds}
				</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
			</p>

			</form>

			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'extras', 'page' => 'htpasswds', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['extras']['directoryprotection_add']}</a>
			</div>

		</section>
	</article>
$footer