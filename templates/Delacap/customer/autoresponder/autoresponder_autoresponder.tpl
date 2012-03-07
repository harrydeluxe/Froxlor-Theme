<tr>
	<td>{$row['email']}</td>
	<td>
		<if $row['enabled'] != 0>{$lng['panel']['yes']}</if>
		<if $row['enabled'] == 0>{$lng['panel']['no']}</if>
	</td>
	<td>$activated_date</td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'autoresponder', 'action' => 'edit', 'email' => $row['email']))}">
			<i class="icon-pencil"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'autoresponder', 'action' => 'delete', 'email' => $row['email']))}">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>

