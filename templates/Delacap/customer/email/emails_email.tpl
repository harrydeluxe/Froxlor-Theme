<tr>
	<td>{$row['email_full']}</td>
	<td><if $row['destination'] == ''>&nbsp;<else>{$row['destination']}</if></td>
	<td><if $row['popaccountid'] != 0>{$lng['panel']['yes']}</if><if $row['popaccountid'] == 0>{$lng['panel']['no']}</if></td>
	<td><if $row['iscatchall'] != 0>{$lng['panel']['yes']}</if><if $row['iscatchall'] == 0>{$lng['panel']['no']}</if></td>
	<if $settings['system']['mail_quota_enabled'] == '1'><td><if $row['quota'] == 0>{$lng['emails']['noquota']}<else>{$row['quota']} MB</if></if></td>
	<td>
		<a class="btn btn-mini" alt="{$lng['panel']['edit']}" href="{$linker->getLink(array('section' => 'email', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}">
			<i class="icon-pencil"></i>
		</a>
		<a rel="confirm" class="btn btn-mini" alt="{$lng['panel']['delete']}" href="{$linker->getLink(array('section' => 'email', 'page' => $page, 'action' => 'delete', 'id' => $row['id']))}">
			<i class="icon-trash"></i>
		</a>
	</td>
</tr>