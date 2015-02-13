<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_News extends Controller_Site
{
    public function action_category()
    {
        $this->set_metatags_and_content($this->param('url'), 'category', 12);
					
    }
	
	public function action_item()
    {
        $this->set_metatags_and_content($this->param('url'), 'news');

        $this->template->category = $this->_model->category;

    }
	


}
