<?php


$title_text = elgg_echo('customstyle:title');
$title = elgg_view_title($title_text);




$content = elgg_view('customstyle/default');



$params = array(
			
	'content' => $content,
	'title' => $title,
);

$body = elgg_view_layout('one_sidebar', $params);

echo elgg_view_page($title, $body);

