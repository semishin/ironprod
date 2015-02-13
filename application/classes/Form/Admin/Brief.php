<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 * @author o.zgolich
 */

class Form_Admin_Brief extends CM_Form_Abstract
{
    protected function init()
    {
        $this->add_plugin(new CM_Form_Plugin_ORM());

        $this->set_field('name', new CM_Field_String(), 1);
        $this->set_field('email', new CM_Field_String(), 6);
        $this->set_field('phone', new CM_Field_String(), 7);
        $this->set_field('text', new CM_Field_HTML(), 19);

        $fieldgroups = array(
            'Основные данные' => array('name', 'email', 'phone', 'text'),
        );

        $this->add_plugin(new CM_Form_Plugin_Fieldgroups($fieldgroups));
    }
}