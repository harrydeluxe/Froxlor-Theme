$header
<article>
		<header>

            <ul class="breadcrumb">
              <li>
                {$configfiles[$distribution]['label']} <span class="divider">/</span>
              </li>
              <li>
                {$configfiles[$distribution]['services'][$service]['label']} <span class="divider">/</span>
              </li>
              <li>
                {$configfiles[$distribution]['services'][$service]['daemons'][$daemon]['label']}
              </li>
              <li class="active">
              </li>
            </ul>
        </header>
        
            <div class="overviewadd">
            	<a class="btn btn-info" href="{$linker->getLink(array('section' => 'configfiles', 'page' => $page, 'distribution' => $distribution, 'service' => $service))}"><i class="icon-arrow-left icon-white"></i> {$lng['panel']['back']}</a>
			</div>	

		<section>
        	<table class="table table-bordered table-striped">
				{$configpage}
				<if $restart != ''>
				<tr>
					<td>
                    <div class="alert-message block-message warning">
                        {$lng['admin']['configfiles']['restart']}
                    </div>
					<textarea class="span8" rows="10">$restart</textarea></td>
				</tr>
		</table>
		<br /><br />
		</section>
</article>
$footer
