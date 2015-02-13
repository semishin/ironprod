<?php defined('SYSPATH') or die('No direct script access.');

class Model_Ourproduct extends ORM
{
    protected $_table_name = 'ourproducts';

    protected $_belongs_to = array(
        'category' => array(
            'model'       => 'Ourproduct_Category',
            'foreign_key' => 'category_id',
        )
    );

    public function labels()
    {
        return array(
            'id' => 'Идентификатор',
            'category_id' => 'Категория',
            'image' => 'Изображение',
            'position' => 'Позиция',
            'active' => 'Активность',
            'date' => 'Дата публикации'

        );
    }

    public function form()
    {
        return new Form_Admin_Ourproduct($this);
    }

    public function save($validation)
    {
        parent::save($validation);

        if (!$this->date) {
            $this->date = date('Y-m-d');
            $this->save($validation);
        }
    }

    protected $_grid_columns = array(
        'id' => null,
        'category_id' => array(
            'type' => 'template',
            'template' => '${category_name}'
        ),
        'position' => null,
        'active' => null,
        'edit' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-ourproduct:edit?id=${id}',
            'title' => '<i class="fa fa-edit"></i>',
            'color' => 'green',
            'alternative' => 'Редактировать'
        ),
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-ourproduct:delete?id=${id}',
            'title' => '<i class="fa fa-trash-o"></i>',
            'alternative' => 'Удалить',
            'color' => 'red',
            'confirm' => 'Вы уверены?'
        )
    );

    public function get_category_name()
    {
        return $this->category->name;
    }

    public function sortable_fields()
    {
        return array(
            'category_id',
            'position',
            'active'
        );
    }
}