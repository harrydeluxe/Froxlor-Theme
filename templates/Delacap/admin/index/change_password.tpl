<form rel="submit" class="nomargin" method="post" action="{$linker->getLink(array('section' => 'index'))}" enctype="application/x-www-form-urlencoded">
    <input type="hidden" name="s" value="$s" />
    <input type="hidden" name="page" value="$page" />
    <input type="hidden" name="send" value="send" />
    <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>
      <h3>{$lng['menue']['main']['changepassword']}</h3>
    </div>
    <div class="modal-body">
        <fieldset>
            <p>
                <label for="old_password">{$lng['changepassword']['old_password']}:</label>&nbsp;
                <input type="password" id="old_password" name="old_password" />
            </p>
            <p>
                <label for="new_password">{$lng['changepassword']['new_password']}:</label>&nbsp;
                <input type="password" id="new_password" name="new_password" />
            </p>
            <p>
                <label for="new_password_confirm">{$lng['changepassword']['new_password_confirm']}:</label>&nbsp;
                <input type="password" id="new_password_confirm" name="new_password_confirm" />
            </p>
        </fieldset>
    </div>
    <div class="modal-footer">
        <input class="btn btn-success" type="submit" value="{$lng['menue']['main']['changepassword']}" />
        <a class="btn" data-dismiss="modal">{$lng['panel']['abort']}</a>
    </div>
</form>