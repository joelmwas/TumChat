<?php
	/**
	* CustomStyle - Overrides all loaded css (not inline style)
	* 
	* @package customstyle
	* @author ColdTrick IT Solutions
	* @copyright Coldtrick IT Solutions 2009
	* @link http://www.coldtrick.com/
	*/
	
	global $CONFIG;
	
	$important = "";
	if(elgg_get_context() != "customstyle") $important = " !important";
	
	$currentConfig = get_custom_style_from_metadata(elgg_get_page_owner_guid(), 'customstylebackground');
	if(elgg_get_context() == "profile"){
	if($currentConfig){
		// background configured
		
		?>
			<style type="text/css" title="customstylesheet">
				/* customstylebackground */
				.elgg-page-default .elgg-page-body {
					<?php
						foreach($currentConfig as $key=>$value){
							if($key == 'background-image'){
								echo $key . ": url(" . $CONFIG->wwwroot . $value .  ")" . $important . ";\n";
								
							} else {
								echo $key . ": " . $value . $important .";\n";
							}
						}
					?>
					
				}
			</style>
		<?php
	}
	} else {}


?>
<script type="text/javascript">
	var cacheArray = [];
	if(c=='disabled'){		
		$('style[title="customstylesheet"]').each(function(i){
				
				// chrome/safari hack
				if($.browser.safari){
					cacheArray[i] = $(this).html();
					$(this).html("");
				} else {
					this.disabled=true;
				}
				
		});
	}
</script>