<if $completeLink['key'] == 'index'>
    <a href="{$completeLink['url']}" class="brand"><img src="templates/Delacap/assets/img/alpha.gif" /></a>
    
    <ul class="pull-right">
    
        <div class="btn-group">
        	<a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)" rel="tooltip" title="{$completeLink['label']}"><i class="icon-user icon-white"></i> <span class="caret"></span></a>
        	<ul class="dropdown-menu right">
        		{$navigation_links}
        	</ul>
        </div>
    </ul>
    <ul id="topnav" class="nav">
<else>
        <li class="divider-vertical"></li>
        <li class="dropdown">
            <a href="<if $completeLink['url'] == ''>javascript:void(0)<else>{$completeLink['url']}</if>" class="dropdown-toggle">{$completeLink['label']}</a>
            <ul class="dropdown-menu">
                {$navigation_links}
            </ul>
        </li>
</if>