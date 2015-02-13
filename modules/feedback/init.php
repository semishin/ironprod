<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 */

$adminPrefix = Kohana::$config->load('extasy')->admin_path_prefix;

Route::set('admin-feedback', trim($adminPrefix.'contacts(/<action>(/<id>))'))
	->defaults(array(
		'directory' => 'admin',
		'controller' => 'feedback',
		'action'     => 'index',
	));