<tr>
	<td>{$description}</td>
	<td>{$row['lastrun']}</td>
	<td>{$row['interval']}</td>
	<td>{$row['isactive']}</td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'cronjobs', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}"><i class="icon-pencil"></i></a>
	</td>
</tr>
