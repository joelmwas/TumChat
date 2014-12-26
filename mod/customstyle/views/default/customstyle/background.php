<?php
	/**
	* CustomStyle - Background configuration
	* 
	* @package customstyle
	* @author ColdTrick IT Solutions
	* @copyright Coldtrick IT Solutions 2009
	* @link http://www.coldtrick.com/
	*/
	gatekeeper();

	$current_user = $_SESSION['user']->getGUID();
	$currentConfig = get_custom_style_from_metadata($current_user, 'customstylebackground');	

	
	$wallpaper_path = "mod/customstyle/graphics/wallpapers";
	$imageArray = array();	
	$dir_handle = opendir($CONFIG->path . $wallpaper_path);
	while (($file = readdir($dir_handle)) !== false) {
		if ($file!='.' && $file!='..' && !is_dir($dir.$entry)){
			$dotPosition = strrpos($file,".");
			if($dotPosition){
				$shortFileName = substr($file,0,$dotPosition);
				$imageArray[elgg_echo($shortFileName)] = $wallpaper_path . "/" . str_replace(" ", "%20",$file);
			}
		}
	}
		
	$cust = "<br />";
	$cust .= "<table id='gallery'><tr>";
	
	$i=0;
	
	// own image
	if($currentConfig["background-image"]){
		$cust .= "<td>";
		
	$cust .= "<input type='radio' name='background-image' value='" . $currentConfig['background-image'] . "' onclick='document.body.style.backgroundImage = \"url(" . $CONFIG->wwwroot . $currentConfig['background-image'] . ")\"' CHECKED> " . elgg_echo("customstyle:background:currentbackground") . "<br />";
		
	
		
		$dotPosition = strrpos($currentConfig['background-image'],".");
		$shortFileName = substr($currentConfig['background-image'],0,$dotPosition);
		//Credit hack
		$name = str_replace($wallpaper_path."/", "",$shortFileName);

$creditline = "";
		$jager = strpos($name,"jager-");
		if($jager === false) {} else {
			$name = str_replace("jager-", "", $name);
			$creditline = "by <a target=\"_blank\" href=\"http://duuit.com/pg/profile/jag\"><strong>jager</strong></a>";
		}
$creditline = "";

		$chella = strpos($name,"nerdvana-");
		if($chella === false) {} else {
			$name = str_replace("nerdvana-", "", $name);
			$creditline = " by <a target=\"_blank\" href=\"http://duuit.com/pg/profile/nerdvana\"><strong>chella</strong></a>";
		}

		$cust .= "$name $creditline";
		$cust .= "<br />";

		$cust .= "<a href='" . $CONFIG->wwwroot . $currentConfig['background-image'] . "' title='" . elgg_echo('customstyle:background:custombackground') . "'><img src=";
		$custURL = $CONFIG->wwwroot . $currentConfig['background-image']; 
		if(substr_count($currentConfig['background-image'], "/mod/customstyle/getbackground?id=")) $custURL .= "&thumb=true";
		$cust .= elgg_add_action_tokens_to_url($custURL);
		$cust .= " style='width:150px;' alt='" . elgg_echo('customstyle:background:custombackground') . "'/></a>";
		$cust .= "</td>";
		$i++;
	} 
	
	
	
	// load default images
	foreach($imageArray as $name=>$image){
		if($i == 4) {
			$cust .= "</tr><tr>";	
			$i = 0;
		}
		
		if($image != $currentConfig['background-image']){
			$cust .= "<td>";
		
			$cust .= "<input type='radio' name='background-image' value='" . $image . "' onclick='document.body.style.backgroundImage = \"url(" . $CONFIG->wwwroot . $image . ")\"'>";

		//Credit hack
		$name = str_replace($wallpaper_path."/", "",$name);

		$jager = strpos($name,"jager-");
		if($jager === false) {} else {
			$name = str_replace("jager-", "", $name);
			$creditline = "by <a target=\"_blank\" href=\"http://duuit.com/pg/profile/jag\"><strong>jager</strong></a>";
		}
		$chella = strpos($name,"nerdvana-");
		if($chella === false) {} else {
			$name = str_replace("nerdvana-", "", $name);
			$creditline = " by <a target=\"_blank\" href=\"http://duuit.com/pg/profile/nerdvana\"><strong>chella</strong></a>";
		}
		$cust .= "$name $creditline";
$creditline = "";
		$cust .= "<br />";
			$cust .= "<a class='box' href='" . $CONFIG->wwwroot . $image . "' title='" . $name . "'><img src='" . $CONFIG->wwwroot . $image . "' style='width:150px;'/></a>";
			$cust .= "</td>";
			
			$i++;
		}
	}	
	$cust .= "</tr></table>";
	
	$cust .= "<table><col STYLE='white-space:nowrap;'>";
	
	// repeat
	$cust .= "<tr><td colspan=2>";
	$cust .= "<div class='user_settings'><h3>" . elgg_echo("customstyle:background:repeat:title") . "</h3></div>";
	$cust .= "</td></tr><tr><td>";
	foreach(elgg_echo("customstyle:background:repeat:options") as $value=>$text){
		$checked = "";
		if(array_key_exists('background-repeat',$currentConfig)){
			if($currentConfig['background-repeat'] == $value){
				$checked = " checked";
			}
		}
		$cust .= "<input type='radio' name='background-repeat' value='" . $value . "'" . $checked . " onclick='document.body.style.backgroundRepeat = \"" . $value . "\"'> " . $text . "<br />";
	}
	$cust .= "</td><td>" . elgg_echo("customstyle:background:repeat:description") . "</td></tr>";
	
	// attachment
	$cust .= "<tr><td colspan=2>";
	$cust .= "<div class='user_settings'><h3>" . elgg_echo("customstyle:background:attachment:title") . "</h3></div>";
	$cust .= "</td></tr><tr><td>";
	foreach(elgg_echo("customstyle:background:attachment:options") as $value=>$text){
		$checked = "";
		if(array_key_exists('background-attachment',$currentConfig)){
			if($currentConfig['background-attachment'] == $value){
				$checked = " checked";
			}
		}
		$cust .= "<input type='radio' name='background-attachment' value='" . $value . "'" . $checked . " onclick='document.body.style.backgroundAttachment = \"" . $value . "\"'> " . $text . "<br />";
	}
	$cust .= "</td><td>" . elgg_echo("customstyle:background:attachment:description") . "</td></tr>";
		
	// position
	$cust .= "<tr><td colspan=2>";
	$cust .= "<div class='user_settings'><h3>" . elgg_echo("customstyle:background:position:title") . "</h3></div>";
	$cust .= "</td></tr><tr><td>";
	$i=0;
	foreach(elgg_echo("customstyle:background:position:options") as $value=>$text){
		if($i==3){
			$cust .= "<br />";
			$i=0;
		}
		$checked = "";
		if(array_key_exists('background-position',$currentConfig)){
			if($currentConfig['background-position'] == $value){
				$checked = " checked";
			}
		}
		$cust .= "<input type='radio' name='background-position' title='" . $text . "' value='" . $value . "'" . $checked . " onclick='document.body.style.backgroundPosition = \"" . $value . "\"'>";
		$i++;
	}
	$cust .= "</td><td>" . elgg_echo("customstyle:background:position:description") . "</td></tr>";
		
	$cust .= "</table>";
	$cust .= elgg_view('input/submit', array("internalname"=>"submitButton", 'value' => elgg_echo('save'))) . " ";
	$cust .= elgg_view('input/submit', array("internalname"=>"submitButton", 'value' => elgg_echo('customstyle:background:reset')));
	$cust .= elgg_view('input/securitytoken');
	$configForm = elgg_view("input/form",array('body' => $cust,'method' => 'post', 'enctype' => 'multipart/form-data' ,'action' => $vars['url'] . "action/customstyle/savebackground"));
	
?>
<script type="text/javascript" src="<?php echo $vars['url'];?>mod/customstyle/js/lightbox/js/jquery.lightbox-0.5.pack.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $vars['url'];?>mod/customstyle/js/lightbox/css/jquery.lightbox-0.5.css" media="screen" />
<script type="text/javascript">
	$(document).ready(function() {
		$('#gallery a.box').lightBox();
	});
</script>
<div class="contentWrapper">

	<div id="noconfig" <?php if($currentConfig){ ?>style="display:none"<?php }?>>
		<p>
		<?php 
			echo elgg_echo("customstyle:background:noconfig") . "<br />";
			$js = "onclick='$(\"#noconfig\").toggle();$(\"#config\").toggle()'";
			echo elgg_view("input/button", array("value"=>elgg_echo("customstyle:background:customizebutton"), "js"=>$js));
		?>
		</p>
	</div>
	<div id="config" <?php if(!$currentConfig){ ?>style="display:none"<?php }?>>	
		<?php
			echo elgg_echo("customstyle:background:selectinfo") . "<br />";
			echo $configForm;
		?>
	</div>	
</div>
