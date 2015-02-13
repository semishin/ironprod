<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 */

class Extasy_Grid_Column_More extends Grid_Column_Text
{
	protected $_route_str;

	public function __construct(array $column = array())
	{
		parent::__construct($column);

		$this->_route_str = Arr::get($column, 'route_str');
	}
	
	protected function _field($obj)
	{
		$editRoute = Extasy::obj_placeholders($obj, $this->_route_str);
		$editUrl = Extasy_Html::link_to_route($editRoute, 'Редактировать', array('class' => 'btn'));
		
		$value = 'Контент отсутствует';
		
		if (mb_strlen(trim(strip_tags($obj[$this->get_name()])))) {
			$value = mb_substr(strip_tags($obj[$this->get_name()]), 0, 75) .'... ' .
				'<a href="#modal-' . $obj->id . '" data-toggle="modal"><i class="fa fa-eye"></i></a>
				<div style="margin-top: 25px;" id="modal-' . $obj->id . '" class="modal fade" tabindex="1" role="dialog" aria-hidden="true">
					<div class="modal-dialog ariol-modal-dialog">
						<div class="modal-content ariol-modal-content">
							<div class="modal-body">
								'.$obj[$this->get_name()].'
							</div>
							<div class="modal-footer">'.$editUrl.'
								<button class="btn" data-dismiss="modal" aria-hidden="true">Закрыть</button>
							</div>
						</div>
					</div>
				</div>';
		}
		
		return View::factory($this->_field_template, array(
			'align' => $this->_align,
			'value' => $value
		));
	}
}