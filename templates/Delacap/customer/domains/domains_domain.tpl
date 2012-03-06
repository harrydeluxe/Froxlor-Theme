<tr class="" onmouseover="this.className='RowOverSelected';" onmouseout="this.className='';">
	<td><a href="http://{$row['domain']}" target="_blank">{$row['domain']}</a></td>
	<td>
		<if $row['aliasdomain'] == ''>{$row['documentroot']}</if>
		<if isset($row['aliasdomainid']) && $row['aliasdomainid'] != 0>{$lng['domains']['aliasdomain']} {$row['aliasdomain']}</if>
	</td>
	<td>
		<if $row['caneditdomain'] == '1'>
			<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'action' => 'edit', 'id' => $row['id']))}">
			<i class="icon-pencil"></i>
			</a>&nbsp;
		</if>
		<if $row['parentdomainid'] != '0' && !(isset($row['domainaliasid']) && $row['domainaliasid'] != 0)>
			<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'action' => 'delete', 'id' => $row['id']))}">
			<i class="icon-trash"></i>
			</a>
		</if>
		<if $row['parentdomainid'] == '0' && !(isset($row['domainaliasid']) && $row['domainaliasid'] != 0)>
        <span class="label">{$lng['domains']['isassigneddomain']}</span>
			&nbsp;
		</if>
		<if isset($row['domainaliasid']) && $row['domainaliasid'] != 0>
			<a href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'searchfield' => 'd.aliasdomain', 'searchtext' => $row['id']))}">{$lng['domains']['hasaliasdomains']}</a>
		</if>
	</td>
</tr>