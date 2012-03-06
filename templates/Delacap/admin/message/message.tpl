$header
	<article>
		<header>
			<h2>
				{$lng['admin']['message']}
			</h2>
		</header>

		<section class="midform bradiusodd">

			<if 0 < $success >
				<div class="successcontainer bradius">
					<div class="successtitle">{$lng['success']['success']}</div>
					<div class="success">{$successmessage}</div>
				</div>
			</if>

			<form class="form-delacap" action="$filename" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>
				<p>
					<label for="receipient">{$lng['admin']['receipient']}</label>&nbsp;
					<select class="span7" name="receipient" id="receipient">$receipients</select>
				</p>
				<p>
					<label for="subject">{$lng['admin']['subject']}</label>&nbsp;
					<input class="span7" type="text" name="subject" id="subject" value="{$lng['admin']['nosubject']}"/>
				</p>
				<p>
					<label for="message">{$lng['admin']['text']}</label>&nbsp;
					<textarea class="span7" rows="12" name="message" id="message"></textarea>
				</p>
				<p class="submit">
					<input type="hidden" name="s" value="$s"/>
					<input type="hidden" name="page" value="$page"/>
					<input type="hidden" name="action" value="$action"/>
					<input type="hidden" name="send" value="send"/>
					<input class="btn" type="submit" value="{$lng['panel']['send']}" />
				</p>
				</fieldset>
			</form>

		</section>

	</article>
$footer
