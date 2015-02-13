<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Service extends Controller_Site
{
    public function action_category()
    {
        $this->set_metatags_and_content($this->param('url'), 'service_category', 12);

        $service = ORM::factory('Service')->where('category_id','=',$this->_model->id)->where('active','=',1)->order_by('position','asc')->find_all();
        $this->template->service = $service;
        $this->template->images = json_decode($this->_model->images, true);

    }

    public function action_item()
    {
        $this->set_metatags_and_content($this->param('url'), 'service');


        $services = ORM::factory('Service')->where('category_id','=',$this->_model->category_id)->where('active','=',1)->order_by('position','asc')->find_all();
        $this->template->services = $services;


        $count_pre_service = ORM::factory('Service')
            ->where('active','=',1)
            ->where('category_id','=',$this->_model->category_id)
            ->where('id','<',$this->_model->id)
            ->count_all();

        $count_post_service = ORM::factory('Service')
            ->where('active','=',1)
            ->where('category_id','=',$this->_model->category_id)
            ->where('id','>',$this->_model->id)
            ->count_all();

        if (!$count_post_service) {
            $count_pre = 3;
            $count_post = 0;
        } elseif ($count_post_service == 1) {
            $count_pre = 2;
            $count_post = 1;
        } elseif ($count_post_service > 1 && $count_pre_service) {
            $count_pre = 1;
            $count_post = 2;
        } else {
            $count_pre = 0;
            $count_post = 3;
        }


        $pre_service = ORM::factory('Service')
            ->where('active','=',1)
            ->where('category_id','=',$this->_model->category_id)
            ->where('id','<',$this->_model->id)
            ->order_by('id', 'desc')
            ->limit($count_pre)
            ->find_all()
            ->as_array();

        $post_service = ORM::factory('Service')
            ->where('active','=',1)
            ->where('category_id','=',$this->_model->category_id)
            ->where('id','>',$this->_model->id)
            ->order_by('id', 'asc')
            ->limit($count_post)
            ->find_all()
            ->as_array();

        $this->template->pre_service = $pre_service;
        $this->template->post_service = $post_service;

        $this->template->category = $this->_model->category;
        $this->template->images = json_decode($this->_model->images, true);

    }

}
