<if $Type == 0>
    <div class="alert alert-info">
        <h4 class="alert-heading">{$lng['success']['success']}</h4>
        $Message
    </div>
</if>
<if $Type == 1>
    <div class="alert alert-error">
        <h4 class="alert-heading">{$lng['error']['error']}</h4>
        $Message
    </div>
</if>
<if $Type == 2>
    <div class="alert alert-success">
        <h4 class="alert-heading">{$lng['success']['success']}</h4>
        $Message
    </div>
</if>
