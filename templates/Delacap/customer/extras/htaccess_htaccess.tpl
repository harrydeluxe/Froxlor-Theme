<tr>
	<td>{$row['path']}</td>
	<td>{$row['options_indexes']}</td>
	<td>{$row['error404path']}</td>
	<td>{$row['error403path']}</td>
	<td>{$row['error500path']}</td>
	<if $cperlenabled == 1 >
	<td>{$row['options_cgi']}</td>
	</if>
	<td>
		<a class="btn btn-mini" href="{$linker->getLink(array('section' => 'extras', 'page' => 'htaccess', 'action' => 'edit', 'id' => $row['id']))}" style="text-decoration:none;">
			<i class="icon-pencil"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'extras', 'page' => 'htaccess', 'action' => 'delete', 'id' => $row['id']))}" style="text-decoration:none;">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>