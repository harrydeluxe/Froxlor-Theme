 $header
	<article>
		<header>
			<h2>
				{$lng['admin']['domains']}&nbsp;({$domainscount})
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'domains'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if ($userinfo['domains_used'] < $userinfo['domains'] || $userinfo['domains'] == '-1') && 15 < $count && 0 < $countcustomers >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'domains', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['domain_add']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>{$lng['domains']['domainname']}{$arrowcode['d.domain']}</th>
						<th class="multi"><span>{$lng['admin']['ipsandports']['ip']}{$arrowcode['ip.ip']}</span>:&nbsp;<span>{$lng['admin']['ipsandports']['port']}{$arrowcode['ip.port']}</span></th>
						<th>{$lng['admin']['customer']}{$arrowcode['c.loginname']}</th>
						<th>{$lng['panel']['options']}</th>
					</tr>
				</thead>
				<if $pagingcode != ''>
					<tfoot>
						<tr>
							<td colspan="4"><div class="pagination">{$pagingcode}</div></td>
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

			<if $countcustomers == 0 >
				<div class="warningcontainer bradius">
					<div class="warningtitle">{$lng['admin']['warning']}</div>
					<div class="warning">
						<a href="{$linker->getLink(array('section' => 'customers', 'page' => 'customers', 'action' => 'add'))}">{$lng['admin']['domain_nocustomeraddingavailable']}</a>
					</div>
				</div>
			</if>

			<if ($userinfo['domains_used'] < $userinfo['domains'] || $userinfo['domains'] == '-1') && $countcustomers !=0 >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'domains', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['domain_add']}</a>
				</div>
			</if>

		</section>
	</article>
$footer
