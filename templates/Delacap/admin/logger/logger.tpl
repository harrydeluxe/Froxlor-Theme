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
					<th class="header blue">{$lng['logger']['date']}&nbsp;&nbsp;{$arrowcode['date']}</th>
					<th class="header green">{$lng['logger']['type']}&nbsp;&nbsp;{$arrowcode['type']}</th>
					<th class="header blue">{$lng['logger']['user']}&nbsp;&nbsp;{$arrowcode['user']}</th>
					<th class="header blue" style="width: 60%;">{$lng['logger']['action']}</th>
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
    <!--
    <script src="http://autobahn.tablesorter.com/jquery.tablesorter.min.js"></script>
    <script >
  $(function() {
    $("table#sortTableExample").tablesorter({ sortList: [[ 0, 0 ]] });
  });
</script>
-->
$footer
