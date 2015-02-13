<?php defined('SYSPATH') or die('No direct script access.');

class Model_Ourproduct_Category extends ORM
{
    protected $_table_name = 'ourproducts_categories';

    protected $_belongs_to = array(
    );

    protected $_has_many = array(
        'ourproducts' => array(
            'model' => 'Ourproduct',
            'foreign_key' => 'category_id',
        )
    );


    public function labels()
    {
        return array(
            'id' => 'Идентификатор',
            'name' => 'Наименование',
            'active' => 'Активность',
            'position' => 'Позиция',
        );
    }

    public function form()
    {
        return new Form_Admin_Ourproduct_Category($this);
    }

    protected $_grid_columns = array(

        'name' => null,
        'position' => null,
        'active' => null,

        'edit' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-ourproduct_category:edit?id=${id}',
            'title' => '<i class="fa fa-edit"></i>',
            'color' => 'green',
            'alternative' => 'Редактировать'
        ),
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-ourproduct_category:delete?id=${id}',
            'title' => '<i class="fa fa-trash-o"></i>',
            'alternative' => 'Удалить',
            'color' => 'red',
            'confirm' => 'Вы уверены?'
        )
    );

    public function sortable_fields()
    {
        return array(
            'name',
            'position'
        );
    }
}