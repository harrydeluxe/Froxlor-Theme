<tr class="">
	<td>{$row['domain']}
		<if (isset($row['standardsubdomain']) && $row['standardsubdomain'] == $row['id'])>
			&nbsp;({$lng['admin']['stdsubdomain']})
		</if>
	</td>
	<td>{$row['ipandport']}</td>
	<td>{$row['customername']}&nbsp;
		(<a href="{$linker->getLink(array('section' => 'customers', 'page' => 'customers', 'action' => 'su', 'id' => $row['customerid']))}" rel="external">{$row['loginname']}</a>)
	</td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'domains', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}" style="text-decoration:none;">
            <i class="icon-pencil"></i>
		</a>
		<if !(isset($row['domainaliasid']) && $row['domainaliasid'] != 0)>
			<if !(isset($row['standardsubdomain']) && $row['standardsubdomain'] == $row['id'])>
				&nbsp;<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'domains', 'page' => $page, 'action' => 'delete', 'id' => $row['id']))}" style="text-decoration:none;">
					<i class="icon-trash"></i>
				</a>
			</if>
		</if>
		<if isset($row['domainaliasid']) && $row['domainaliasid'] != 0>
			&nbsp;<a href="{$linker->getLink(array('section' => 'domains', 'page' => $page, 'searchfield' => 'd.aliasdomain', 'searchtext' => $row['id']))}">{$lng['domains']['hasaliasdomains']}</a>
		</if>
	</td>
</tr>
