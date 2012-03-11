$header
	<article>

	<if 0 < $awaitingtickets && $settings['ticket']['enabled'] == 1 >
        <div class="alert alert-error">
            <a class="close" data-dismiss="alert">&times;</a>
            <h4 class="alert-heading">{$lng['admin']['warning']}</h4>
            {$awaitingtickets_text}
        </div>
	</if>

    <ul class="nav nav-pills">
      <li class="active"><a href="#accountdetails" data-toggle="pill">{$lng['index']['accountdetails']}</a></li>
      <li><a href="#customerdetails" data-toggle="pill">{$lng['index']['customerdetails']}</a></li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="accountdetails">
        
        	<ul class="thumbnails">
            	<li class="span12">
                	<div class="thumbnail">
                    <h5>{$lng['login']['username']}</h5>
                       {$userinfo['loginname']}
                    <br /><br />
                    <h5>{$lng['customer']['domains']}</h5>
                        $domains
                    </div>
                </li>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['subdomains']}</h5>
                        <div class="progress used" used="{$userinfo['subdomains_used']}" total="{$userinfo['subdomains']}"></div>
                        <small>{$userinfo['subdomains_used']} / {$userinfo['subdomains']}</small>
                    </div>
                </li>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['diskspace']} ({$lng['customer']['usedmax']})</h5>
                        <div class="progress used" used="{$userinfo['diskspace_used']}" total="{$userinfo['diskspace']}"></div>
                    	<small>{$userinfo['diskspace_used']} / {$userinfo['diskspace']}</small>
                    </div>
                </li>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['traffic']} ($month, {$lng['customer']['usedmax']})</h5>
                        <div class="progress used" used="{$userinfo['traffic_used']}" total="{$userinfo['traffic']}"></div>
                    	<small>{$userinfo['traffic_used']} / {$userinfo['traffic']}</small>
                    </div>
                </li>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['emails']}</h5>
                        <div class="progress used" used="{$userinfo['emails_used']}" total="{$userinfo['emails']}"></div>
                    	<small>{$userinfo['emails_used']} / {$userinfo['emails']}</small>
                    </div>
                </li>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['accounts']} ({$lng['customer']['usedmax']})</h5>
                        <div class="progress used" used="{$userinfo['email_accounts_used']}" total="{$userinfo['email_accounts']}"></div>
                        <small>{$userinfo['email_accounts_used']} / {$userinfo['email_accounts']}</small>
                    </div>
                </li>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['forwarders']}</h5>
                        <div class="progress used" used="{$userinfo['email_forwarders_used']}" total="{$userinfo['email_forwarders']}"></div>
                        <small>{$userinfo['email_forwarders_used']} / {$userinfo['email_forwarders']}</small>
                    </div>
                </li>
                <if $settings['system']['mail_quota_enabled'] == 1>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['email_quota']} ({$lng['panel']['megabyte']}, {$lng['customer']['usedmax']})</h5>
                        <div class="progress used" used="{$userinfo['email_quota_used']}" total="{$userinfo['email_quota']}"></div>
                        <small>{$userinfo['email_quota_used']} / {$userinfo['email_quota']}</small>
                    </div>
                </li>
                </if>
                <if $settings['autoresponder']['autoresponder_active'] == 1>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['autoresponder']}</h5>
                        <div class="progress used" used="{$userinfo['email_autoresponder_used']}" total="{$userinfo['email_autoresponder']}"></div>
                        <small>{$userinfo['email_autoresponder_used']} / {$userinfo['email_autoresponder']}</small>
                    </div>
                </li>
                </if>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['mysqls']}</h5>
                        <div class="progress used" used="{$userinfo['mysqls_used']}" total="{$userinfo['mysqls']}"></div>
                        <small>{$userinfo['mysqls_used']} / {$userinfo['mysqls']}</small>
                    </div>
                </li>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['ftps']}</h5>
                        <div class="progress used" used="{$userinfo['ftps_used']}" total="{$userinfo['ftps']}"></div>
                        <small>{$userinfo['ftps_used']} / {$userinfo['ftps']}</small>
                    </div>
                </li>
                <if (int)$settings['aps']['aps_active'] == 1>
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['aps']['numberofapspackages']}</h5>
                        <div class="progress used" used="{$userinfo['aps_packages_used']}" total="{$userinfo['aps_packages']}"></div>
                        <small>{$userinfo['aps_packages_used']} / {$userinfo['aps_packages']}</small>
                    </div>
                </li>
                </if>
                <if $settings['ticket']['enabled'] == 1 >
            	<li class="span6">
                	<div class="thumbnail">
                    <h5>{$lng['customer']['tickets']}</h5>
                        <div class="progress used" used="{$userinfo['tickets_used']}" total="{$userinfo['tickets']}"></div>
                        <small>{$userinfo['tickets_used']} / {$userinfo['tickets']}</small>
                    </div>
                </li>
                </if>
            </ul>
        
        </div>

        <div class="tab-pane" id="customerdetails">
    
            <table class="table table-bordered table-striped">
                <if $userinfo['name'] != '' >
                <tr>
                    <td>{$lng['customer']['name']}:</td>
                    <td>{$userinfo['firstname']} {$userinfo['name']}</td>
                </tr>
                </if>
                <if $userinfo['company'] != '' >
                <tr>
                    <td>{$lng['customer']['company']}:</td>
                    <td>{$userinfo['company']}</td>
                </tr>
                </if>
                <if $userinfo['street'] != '' >
                <tr>
                    <td>{$lng['customer']['street']}:</td>
                    <td>{$userinfo['street']}</td>
                </tr>
                </if>
                <if $userinfo['zipcode'] != '' and $userinfo['city'] != '' >
                <tr>
                    <td>{$lng['customer']['zipcode']}/{$lng['customer']['city']}:</td>
                    <td>{$userinfo['zipcode']} {$userinfo['city']}</td>
                </tr>
                </if>
                <tr>
                    <td>{$lng['customer']['email']}:</td>
                    <td>{$userinfo['email']}</td>
                </tr>
                <if $userinfo['customernumber'] != '' >
                <tr>
                    <td>{$lng['customer']['customernumber']}:</td>
                    <td>{$userinfo['customernumber']}</td>
                </tr>
                </if>
            </table>
        </div>
	</div>

	</article>
$footer

