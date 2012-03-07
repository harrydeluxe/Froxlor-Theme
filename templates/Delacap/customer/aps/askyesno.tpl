<div class="messagewrapper">
	<div class="warningcontainer bradius">
		<div class="warningtitle">{$lng['question']['question']}</div>
		<div class="warning">
			$Message
			<div style="text-align:right;">
				<form name="continue" action="$filename" method="post">
					<input class="btn btn-success" type="submit" name="answer" value="{$lng['panel']['yes']}" />
					<input type="hidden" name="save" value="1"/>
					<input type="hidden" name="s" value="$s"/>
					<input type="hidden" name="action" value="$action"/>
					$Ids
				</form>
				
				<form name="back" action="$filename" method="post">
					<input class="btn" type="submit" name="submit" value="{$lng['panel']['no']}" />
					<input type="hidden" name="action" value="<if isset($action_alt)>$action_alt<else>$action</if>"/>
					<input type="hidden" name="s" value="$s"/>
				</form>
			</div>
		</div>
		</div>
	</form>
</div>

<!--

<form name="continue" action="$filename" method="post">
    <input type="hidden" name="save" value="1"/>
    <input type="hidden" name="s" value="$s"/>
    <input type="hidden" name="action" value="$action"/>
    $Ids
    <div class="modal-header" dc="dialog">
        <a class="close" data-dismiss="modal">&times;</a>
      <h3>{$lng['question']['question']}</h3>
    </div>
    <div class="modal-body">
        <fieldset>
            <p>
                $Message
            </p>
        </fieldset>
    </div>
    <div class="modal-footer">
        <input class="btn btn-success" type="submit" name="answer" value="{$lng['panel']['yes']}" />
        <a class="btn" data-dismiss="modal">{$lng['panel']['abort']}</a>
    </div>
</form>
-->
