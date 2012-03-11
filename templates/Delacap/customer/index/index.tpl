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
            <table class="table table-bordered table-striped">
                <tr>
                    <td>{$lng['login']['username']}:</td>
                    <td>{$userinfo['loginname']}</td>
                </tr>
                <tr>
                    <td>{$lng['customer']['domains']}:</td>
                    <td>$domains</td>
                </tr>
                <tr>
                    <td>{$lng['customer']['subdomains']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['subdomains_used']}/{$userinfo['subdomains']}</td>
                </tr>
                <tr>
                    <td>{$lng['customer']['diskspace']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['diskspace_used']}/{$userinfo['diskspace']}</td>
                </tr>
                <tr>
                    <td>{$lng['customer']['traffic']} ($month, {$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['traffic_used']}/{$userinfo['traffic']}</td>
                </tr>
                <tr>
                    <td>{$lng['customer']['emails']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['emails_used']}/{$userinfo['emails']}</td>
                </tr>
                <tr>
                    <td>{$lng['customer']['accounts']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['email_accounts_used']}/{$userinfo['email_accounts']}</td>
                </tr>
                <tr>
                    <td>{$lng['customer']['forwarders']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['email_forwarders_used']}/{$userinfo['email_forwarders']}</td>
                </tr>
                <if $settings['system']['mail_quota_enabled'] == 1>
                <tr>
                    <td>{$lng['customer']['email_quota']} ({$lng['panel']['megabyte']}, {$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['email_quota_used']}/{$userinfo['email_quota']}</td>
                </tr>
                </if>
                </tr>
                <if $settings['autoresponder']['autoresponder_active'] == 1>
                <tr>
                    <td>{$lng['customer']['autoresponder']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['email_autoresponder_used']}/{$userinfo['email_autoresponder']}</td>
                </tr>
                </if>
                <tr>
                    <td>{$lng['customer']['mysqls']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['mysqls_used']}/{$userinfo['mysqls']}</td>
                </tr>
                <tr>
                    <td>{$lng['customer']['ftps']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['ftps_used']}/{$userinfo['ftps']}</td>
                </tr>
                <if (int)$settings['aps']['aps_active'] == 1>
                <tr>
                    <td>{$lng['aps']['numberofapspackages']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['aps_packages_used']}/{$userinfo['aps_packages']}</td>
                </tr>
                </if>
                <if $settings['ticket']['enabled'] == 1 >
                <tr>
                    <td>{$lng['customer']['tickets']} ({$lng['customer']['usedmax']}):</td>
                    <td>{$userinfo['tickets_used']}/{$userinfo['tickets']}</td>
                </tr>
                </if>
            </table>
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

