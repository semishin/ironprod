<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 * @author o.zgolich
 */

class Form_Admin_Article extends CM_Form_Abstract
{
    protected function init()
    {
        $this->add_plugin(new CM_Form_Plugin_ORM());

        $this->set_field('name', new CM_Field_String(), 0);
        $this->set_field('position', new CM_Field_Int(), 2);
        $this->set_field('date', new CM_Field_Date(), 4);
        $this->set_field('url', new CM_Field_String(), 6);
        $this->set_field('active', new CM_Field_Boolean(), 8);
        $this->set_field('short_content', new CM_Field_HTML(), 9);
        $this->set_field('content', new CM_Field_HTML(), 10);
        $this->set_field('s_title', new CM_Field_String(), 13);
        $this->set_field('s_description', new CM_Field_Text(), 14);
        $this->set_field('s_keywords', new CM_Field_Text(), 15);

        $fieldgroups = array(
            'Основные данные' => array('name', 'position', 'date', 'url', 'active', 'short_content', 'content'),
            'Мета данные' => array('s_title', 's_description', 's_keywords'),
        );

        $this->add_plugin(new CM_Form_Plugin_Fieldgroups($fieldgroups));
    }
}