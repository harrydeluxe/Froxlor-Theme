<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="Default-Style" content="text/css" />
        <if $settings['panel']['no_robots'] == '0'>
            <meta name="robots" content="noindex, nofollow, noarchive" />
            <meta name="GOOGLEBOT" content="nosnippet" />
        </if>
        <link rel="stylesheet" href="templates/Delacap/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="templates/Delacap/assets/css/main.css">
        <link rel="icon" href="templates/Delacap/assets/img/favicon.ico" type="image/x-icon" />
        <title><if isset($userinfo['loginname']) && $userinfo['loginname'] != ''>{$userinfo['loginname']} - </if>Froxlor Server Management Panel</title>
    </head>
    <body>
    <if isset($userinfo['loginname'])>
    
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                	<div class="nav-collapse">
    
                        $navigation
                        </ul><!-- /id="topnav" -->
                        
                	</div><!-- /nav-collapse -->
                </div><!-- /container -->
            </div><!-- /navbar-inner -->
        </div><!-- /navbar -->
    
    </if>
    
    <if isset($userinfo['loginname'])>
        <div class="container">
            <div class="content">
    <else>
        <div class="container">
        <div class="loginpage">
    </if>