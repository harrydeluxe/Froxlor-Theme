<tr>
	<td>{$row['username']}</td>
	<td>{$row['documentroot']}</td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'ftp', 'page' => 'accounts', 'action' => 'edit', 'id' => $row['id']))}" style="text-decoration:none;">
			<i class="icon-pencil"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'ftp', 'page' => 'accounts', 'action' => 'delete', 'id' => $row['id']))}" style="text-decoration:none;">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>
