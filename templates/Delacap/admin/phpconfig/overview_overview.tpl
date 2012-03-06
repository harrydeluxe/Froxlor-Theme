<tr>
	<td style="vertical-align:top;"><strong>{$row['description']}</strong></td>
	<td style="vertical-align:top;">{$domains}</td>
	<td style="vertical-align:top;">{$row['binary']}</td>
	<td style="vertical-align:top;">{$row['file_extensions']}</td>
	<td style="vertical-align:top;">
		<a class="btn btn-mini" href="{$linker->getLink(array('section' => 'phpsettings', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}">
			<i class="icon-pencil" rel="tooltip" title="{$lng['panel']['edit']}"></i>
		</a>
		<if $row['id'] != 1>
			<a rel="confirm" class="btn btn-mini" href="{$linker->getLink(array('section' => 'phpsettings', 'page' => $page, 'action' => 'delete', 'id' => $row['id']))}">
				<i class="icon-trash" rel="tooltip" title="{$lng['panel']['delete']}"></i>
			</a>
		</if>
	</td>
</tr>
