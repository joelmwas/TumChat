<?php

/**
	 * Elgg No Logo plugin
	 *
	 * @package Elgg No Logo
	 * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU Public License version 2
	 * @author Alex Falk
	 * @URL http://weborganizm.org/creator/alexfalk
	 * @copyright (c) subwebZ 2k12
	 */
	 
function no_logo_init() {
	/**
	 * Simple deleting Elgg logo from topbar
	 */
	 
elgg_unregister_menu_item('topbar', 'elgg_logo');
}

elgg_register_event_handler('init', 'system', 'no_logo_init');