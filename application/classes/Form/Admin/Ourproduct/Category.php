<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 * @author o.zgolich
 */

class Form_Admin_Ourproduct_Category extends CM_Form_Abstract
{
    protected function init()
    {
        $this->add_plugin(new CM_Form_Plugin_ORM());

        $this->set_field('name', new CM_Field_String(), 0);
        $this->set_field('position', new CM_Field_Int(), 2);
        $this->set_field('active', new CM_Field_Boolean(), 4);


        $fieldgroups = array(
            'Основные данные' => array('name', 'position', 'active'),
        );

        $this->add_plugin(new CM_Form_Plugin_Fieldgroups($fieldgroups));
    }
}