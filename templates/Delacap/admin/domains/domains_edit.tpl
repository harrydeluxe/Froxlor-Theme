$header
	<article>
		<header>
			<h2>
				{$title}
			</h2>
		</header>

		<section class="fullform bradiusodd">

			<form rel="submit" class="form-inline form-delacap" action="{$linker->getLink(array('section' => 'domains'))}" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>
          
                    <div id="speciallogwarningpopup" class="modal hide fade in">
                        <div class="modal-header">
                            <a class="close" data-dismiss="modal">&times;</a>
                            <h3>{$lng['admin']['delete_statistics']}</h3>
                        </div>
                        <div class="modal-body alert-error">
                            <p>{$lng['admin']['speciallogwarning']}</p>
                            <div class="control-group"><input class="span4" type="text" name="delete_stats" id="delete_stats"></div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-danger" name="verifybutton" value="{$lng['panel']['delete']}" id="speciallogyesbutton" disabled />
                            <input type="button" class="btn" data-dismiss="modal" value="{$lng['panel']['cancel']}" />
                        </div>
                    </div>
                    
					<table class="table table-bordered table-striped">
						{$domain_edit_form}
					</table>

					<p style="display: none;">
                    	<input type="hidden" name="delete_statistics_str" id="delete_statistics_str" value="{$lng['admin']['delete_statistics']}">
						<input type="hidden" name="speciallogverified" id="speciallogverified" value="0" />
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
