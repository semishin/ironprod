<?php defined('SYSPATH') or die('No direct script access.');

class Model_Service extends ORM
{
    protected $_table_name = 'services';

    protected $_belongs_to = array(
        'category' => array(
            'model'       => 'Service_Category',
            'foreign_key' => 'category_id',
        )
    );

    public function labels()
    {
        return array(
            'id' => 'Идентификатор',
            'name' => 'Наименование',
            'content' => 'Контент',
            'url' => 'URL',
            'category_id' => 'Категория',
            'position' => 'Позиция',
            'active' => 'Активность',
            'main_image' => 'Главное изображение',
            'images' => 'Изображения',
            's_title' => 'SEO title',
            's_description' => 'SEO description',
            's_keywords' => 'SEO keywords'
        );
    }

    public function form()
    {
        return new Form_Admin_Service($this);
    }

    public function save($validation)
    {
        $this->md5_url = md5($this->url);

        parent::save($validation);

    }

    protected $_grid_columns = array(
        'name' => null,
        'category_id' => array(
            'type' => 'template',
            'template' => '${category_name}'
        ),
        'position' => null,
        'active' => null,
        'edit' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-service:edit?id=${id}',
            'title' => '<i class="fa fa-edit"></i>',
            'color' => 'green',
            'alternative' => 'Редактировать'
        ),
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-service:delete?id=${id}',
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
            'name',
            'category_id',
            'position',
            'active'
        );
    }
}