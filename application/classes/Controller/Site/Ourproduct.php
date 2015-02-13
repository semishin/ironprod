<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Ourproduct extends Controller_Site
{
    public function action_index()
    {
     //   $this->set_metatags_and_content($this->param('url'), 'news');
        $this->set_metatags_and_content('', 'page');
        $ourproduct_category = ORM::factory('Ourproduct_Category')->where('active','=',1)->order_by('position','asc')->find_all();
        $this->template->ourproduct_category = $ourproduct_category;

     //   $this->template->category = $this->_model->category;

     //   $this->template->set_layout('layout/site/global');

    }
}
