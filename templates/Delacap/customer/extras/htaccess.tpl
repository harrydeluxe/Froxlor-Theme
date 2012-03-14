 $header
	<article>
		<header>
			<h2>
				{$lng['menue']['extras']['pathoptions']}
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'extras'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if 15 < $count >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'extras', 'page' => 'htaccess', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['extras']['pathoptions_add']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>{$lng['panel']['path']}{$arrowcode['path']}</th>
						<th>{$lng['extras']['view_directory']}{$arrowcode['options_indexes']}</th>
						<th>{$lng['extras']['error404path']}{$arrowcode['error404path']}</th>
						<th>{$lng['extras']['error403path']}{$arrowcode['error403path']}</th>
						<th>{$lng['extras']['error500path']}{$arrowcode['error500path']}</th>
						<if $cperlenabled == 1 >
						<th>{$lng['extras']['execute_perl']}{$arrowcode['options_cgi']}</th>
						</if>
						<th>{$lng['panel']['options']}</th>
					</tr>
				</thead>
				<if $pagingcode != ''>
					<tfoot>
						<tr>
							<td colspan="<if $cperlenabled == 1 >7<else>6</if>"><div class="pagination">{$pagingcode}</div></td>
						</tr>
					</tfoot>
				</if>
				<tbody>
					{$htaccess}
				</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
			</p>

			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'extras', 'page' => 'htaccess', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['extras']['pathoptions_add']}</a>
			</div>

		</section>
	</article>
$footer

