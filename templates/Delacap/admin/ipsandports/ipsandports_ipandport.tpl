<tr>
	<td>{$row['ip']}:{$row['port']}</td>
	<td><if $row['listen_statement']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['namevirtualhost_statement']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['vhostcontainer']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['specialsettings']!=''>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['vhostcontainer_servername_statement']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['ssl']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'ipsandports', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}" style="text-decoration:none;">
			<i class="icon-pencil"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'ipsandports', 'page' => $page, 'action' => 'delete', 'id' => $row['id']))}" style="text-decoration:none;">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>