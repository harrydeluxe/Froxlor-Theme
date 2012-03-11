<tr>
	<td style="width:30px;">{$traf['day']}</td>
	<td>
        <div class="progress progress-success traffic">
            <div class="bar" style="width: {$traf['ftp']}%;" rel="tooltip" title="{$traf['ftptext']}"></div>
        </div>
        <div class="progress traffic">
            <div class="bar" style="width: {$traf['http']}%;" rel="tooltip" title="{$traf['httptext']}"></div>
        </div>
        <div class="progress progress-danger traffic">
            <div class="bar" style="width: {$traf['mail']}%;" rel="tooltip" title="{$traf['mailtext']}"></div>
        </div>
    </td>
	<td style="text-align:right; width:80px;">{$traf['byte']}</td>
</tr>

