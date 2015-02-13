<?php defined('SYSPATH') or die('No direct script access.');

class Model_Brief extends ORM
{
    protected $_table_name = 'brief';

    protected $_belongs_to = array(

    );

    public function labels()
    {
        return array(
            'name' => 'Имя',
            'text' => 'Сообщение',
            'email' => 'Email',
            'phone' => 'Номер телефона',
        );
    }

    public function form()
    {
        return new Form_Admin_Brief($this);
    }



    protected $_grid_columns = array(
        //'id' => null,
        'name' => null,
        'email' => null,
        'edit' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-brief:edit?id=${id}',
            'title' => '<i class="fa fa-edit"></i>',
            'color' => 'green',
            'alternative' => 'Редактировать'
        ),
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-brief:delete?id=${id}',
            'title' => '<i class="fa fa-trash-o"></i>',
            'alternative' => 'Удалить',
            'color' => 'red',
            'confirm' => 'Вы уверены?'
        )
    );
}