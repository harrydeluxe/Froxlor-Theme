<form class="nomargin"  method="post" action="{$linker->getLink(array('section' => 'index'))}" enctype="application/x-www-form-urlencoded">
    <input type="hidden" name="s" value="$s" />
    <input type="hidden" name="page" value="$page" />
    <input type="hidden" name="send" value="send" />
    <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>
      <h3>{$lng['menue']['main']['changetheme']}</h3>
    </div>
    <div class="modal-body">
        <fieldset>
            <p>
              <label for="theme">{$lng['panel']['theme']}:</label>&nbsp;
              <select id="theme" name="theme">$theme_options</select>
            </p>
        </fieldset>
    </div>
    <div class="modal-footer">
        <input class="btn btn-success" type="submit" value="{$lng['menue']['main']['changetheme']}" />
        <a class="btn" data-dismiss="modal">{$lng['panel']['abort']}</a>
    </div>
</form>