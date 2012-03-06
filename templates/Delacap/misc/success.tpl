$header
<div class="messagewrapper alert-message block-message info">
	<div class="successcontainer bradius">
		<h3>{$lng['success']['success']}</h3>
		<p>$success_message</p>
		<if $redirect_url != ''>
			<br /><a class="btn" href="{$redirect_url}">{$lng['success']['clickheretocontinue']}</a>
		</if>
	</div>
</div>
$footer
