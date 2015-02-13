<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Page extends Controller_Site
{
    public function action_kontaktyi()
    {
        $this->set_metatags_and_content('kontaktyi', 'page');


    }

    public function action_vakansii()
    {
        $this->set_metatags_and_content('vakansii', 'page');

    }

    public function action_okompanii()
    {
        $this->set_metatags_and_content('o-kompanii', 'page');

    }

}