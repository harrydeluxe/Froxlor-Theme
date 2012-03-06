<tr>
	<td>{$ticket['lastchange']}</td>
	<td>{$ticket['ticket_answers']}</td>
	<td>{$ticket['subject']}</td>
	<td>{$ticket['lastreplier']}</td>
	<td><span class="ticket_{$ticket['display']}">{$ticket['priority']}</span></td>
	<td>
		<a class="btn btn-mini" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'archive', 'action' => 'view', 'id' => $ticket['id']))}">
            <i class="icon-zoom-in" rel="tooltip" title="{$lng['ticket']['show']}"></i>
		</a>
	</td>
</tr>
