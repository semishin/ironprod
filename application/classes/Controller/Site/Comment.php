<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Comment extends Controller_Site
{
    public function action_index()
    {
        $this->set_metatags_and_content('', 'page');

        $comment = ORM::factory('Comment')->where('active','=',1)->order_by('date','desc')->find_all();
        $this->template->comment = $comment;
    }

    public function action_add()
    {
        $this->set_metatags_and_content('', 'page');
        if ($this->request->is_ajax()) {
            $name = $this->request->post('name');
            $text = $this->request->post('text');

            $brief = ORM::factory('Comment');
            $brief->name = $name;
            $brief->content = $text;
            $brief->date = date("Y-m-d");
            $brief->save();

            exit(json_encode(array()));
        }
        $this->forward_404();
    }
}