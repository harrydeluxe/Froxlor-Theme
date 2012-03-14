$header
	<article class="login hide">
    
		<header class="loginheader">
            <img src="templates/Delacap/assets/img/alpha.gif" alt="Froxlor Server Management Panel" />
		</header>

		<section class="loginmsg">
        
            <if $update_in_progress !== ''>
                <div class="alert alert-error">
                    <a class="close" data-dismiss="alert">&times;</a>
                    {$update_in_progress}
                </div>
            </if>
            
            <if $successmessage != ''>
                <div class="alert alert-error">
                    <a class="close" data-dismiss="alert">&times;</a>
                    <h4 class="alert-heading">{$lng['success']['success']}</h4>
                    $successmessage
                </div>
            </if>
        
        	<if $message != ''>
                <div class="alert alert-error">
                    <a class="close" data-dismiss="alert">&times;</a>
                    <h4 class="alert-heading">{$lng['error']['error']}</h4>
                    $message
                </div>
            </if>
            
		</section>
        
		<section class="loginsec">
        
            <form class="form-inline" method="post" action="$filename" enctype="application/x-www-form-urlencoded">
                <div class="control-group">
                    <select class="sp100" name="language" id="language">$language_options</select>
                </div>
                
                <div class="control-group">
                    <input class="sp100" type="text" placeholder="{$lng['login']['username']}" name="loginname" id="loginname" value="" required/>
                </div>
                <div class="control-group">
                    <div class="input-append">
                    	<table>
                        	<tr>
                            	<td class="left"><input type="password" placeholder="{$lng['login']['password']}" name="password" id="password" required/></td>
                            	<td><input type="submit" class="btn btn-success" value="{$lng['login']['login']}" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="clearfix">
                    <input type="hidden" name="send" value="send" />
                    <if $settings['panel']['allow_preset'] == '1'>
                        <a href="$filename?action=forgotpwd">{$lng['login']['forgotpwd']}</a>
                    </if>
                </div>
            </form>
            
            
            
            
		</section>

	</article>
$footer