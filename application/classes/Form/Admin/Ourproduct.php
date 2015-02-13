<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 * @author o.zgolich
 */

class Form_Admin_Ourproduct extends CM_Form_Abstract
{
    protected function init()
    {
        $this->add_plugin(new CM_Form_Plugin_ORM());

        $this->set_field('category_id', new CM_Field_Select_ORM(ORM::factory('Ourproduct_Category')), 0);
        $this->set_field('image', new CM_Field_File(), 2);
        $this->set_field('position', new CM_Field_Int(), 4);
        $this->set_field('active', new CM_Field_Boolean(), 6);
        $this->set_field('date', new CM_Field_Date(), 8);


        $fieldgroups = array(
            'Основные данные' => array('category_id', 'image', 'position', 'active', 'date'),
        );

        $this->add_plugin(new CM_Form_Plugin_Fieldgroups($fieldgroups));
    }
}