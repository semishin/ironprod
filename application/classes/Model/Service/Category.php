<?php defined('SYSPATH') or die('No direct script access.');

class Model_Service_Category extends ORM
{
    protected $_table_name = 'services_categories';

    protected $_has_many = array(
        'services' => array(
            'model' => 'Service',
            'foreign_key' => 'category_id'
        )
    );



    public function labels()
    {
        return array(
            'id' => 'Идентификатор',
            'name' => 'Наименование',
            'content' => 'Контент',
            'active' => 'Активность',
            'images' => 'Изображения',
            'url' => 'URL',
            'position'=>'Позиция',
            's_title' => 'SEO title',
            's_description' => 'SEO description',
            's_keywords' => 'SEO keywords'
        );
    }

    public function form()
    {
        return new Form_Admin_Service_Category($this);
    }

    public function save($validation)
    {
        $this->md5_url = md5($this->url);

        parent::save($validation);

    }

    protected $_grid_columns = array(
        'name' => null,
        'position' => null,
        'id' => null,
        'active' => null,
//        'name' => array(
//            'type'=>'name',
//            'route_str'=>'admin-event_section:edit?id=${id}',
//            'external_url'=>'admin-event_section:edit?id=${id}',
//        ),
        'edit' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-service_category:edit?id=${id}',
            'title' => '<i class="fa fa-edit"></i>',
            'color' => 'green',
            'alternative' => 'Редактировать'
        ),
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-service_category:delete?id=${id}',
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
            'position',
            'id',
            'active'
        );
    }
}