$header
	<article class="login hide">
    
		<header class="loginheader">
            <img src="templates/Delacap/assets/img/alpha.gif" alt="Froxlor Server Management Panel" />
		</header>
        
		<section class="loginmsg">

        	<if $message != ''>
                <div class="alert alert-error">
                    <a class="close" data-dismiss="alert">&times;</a>
                    <h4 class="alert-heading">{$lng['error']['error']}</h4>
                    $message
                </div>
            </if>
            
		</section>
            
        <section class="loginsec">
            <form method="post" action="$filename" enctype="application/x-www-form-urlencoded">
                <p>
                    <input class="span4" type="text" placeholder="{$lng['login']['username']}" name="loginname" id="loginname" value="" required/>
                    <input class="span4" type="text" placeholder="{$lng['login']['email']}" name="loginemail" id="loginemail" required/>
                </p>
                <p class="submit">
                    <input type="hidden" name="action" value="$action" />
                    <input type="hidden" name="send" value="send" />
                    <input type="submit" class="btn btn-inverse" value="{$lng['login']['remind']}" />&nbsp;&nbsp;&nbsp;<a href="index.php">{$lng['login']['backtologin']}</a>
                </p>
            </form>
        </section>
        
	</article>
$footer