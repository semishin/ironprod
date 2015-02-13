<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 */

class Controller_Site_Page extends Controller_Site
{
    public function action_index()
    {
        $url = $this->param('url');

        $this->set_metatags_and_content($url);
    }
}