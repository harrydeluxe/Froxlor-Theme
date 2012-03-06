<tr>
	<td>{$lng['admin']['templates'][$row['varname']]}</td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'templates', 'page' => $page, 'action' => 'editf', 'id' => $row['id']))}">
			<i class="icon-pencil"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'templates', 'page' => $page, 'action' => 'deletef', 'id' => $row['id']))}">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>

