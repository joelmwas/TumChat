<?php
	/**
	* CustomStyle
	* 
	* @package customstyle
	* @author ColdTrick IT Solutions
	* @copyright Coldtrick IT Solutions 2009
	* @link http://www.coldtrick.com/
	*/
	
	// Load Elgg engine
	//require_once(dirname(dirname(dirname(__FILE__))) . "/engine/start.php");
	
	elgg_register_event_handler('init','system','customstyle_init');
	
	function customstyle_init() {
		global $CONFIG;
		
		if(elgg_get_plugin_setting("colorsCustomizable","customstyle") == "yes" || elgg_get_plugin_setting("backgroundCustomizable","customstyle") == "yes"){
			elgg_extend_view('css/elgg','customstyle/css');
			elgg_extend_view('js/initialise_elgg','customstyle/js');
			elgg_extend_view('page/elements/sidebar', 'customstyle/sidebar');
			
			if (elgg_is_logged_in()) {
			$item = new ElggMenuItem('customstyle', elgg_echo('customstyle'), 'customstyle/personalize');
	        elgg_register_menu_item('site', $item);
	     	}
			
		}
		     
		  
			elgg_register_page_handler('customstyle','customstyle_page_handler');
			elgg_register_event_handler('pagesetup','system','customstyle_pagesetup');
			
			$action_path = elgg_get_plugins_path() . 'customstyle/actions';
			elgg_register_action("customstyle/savebackground", "$action_path/savebackground.php");
	        elgg_register_action("customstyle/savecolors", "$action_path/savecolors.php");
	
	}
	
	function customstyle_pagesetup(){
		
		
		if(!elgg_get_page_owner_guid() && elgg_is_logged_in()){
			elgg_set_page_owner_guid($_SESSION['user']->getGUID()); 
		}
		
		
		 if ($_SERVER['PHP_SELF'] != "/index.php" && elgg_get_page_owner_guid() != 0) {
			elgg_extend_view('page/elements/foot','customstyle/metatags');
		}
	}











function customstyle_page_handler($page)
{
	global $CONFIG;
	if (!isset($page[0]))
	{
		forward();
	}

	$base_dir = elgg_get_plugins_path() . 'customstyle/pages/customstyle';
	switch ($page[0])
	{
		case 'colors':
		    include("$base_dir/colors.php");
			break;
		case 'background':
			include("$base_dir/background.php");
			break;
		case 'personalize':
		    include("$base_dir/start.php");
			break;
		default:
			forward();
			break;
	}
}




	
	function get_custom_style_from_metadata($user, $metadata_name){
		$returnArray = false;
		
		$user = get_entity($user);
		
		$customstyle_object = $user->getObjects($metadata_name, 1, 0);
		
		$customConfig = get_metadata_for_entity($customstyle_object[0]->guid);
		
		if($customConfig){
			foreach($customConfig as $metadataObject){
				$returnArray[$metadataObject['name']] = $metadataObject['value'];
			}
		}
		
		return $returnArray;		
	}
	
	
	//elgg_register_action("customstyle/savebackground", false, $CONFIG->pluginspath . "customstyle/actions/savebackground.php");
	//elgg_register_action("customstyle/savecolors", false, $CONFIG->pluginspath . "customstyle/actions/savecolors.php");
	
	
?>
