<tr>
	<td>
		<strong>
		<if $row['name'] != '' && $row['firstname'] != ''>
			{$row['name']}&nbsp;{$row['firstname']}
		</if>
		<if ($row['name'] == '' || $row['firstname'] == '') && $row['company'] != ''>
			{$row['company']}
		</if>
		&nbsp;(<a href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'su', 'id' => $row['customerid']))}" rel="external">{$row['loginname']}</a> | {$row['adminname']})
		</strong>
		<div class="subline">
			<span>
				Webspace:&nbsp;
				<if $row['diskspace'] != 'UL'>
					<span class="progressBar" title="{$row['diskspace_used']} / {$row['diskspace']} MB">
						<if (($row['diskspace']/100)*(int)$settings['system']['report_webmax']) < $row['diskspace_used']>
							<span class="label label-important">
						<else>
							<span>
						</if>
						<em style="left: {$disk_doublepercent}px;">{$disk_percent}%</em></span>
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
							<span class="label label-important">
						<else>
							<span>
						</if>
						<em style="left: {$traffic_doublepercent}px;">{$traffic_percent}%</em></span>
					</span>
				<else>
					<span class="progressBar" title="{$lng['customer']['unlimited']}">
						<span class="greybar"><em style="left: 200px;">100%</em></span>
					</span>
				</if>
			</span>&nbsp;
			<span>
				{$last_login}
			</span>
		</div>
	</td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'edit', 'id' => $row['customerid']))}" style="text-decoration:none;">
			<i class="icon-pencil"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'delete', 'id' => $row['customerid']))}" style="text-decoration:none;">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>
