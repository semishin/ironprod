<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 */

class Model_Feedback extends ORM
{
    protected $_table_name = 'feedback';

    protected $_grid_columns = array(
		'name' => NULL,
		'phone' => NULL,
        'text' => NULL,
        'email' => NULL,
		'updated_at' => NULL,
        'delete' => array(
            'width' => '40',
            'type' => 'link',
            'route_str' => 'admin-feedback:delete?id=${id}',
            'title' => '<i class="fa fa-trash-o"></i>',
            'alternative' => 'Удалить',
			'color' => 'red',
            'confirm' => 'Вы уверены?'
        )
    );
	
	public function labels()
	{
	    return array(
            'name' => 'Имя',
			'phone' => 'Телефон',
            'status' => 'Статус',
            'updated_at' => 'Дата поступления',
            'text' => 'Текст',
            'email' => 'Email',
            'answers' => 'Количество ответов'
	    );
	}
	
	public function rules()
	{
	    return array(
            'name' => array(
                array('not_empty')
            )
	    );
	}

    public function form()
	{
		return new Form_Admin_Feedback($this);
	}

    protected $_grid_options = array(
		'order_by' => 'updated_at',
		'order_direction' => 'ASC',
		'per_page' => 500
	);
	
	public function get_status_name()
	{
	    switch($this->status)
	    {
            case 'open':
                return 'Открыт';
            case 'in_process':
                return 'Принят в работу';
            case 'closed':
                return 'Закрыт';
	    }
	}
}