<tr>
	<td>{$language}</td>
	<td>{$template}</td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'templates', 'page' => $page, 'action' => 'edit', 'subjectid' => $subjectid, 'mailbodyid' => $mailbodyid))}" style="text-decoration:none;">
			<i class="icon-pencil"></i>
		</a>&nbsp;	
		<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'templates', 'page' => $page, 'action' => 'delete', 'subjectid' => $subjectid, 'mailbodyid' => $mailbodyid))}" style="text-decoration:none;">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>