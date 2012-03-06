<tr>
	<td{$style} class="formlabeltd">
		
		<if $desc != ''>
        	<label for="{$fieldname}">
            
            
            <a data-content='{$desc}' data-original-title="{$label}" href="#" class="" rel="popover">{$label}</a>{$mandatory}:
            <!--
            {$label}{$mandatory}:
			<br /><span style="font-size:85%;">{$desc}</span>
            -->
		<else>
        	<label for="{$fieldname}">{$label}{$mandatory}:        
        </if>
		</label>
	</td>
	<td>
		{$data_field}
	</td>
</tr>
