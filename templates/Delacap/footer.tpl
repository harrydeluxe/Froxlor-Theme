    </div><!-- /content -->
    
    <if isset($userinfo['loginname'])>
        <footer>
            <span>Froxlor 
                <if ($settings['admin']['show_version_login'] == '1' && $filename == 'index.php') || ($filename != 'index.php' && $settings['admin']['show_version_footer'] == '1')>
                    {$version}{$branding}
                </if>
                &copy; 2009-{$current_year} by <a href="http://www.froxlor.org/" rel="external">the Froxlor Team</a>
            </span>
            <if $lng['translator'] != ''>
                <br /><span>{$lng['panel']['translator']}: {$lng['translator']}
            </if>
            <br />
            <span>Screendesign by <a href="http://www.delacap.com/" rel="external">DELACAP</a></span>
        </footer>
    </if>
    
    </div><!-- /container -->
    <div class="modal hide fade in" id="dialogmodal"></div>
    <script type="text/javascript" src="templates/Delacap/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="templates/Delacap/assets/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="templates/Delacap/assets/js/select.js"></script>
    <script type="text/javascript" src="templates/Delacap/assets/js/nav.js"></script>
    <script type="text/javascript" src="templates/Delacap/assets/js/main.js"></script>
</body>
</html>