$header
	<article>
		<header>
			<h2>
				{$lng['ticket']['ticket_delete']}
			</h2>
		</header>

		<section class="bradiusodd">
			<if 0 < $ticket_replies_count >
			$ticket_replies
			</if>
            
			<p>
            <a rel="confirm" title="{$lng['panel']['delete']}" class="btn btn-inverse" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'archive', 'action' => 'delete', 'id' => $id))}"><i class="icon-trash icon-white"></i> {$lng['panel']['delete']}</a>
            </p>
            
            
            
		</section>
	</article>
$footer
