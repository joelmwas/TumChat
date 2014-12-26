<?php
/**
 * Elgg page header
 * In the default theme, the header lives between the topbar and main content area.
 */

// link back to main site.?>
<html>
<center>
<?php
echo elgg_view('page/elements/header_logo', $vars);
?>
</center>
</html>


<?php

// drop-down login
echo elgg_view('core/account/login_dropdown');

// insert site-wide navigation
echo elgg_view_menu('site');