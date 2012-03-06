$header
	<article>
		<header>
			<h2>
				{$lng['admin']['templates']['templates']}
			</h2>
		</header>

		<section>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>{$lng['login']['language']}</th>
					<th>{$lng['admin']['templates']['action']}</th>
					<th>{$lng['panel']['options']}</th>
				</tr>
			</thead>
			<tbody>
				{$templates}
			</tbody>
			</table>

			<if $add>
				<div class="overviewadd">
					<a rel="confirm" class="btn btn-inverse" href="{$linker->getLink(array('section' => 'templates', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['templates']['template_add']}</a>
				</div>
			</if>

		</section>

	</article>
	<br />
	<article>
		<header>
			<h2>
				{$lng['admin']['templates']['filetemplates']}
			</h2>
		</header>

		<section>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>{$lng['admin']['templates']['action']}</th>
					<th>{$lng['panel']['options']}</th>
				</tr>
			</thead>
			<tbody>
				{$filetemplates}
			</tbody>
			</table>

			<if $filetemplateadd>
				<div class="overviewadd">
					<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'templates', 'page' => $page, 'action' => 'add', 'files' => 'files'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['templates']['template_add']}</a>
				</div>
			</if>
		</section>

	</article>
$footer

