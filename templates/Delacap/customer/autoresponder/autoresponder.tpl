 $header
	<article>
		<header>
			<h2>
				{$lng['menue']['email']['autoresponder']}
			</h2>
		</header>

		<section>

			<if ($userinfo['email_autoresponder_used'] < $userinfo['email_autoresponder'] || $userinfo['email_autoresponder'] == '-1') && 15 < $count >
			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'autoresponder', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['autoresponder']['autoresponder_add']}</a>
			</div>
			</if>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>{$lng['emails']['emailaddress']}</th>
						<th>{$lng['autoresponder']['active']}</th>
						<th>{$lng['autoresponder']['startenddate']}</th>
						<th>{$lng['panel']['options']}</th>
					</tr>
				</thead>

				<tbody>
					{$autoresponder}
				</tbody>
			</table>

			<if ($userinfo['email_autoresponder_used'] < $userinfo['email_autoresponder'] || $userinfo['email_autoresponder'] == '-1') >
			<div class="overviewadd">
				<a class="btn btn-inverse"a href="{$linker->getLink(array('section' => 'autoresponder', 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['autoresponder']['autoresponder_add']}</a>
			</div>
			</if>

		</section>
	</article>
$footer

