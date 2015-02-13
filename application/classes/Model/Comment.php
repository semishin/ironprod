<?php defined('SYSPATH') or die('No direct script access.');

class Model_Comment extends ORM
{
    protected $_table_name = 'comments';

    protected $_belongs_to = array(
    );


    public function labels()
    {
        return array(
            'id' => 'Идентификатор',
            'name' => 'Имя',
            'date'=>'Дата',
            'active' => 'Активность',
            'content' => 'Контент',
        );
    }

    public function form()
    {
        return new Form_Admin_Comment($this);
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

        'name' => null,
        'date' => null,
        'active' => null,

        'edit' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-comment:edit?id=${id}',
            'title' => '<i class="fa fa-edit"></i>',
            'color' => 'green',
            'alternative' => 'Редактировать'
        ),
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-comment:delete?id=${id}',
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
            'date'
        );
    }

}