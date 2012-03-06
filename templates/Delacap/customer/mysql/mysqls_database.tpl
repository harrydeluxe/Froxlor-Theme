<tr>
	<td>{$row['databasename']}</td>
	<td>{$row['description']}</td>
	<td>{$row['size']}</td>
	<if 1 < count($sql_root)><td>{$sql_root[$row['dbserver']]['caption']}</td></if>
	<if $row['apsdb'] != '1'>
		<td>
			<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'edit', 'id' => $row['id']))}">
				<i class="icon-pencil"></i>
			</a>
			<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'delete', 'id' => $row['id']))}">
				<i class="icon-trash"></i>
			</a>
		</td>
	<else>
		<td>{$lng['aps']['cannoteditordeleteapsdb']}</td>
	</if>
</tr>