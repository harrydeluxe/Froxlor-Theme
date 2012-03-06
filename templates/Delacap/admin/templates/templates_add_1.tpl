<form class="nomargin" method="post" action="{$linker->getLink(array('section' => 'templates'))}" enctype="application/x-www-form-urlencoded">
    <input type="hidden" name="s" value="$s" />
    <input type="hidden" name="page" value="$page" />
    <input type="hidden" name="action" value="$action" />
    <input type="hidden" name="prepare" value="prepare" />
    <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>
      <h3>{$lng['admin']['templates']['template_add']}</h3>
    </div>
    <div class="modal-body">
        <fieldset>
            <p>
                <label for="language">{$lng['login']['language']}:</label>&nbsp;
                <select id="language" name="language">$language_options</select>
            </p>
        </fieldset>
    </div>
    <div class="modal-footer">
        <input class="btn btn-success" type="submit" value="{$lng['panel']['next']}" />
        <a class="btn" data-dismiss="modal">{$lng['panel']['abort']}</a>
    </div>
</form>