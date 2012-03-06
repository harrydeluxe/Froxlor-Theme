<tr>
	<td>{$destination}</td>
	<td>
    	<a rel="confirm" class="btn btn-mini" href="{$linker->getLink(array('section' => 'email', 'page' => 'forwarders', 'action' => 'delete', 'id' => $id, 'forwarderid' => $dest_id))}">
        <i class="icon-trash"></i> {$lng['panel']['delete']}</a>
    </td>
</tr>