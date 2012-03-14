 $header
	<article>
		<header>
			<h2>
				{$lng['domains']['domainsettings']}&nbsp;({$domains_count})
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'domains'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if ($userinfo['subdomains_used'] < $userinfo['subdomains'] || $userinfo['subdomains'] == '-1') && 15 < $domains_count && $parentdomains_count != 0 >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['domains']['subdomain_add']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>{$lng['domains']['domainname']}{$arrowcode['d.domain']}</th>
						<th>{$lng['panel']['path']}{$arrowcode['d.documentroot']}</th>
						<th width="250">{$lng['panel']['options']}</th>
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
					{$domains}
				</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
			</p>

			</form>

			<if ($userinfo['subdomains_used'] < $userinfo['subdomains'] || $userinfo['subdomains'] == '-1') && $parentdomains_count != 0 >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['domains']['subdomain_add']}</a>
				</div>
			</if>

		</section>
	</article>
$footer
