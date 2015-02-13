<?php defined('SYSPATH') or die('No direct script access.');

class Model_News_Category extends ORM
{
    protected $_table_name = 'news_categories';

    protected $_has_many = array(
        'news' => array(
            'model' => 'News',
        )
    );

	public function labels()
    {
        return array(
			'id' => 'Идентификатор',
			'name' => 'Наименование',
            'active' => 'Активность',
            'url' => 'URL',
            'position' => 'Позиция',
            's_title' => 'SEO title',
            's_description' => 'SEO description',
            's_keywords' => 'SEO keywords'
        );
    }
	
	public function form()
    {
        return new Form_Admin_News_Category($this);
    }

    public function save($validation)
    {
        $this->md5_url = md5($this->url);

        parent::save($validation);

    }

	protected $_grid_columns = array(
		'name' => null,
        'id' => null,
        'position' => null,
        'active' => null,
		'edit' => array(
			'width' => '40',
			'type' => 'link',
			'route_str' => 'admin-news_category:edit?id=${id}',
			'title' => '<i class="fa fa-edit"></i>',
			'color' => 'green',
			'alternative' => 'Редактировать'
		),
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-news_category:delete?id=${id}',
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
            'id',
            'position',
            'active'
        );
    }
}