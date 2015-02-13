<?php defined('SYSPATH') or die('No direct script access.');

class Model_Article extends ORM
{
    protected $_table_name = 'articles';

    protected $_belongs_to = array(

    );

    public function labels()
    {
        return array(
            'id' => 'Идентификатор',
            'name' => 'Наименование',
            'content' => 'Контент',
            'short_content' => 'Сокращенный контент',
            'position' => 'Позиция',
            'active' => 'Активность',
            'url' => 'URL',
            'date' => 'Дата публикации',
            's_title' => 'SEO title',
            's_description' => 'SEO description',
            's_keywords' => 'SEO keywords'
        );
    }

    public function form()
    {
        return new Form_Admin_Article($this);
    }

    public function save($validation)
    {
        $this->md5_url = md5($this->url);

        parent::save($validation);

        if (!$this->date) {
            $this->date = date('Y-m-d');
            $this->save($validation);
        }
    }

    protected $_grid_columns = array(
        'name' => null,
        'position' => null,
        'date' => null,
        'active' => null,
        'edit' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-article:edit?id=${id}',
            'title' => '<i class="fa fa-edit"></i>',
            'color' => 'green',
            'alternative' => 'Редактировать'
        ),
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-article:delete?id=${id}',
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
            'date',
            'active'
        );
    }
}