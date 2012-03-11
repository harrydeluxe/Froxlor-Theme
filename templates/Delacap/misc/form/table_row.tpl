<tr>
	<td{$style} class="formlabeltd">
		<if $desc != ''>
        	<label for="{$fieldname}">
            <a data-content='{$desc}' data-original-title="{$label}" href="javascript:void(0)" class="" rel="popover">{$label}</a>{$mandatory}:
		<else>
        	<label for="{$fieldname}">{$label}{$mandatory}:        
        </if>
		</label>
	</td>
	<td>
		{$data_field}
	</td>
</tr>