$header
	<article>
		<header>
			<h2>
				{$lng['menue']['logger']['logger']}
			</h2>
		</header>

		<section>
			
			<form action="{$linker->getLink(array('section' => 'logger'))}" method="post" enctype="application/x-www-form-urlencoded">

			<div class="form-horizontal search">
				{$searchcode}
			</div>

			<if 15 < $log_count >
				<div class="overviewadd">
					<a rel="confirm" class="btn btn-danger" href="{$linker->getLink(array('section' => 'logger', 'page' => 'log', 'action' => 'truncate'))}">{$lng['logger']['truncate']}</a>
				</div>
			</if>

			<table class="table table-bordered table-striped" id="sortTableExample">
			<thead>
				<tr>
					<th>{$lng['logger']['date']}{$arrowcode['date']}</th>
					<th>{$lng['logger']['type']}{$arrowcode['type']}</th>
					<th>{$lng['logger']['user']}{$arrowcode['user']}</th>
					<th style="width: 60%;">{$lng['logger']['action']}</th>
				</tr>
			</thead>
			<tbody>
				$log
			</tbody>
			</table>

			<p style="display:none;">
				<input type="hidden" name="s" value="$s"/>
				<input type="hidden" name="page" value="$page"/>
				<input type="hidden" name="send" value="send" />
			</p>

			</form>

			<div class="overviewadd">
				<a rel="confirm" class="btn btn-danger" href="{$linker->getLink(array('section' => 'logger', 'page' => 'log', 'action' => 'truncate'))}">{$lng['logger']['truncate']}</a>
			</div>

		</section>

	</article>
$footer
