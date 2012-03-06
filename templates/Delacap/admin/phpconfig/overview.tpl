$header
	<article>
		<header>
			<h2>
				{$lng['menue']['phpsettings']['maintitle']}
			</h2>
		</header>

		<section>

			<if 15 < $count>
			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'phpsettings', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['phpsettings']['addnew']}</a>
			</div>
			</if>

			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>{$lng['admin']['phpsettings']['description']}</th>
					<th>{$lng['admin']['phpsettings']['activedomains']}</th>
					<th>{$lng['admin']['phpsettings']['binary']}</th>
					<th>{$lng['admin']['phpsettings']['file_extensions']}</th>
					<th>{$lng['panel']['options']}</th>
			</thead>
			<tbody>
				$tablecontent
			</tbody>
			</table>

			<div class="overviewadd">
				<a class="btn btn-inverse" href="{$linker->getLink(array('section' => 'phpsettings', 'page' => $page, 'action' => 'add'))}"><i class="icon-plus icon-white"></i> {$lng['admin']['phpsettings']['addnew']}</a>
			</div>

		</section>

	</article>
$footer
