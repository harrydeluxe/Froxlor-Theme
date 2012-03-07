<form class="nomargin" action="$yesfile" method="post">
    <input type="hidden" name="s" value="$s" />
    <input type="hidden" name="send" value="send" />
    {$hiddenparams}
    <div class="modal-header" dc="dialog">
        <a class="close" data-dismiss="modal">&times;</a>
      <h3>{$lng['question']['question']}</h3>
    </div>
    <div class="modal-body">
        <p>$text</p>
        <div class="messagecheckbox">$checkbox</div>
    </div>
    <div class="modal-footer">
        <input type="submit" class="btn btn-danger" name="submitbutton" value="{$lng['panel']['yes']}" />
        <a class="btn" data-dismiss="modal">{$lng['panel']['abort']}</a>
    </div>
</form>