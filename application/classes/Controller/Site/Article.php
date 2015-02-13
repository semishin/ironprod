<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Article extends Controller_Site
{
    public function action_index()
    {
        $this->set_metatags_and_content('', 'page');
        $article = ORM::factory('Article')->where('active','=',1)->order_by('position','asc')->find_all();
        $this->template->article = $article;
    }

    public function action_item()
    {
        $this->set_metatags_and_content($this->param('url'), 'article');

        //$this->template->category = $this->_model->category;

    }



}
