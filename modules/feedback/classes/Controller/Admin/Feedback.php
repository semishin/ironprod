<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 */

class Controller_Admin_Feedback extends Controller_Crud
{
	protected $_model = 'Feedback';
	
	public function action_index()
	{
		parent::action_index();
		
		Navigation::instance()->actions()->clear();
	}
}