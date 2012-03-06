<div id="searchForm" class="jqtransform">
    <fieldset>
        <div class="input">
            <table>
                <tr>
                    <td nowrap>
                        <select name="searchfield" class="hide">
                        {$fieldoptions}
                        </select>
                    </td>
                    <td width="100%">
                        <input type="text" name="searchtext" id="s" placeholder="{$lng['panel']['search']}" value="{$searchtext}" />
                    </td>
                </tr>
            </table>
        </div>
        <input type="submit" id="searchSubmit" name="Go" value="Go" />
    </fieldset>
</div>