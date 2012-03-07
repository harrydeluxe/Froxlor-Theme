$header
	<article>
		<header>
			<h2>
				{$title}
			</h2>
		</header>

		<if 0 < $isclosed >
            <div class="overviewadd">        
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'reopen', 'id' => $id))}"><i class="icon-upload icon-white"></i> {$lng['ticket']['ticket_reopen']}</a>
            </div>
		</if>

		<if 0 < $ticket_replies_count >
			$ticket_replies
		</if>

		<section class="fullform bradiusodd">

			<form rel="submit" class="form-inline form-delacap" action="{$linker->getLink(array('section' => 'tickets'))}" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>

					<table class="table table-bordered table-striped">
						{$ticket_reply_form}
					</table>

					<p style="display: none;">
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="action" value="$action" />
 						<input type="hidden" name="id" value="$id" />
						<input type="hidden" name="send" value="send" />
					</p>
				</fieldset>
			</form>

		</section>

	</article>
$footer
