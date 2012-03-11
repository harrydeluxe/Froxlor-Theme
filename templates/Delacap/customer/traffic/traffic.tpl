$header
<article>
	<header>
		<h2>
			{$lng['menue']['traffic']['traffic']}
		</h2>
	</header>
	
	<section class="fullform bradiusodd">

			<form action="{$linker->getLink(array('section' => 'traffic'))}" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>

					<table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>{$lng['traffic']['sumftp']} GB</th>
                                <th>{$lng['traffic']['sumhttp']} GB</th>
                                <th>{$lng['traffic']['summail']} GB</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div style="color:#46a546;text-align:center">{$traffic_complete['ftp']}</div></td>
                                <td><div style="color:#049cdb;text-align:center">{$traffic_complete['http']}</div></td>
                                <td><div style="color:#9d261d;text-align:center">{$traffic_complete['mail']}</div></td>
                            </tr>
                        </tbody>
					</table>
					<br /><br />					
					<table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>{$lng['traffic']['month']}</th>
                                <th>{$lng['traffic']['distribution']}</th>
                                <th class="text-align:right;">{$lng['customer']['traffic']}</th>
                            </tr>
                        </thead>
                        <tbody>
							$traffic
                        </tbody>
					</table>

					<p style="display: none;">
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="action" value="$action" />
						<input type="hidden" name="send" value="send" />
					</p>
				</fieldset>
			</form>
	</section>
</article>
$footer
