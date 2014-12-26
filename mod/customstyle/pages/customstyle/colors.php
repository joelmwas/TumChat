<?php
	/**
	* CustomStyle - Displays color configuration page
	* 
	* @package customstyle
	* @author ColdTrick IT Solutions
	* @copyright Coldtrick IT Solutions 2009
	* @link http://www.coldtrick.com/
	*/

	
	// Display main admin menu
	//page_draw(elgg_echo('customstyle:title'),elgg_view_layout("two_column_left_sidebar", '', elgg_view_title(elgg_echo('customstyle:colors:title')) . elgg_view('customstyle/colors')));



$title = elgg_echo('customstyle:title');

$content = elgg_view('customstyle/colors');

$params = array(
	'content' => $content,
	'sidebar' => "",
	'title' => $title,
);

$body = elgg_view_layout('one_sidebar', $params);

echo elgg_view_page($title, $body);







?>