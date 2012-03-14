 $header
	<article>
		<header>
			<h2>
				{$lng['menue']['email']['emails']}&nbsp;({$emailscount})
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'email'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if ($userinfo['emails_used'] < $userinfo['emails'] || $userinfo['emails'] == '-1') && 15 < $emails_count && $emaildomains_count !=0 >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'email', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['emails']['emails_add']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>{$lng['emails']['emailaddress']}{$arrowcode['m.email_full']}</th>
						<th>{$lng['emails']['forwarders']}{$arrowcode['m.destination']}</th>
						<th>{$lng['emails']['account']}</th>
						<th>{$lng['emails']['catchall']}</th>
						<if $settings['system']['mail_quota_enabled'] == '1'>
						<th>{$lng['emails']['quota']}</th>
						</if>
						<th>{$lng['panel']['options']}</th>
					</tr>
				</thead>
				<if $pagingcode != ''>
					<tfoot>
						<tr>
							<td colspan="<if $settings['system']['mail_quota_enabled'] == '1'>6<else>5</if>"><div class="pagination">{$pagingcode}</div></td>
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

			<if ($userinfo['emails_used'] < $userinfo['emails'] || $userinfo['emails'] == '-1') && $emaildomains_count !=0 >
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'email', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['emails']['emails_add']}</a>
				</div>
			</if>

		</section>
	</article>
$footer

