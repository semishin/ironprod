<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Index extends Controller_Site
{
    public function action_index()
    {
        $this->set_metatags_and_content('', 'page');
        $news = ORM::factory('News')->where('active','=',1)->order_by('date','desc')->find_all();
        $slide = ORM::factory('Slide')->where('active','=',1)->order_by('position','asc')->find_all();

        $this->template->news = $news;
        $this->template->slide = $slide;

        //$this->template->slides=ORM::factory('Slides')->where('active','=',1)->order_by('position','ASC')->find_all();
        //$this->template->clients=ORM::factory('Clients')->fetchActive();
    }

    public function action_brief_item()
    {
        $this->set_metatags_and_content('', 'page');


        $this->template->set_layout('site/index/brief_item');

    }
}
