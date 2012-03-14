$header
	<article>
		<header>
			<h2>
				{$lng['menue']['ticket']['ticket']}
			</h2>
		</header>

		<section>

			<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if 0 < $supportavailable >
                <div class="alert alert-info">
                    <h4 class="alert-heading">{$lng['ticket']['supportstatus']}</h4>
                    {$lng['ticket']['supportavailable']}
                </div>
			</if>
			<if $supportavailable < 1 >
                <div class="alert alert-info">
                    <h4 class="alert-heading">{$lng['ticket']['supportstatus']}</h4>
                    {$lng['ticket']['supportnotavailable']}
                </div>
			</if>

			<if ($userinfo['tickets_used'] < $userinfo['tickets'] || $userinfo['tickets'] == '-1') && 15 < $tickets_count && ($ticketsopen < $settings['ticket']['concurrently_open'] || ($settings['ticket']['concurrently_open'] == '-1' || $settings['ticket']['concurrently_open'] == '')) >
			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'new'))}"><i class="icon-plus icon-white"></i> {$lng['ticket']['ticket_new']}</a>
			</div>
			</if>

			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>{$lng['ticket']['lastchange']}{$arrowcode['lastchange']}</th>
					<th>{$lng['ticket']['ticket_answers']}{$arrowcode['ticket_answers']}</th>
					<th>{$lng['ticket']['subject']}{$arrowcode['subject']}</th>
					<th>{$lng['ticket']['status']}{$arrowcode['status']}</th>
					<th>{$lng['ticket']['lastreplier']}{$arrowcode['lastreplier']}</th>
					<th>{$lng['ticket']['priority']}{$arrowcode['priority']}</th>
					<th>{$lng['panel']['options']}</th>
				</tr>
			</thead>
				<if $pagingcode != ''>
					<tfoot>
						<tr>
							<td colspan="7"><div class="pagination">{$pagingcode}</div></td>
						</tr>
					</tfoot>
				</if>
			<tbody>
				{$tickets}
			</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s" />
				<input type="hidden" name="page" value="$page" />
				<input type="hidden" name="send" value="send" />
			</p>

			</form>

			<if ($userinfo['tickets_used'] < $userinfo['tickets'] || $userinfo['tickets'] == '-1') && ($ticketsopen < $settings['ticket']['concurrently_open'] || ($settings['ticket']['concurrently_open'] == '-1' || $settings['ticket']['concurrently_open'] == '')) >
			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'new'))}"><i class="icon-plus icon-white"></i> {$lng['ticket']['ticket_new']}</a>
			</div>
			</if>

		</section>

	</article>
$footer