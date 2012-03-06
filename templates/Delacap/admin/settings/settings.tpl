<article>
		<header>
			<h2>
				{$lng['admin']['serversettings']} &nbsp;
			</h2>
        </header>
		
        <div class="overviewadd">
            <a class="btn btn-success" href="$filename?page=overview&amp;part=&amp;s=$s">{$lng['admin']['configfiles']['compactoverview']}</a>
        </div>
        
		<section>
			<table class="table table-bordered table-striped">
			$fields
			<tr>
				<td  style="text-align:right;" nowrap="nowrap" colspan="2">
					<input class="btn" type="reset" value="{$lng['panel']['reset']}" />
                    <input class="btn btn-success" type="submit" value="{$lng['panel']['save']}" />
				</td>
			</tr>
		</table>
		</section>
</article>
