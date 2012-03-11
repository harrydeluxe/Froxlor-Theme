<tr>
	<td>
		<strong>
		{$row['name']}
		<if $row['adminid'] != $userinfo['userid']>
		&nbsp;(<a href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'su', 'id' => $row['adminid']))}" rel="external">{$row['loginname']}</a>)
		</if>
		<if $row['adminid'] == $userinfo['userid']>
		&nbsp;({$row['loginname']})
		</if>
		</strong>
		<div class="subline">
			<span>
				Webspace:&nbsp;
				<if $row['diskspace'] != 'UL'>
					<span class="progressBar" title="{$row['diskspace_used']} / {$row['diskspace']} MB">
						<if (($row['diskspace']/100)*(int)$settings['system']['report_webmax']) < $row['diskspace_used']>
							<span class="redbar">
						<else>
							<span>
						</if>
						<em style="left: {$doublepercent}px;">{$percent}%</em></span>
					</span>
				<else>
					<span class="progressBar" title="{$lng['customer']['unlimited']}">
						<span class="greybar"><em style="left: 200px;">100%</em></span>
					</span>
				</if>
			</span>&nbsp;
			<span>
				Traffic:&nbsp;
				<if $row['traffic'] != 'UL'>
					<span class="progressBar" title="{$row['traffic_used']} / {$row['traffic']} GB">
						<if (($row['traffic']/100)*(int)$settings['system']['report_trafficmax']) < $row['traffic_used']>
							<span class="redbar">
						<else>
							<span>
						</if>
						<em style="left: {$doublepercent}px;">{$percent}%</em></span>
					</span>
				<else>
					<span class="progressBar" title="{$lng['customer']['unlimited']}">
						<span class="greybar"><em style="left: 200px;">100%</em></span>
					</span>
				</if>
			</span>&nbsp;
			<span style="clear: both !important;">
				{$lng['admin']['customers']}: {$row['customers_used']}
			</span>
		</div>
	</td>
	<td>
		<a class="btn btn-mini" href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'edit', 'id' => $row['adminid']))}" style="text-decoration:none;">
			<i class="icon-pencil" rel="tooltip" title="{$lng['panel']['edit']}"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'delete', 'id' => $row['adminid']))}" style="text-decoration:none;">
			<i class="icon-trash" rel="tooltip" title="{$lng['panel']['delete']}"></i>
		</a>
	</td>
</tr>
