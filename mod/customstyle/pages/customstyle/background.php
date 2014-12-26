<?php
	/**
	* CustomStyle - Displays background configuration page
	* 
	* @package customstyle
	* @author ColdTrick IT Solutions
	* @copyright Coldtrick IT Solutions 2009
	* @link http://www.coldtrick.com/
	*/
	
$title = elgg_echo('customstyle:title');

$content = elgg_view('customstyle/background');

$params = array(
	'content' => $content,
	'sidebar' => "",
	'title' => $title,
);

$body = elgg_view_layout('one_sidebar', $params);

echo elgg_view_page($title, $body);