$header
        <article>
            <header>
                <h2>{$lng['admin']['cron']['cronsettings']}</h2>
            </header>

		<section>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>{$lng['cron']['description']}</th>
					<th>{$lng['cron']['lastrun']}</th>
					<th>{$lng['cron']['interval']}</th>
					<th>{$lng['cron']['isactive']}</th>
					<th>{$lng['panel']['options']}</th>
				</tr>
			</thead>
			<tbody>
				$crons
			</tbody>
			</table>
		</section>

        <div class="alert alert-error">
            <h4 class="alert-heading">{$lng['admin']['warning']}</h4>
            {$lng['cron']['changewarning']}
        </div>

	</article>
$footer
