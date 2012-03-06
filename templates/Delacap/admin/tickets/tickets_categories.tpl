<tr>
	<td>{$row['name']}</td>
	<td>{$row['logicalorder']}</td>
	<td>{$row['ticketcount']}&nbsp;({$row['ticketcountnotclosed']}&nbsp;{$lng['ticket']['open']}&nbsp;|&nbsp;{$closedtickets_count}&nbsp;{$lng['ticket']['closed']})</td>
	<td>
		<a class="btn btn-mini" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'categories', 'action' => 'editcategory', 'id' => $row['id']))}">
			<i class="icon-pencil"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'categories', 'action' => 'deletecategory', 'id' => $row['id']))}">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>