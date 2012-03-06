<tr>
	<td>{$row['lastchange']}</td>
	<td>{$row['ticket_answers']}</td>
	<td>{$row['subject']}</td>
	<td>{$row['status']}</td>
	<td>{$row['lastreplier']}</td>
	<td>{$row['priority']}</td>
	<td width="140">
		<a class="btn btn-mini" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'answer', 'id' => $row['id']))}" style="text-decoration:none;">
			<if $cananswer < 1 >
                <i class="icon-zoom-in" rel="tooltip" title="{$lng['ticket']['show']}"></i>
			</if>
			<if 0 < $cananswer >
                <i class="icon-share" rel="tooltip" title="{$lng['ticket']['answer']}"></i>
			</if>
		</a>
		<if $reopen < 1 >
			<a rel="confirm" class="btn btn-mini" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'close', 'id' => $row['id']))}" style="text-decoration:none;">
				<i class="icon-ban-circle" rel="tooltip" title="{$lng['ticket']['close']}"></i>
			</a>
		</if>
		<if 0 < $reopen >
			<a class="btn btn-mini" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'reopen', 'id' => $row['id']))}" style="text-decoration:none;">
                <i class="icon-upload" rel="tooltip" title="{$lng['ticket']['reopen']}"></i>
			</a>
		</if>
		
        <a rel="confirm" class="btn btn-mini" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'archive', 'id' => $row['id']))}" style="text-decoration:none;">
			<i class="icon-inbox" rel="tooltip" title="{$lng['ticket']['archive']}"></i>
		</a>
        
		<a rel="confirm" class="btn btn-mini" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'delete', 'id' => $row['id']))}">
			<i class="icon-trash" rel="tooltip" title="{$lng['panel']['delete']}"></i>
		</a>
	</td>
</tr>
