<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site extends Controller
{
	private $_items_on_page;
	private $_object_name;

	protected $_model;

	public function before()
	{
		parent::before();
		
		$this->template->set_layout('layout/site/global');


        $service_category = ORM::factory('Service_Category')->where('active','=',1)->order_by('position','asc')->find_all();
        $service = ORM::factory('Service')->where('active','=',1)->order_by('position','asc')->find_all();
        $this->template->service_category = $service_category;
        $this->template->service = $service;
		
		$this->template->last_news_item = ORM::factory('News')->where('category_id', '=', 1)
											->where('active', '=', 1)
											->order_by('id', 'DESC')
											->limit(1)->find();
	}
	
    public function set_metatags_and_content($url, $name = 'page', $items_on_page = null)
    {
        $nameParts = explode('_', $name);
        foreach ($nameParts as &$namePart) {
            $namePart = mb_strtolower($namePart);
            $namePart = ucfirst($namePart);
        }

        $name = join('_', $nameParts);
        unset($nameParts);
        unset($namePart);

        $model = ORM::factory($name)
            ->get_page_by_url($url);

        if(!$model->loaded() || (isset($model->md5_url) && $model->md5_url != md5($url))) {
           // $this->forward_404();
        }

		$this->_items_on_page = $items_on_page;
		$this->_model = $model;

        $this->template->model = $model;

		$this->_object_name = str_replace('Model_', '', get_class($this->_model));

		$list_columns = $this->_model->list_columns();

		foreach ($list_columns as $column => $params) {
			$this->template->$column = $this->_model->$column;
			switch ($column) {
				case 's_title': {
					$this->template->s_title = $this->set_title();
					break;
				}
			}
		}

		foreach ($this->_model->has_many() as $column => $params) {
			if ($this->_items_on_page && $column != 'children') {
				$pagination_items = $this->get_pagination_items($column, $params);
				$this->template->$column = $pagination_items['items'];
				if ($pagination_items['pagination']) { 
					$this->template->pagination = $pagination_items['pagination'];
				}
			}
			else {
				$this->template->$column = $this->_model->$column->fetchActive();
			}
		}

		foreach ($this->_model->belongs_to() as $column => $params) {
            if (in_array('md5_url', array_keys(ORM::factory($params['model'])->list_columns()))) {
                $model = ORM::factory($params['model'])->fetchByUrl($this->param($column));

                if ($model->id != $this->_model->{$params['foreign_key']} && $column != 'parent') {
                    //$this->forward_404();
                }
                foreach ($model->list_columns() as $model_column => $model_params) {
                    $this->template->{$column . '_' . $model_column} = $model->$model_column;
                }
            }
		}

		if (isset($list_columns['more_images'])) {
			$this->template->content = $this->replace_images();
		}
    }

	private function set_title()
	{
		$title = $this->_model->name;

		if($this->_model->s_title) {
			$title = $this->_model->s_title;
		}

		return $title;
	}

	private function replace_images()
	{
		$content = preg_replace_callback('%(\[.*\])%isU', function($match) {
			$more_images = json_decode($this->_model->more_images);
			if (!strstr($match[1], '|')) {
				$match[1] = str_replace(']', '|]', $match[1]);
			}
			$parts = explode('|', $match[1]);
			$image_num = str_replace('[image_', '', $parts[0]) - 1;
			$image_alt = str_replace(']', '', $parts[1]);
			if (isset($more_images[$image_num]) && $image = $more_images[$image_num]) {
				return '<img src="' . Lib_Image::resize_width(
							$image,
							mb_strtolower($this->_object_name),
							$this->_model->id,
							Model_Article::BIG_WIDTH
						) . '" class="img-rounded" alt="' . $image_alt . '" />';
			}
		}, $this->_model->content);

		return $content;
	}
	

	private function get_pagination_items($column, array $params = array())
	{
		$result = array();

		$countItems = ORM::factory($this->_object_name)->fetchCountByModelId($this->_model->id, $column);
		$page = intval($this->param('page'));

		if ($page == 1) {
			$url = str_replace('/' . $page, '', $this->request->url());
			$this->redirect($url, 301);
		}

		if (is_null($this->param('page'))) {
			$page = 1;
		}
		
		$max_pages = intval(ceil($countItems / $this->_items_on_page));
		if (!$max_pages) {
			$max_pages = 1;
		}
		
		$required = Arr::get($params, 'required');
		
		if ($page < 1 || ($required && $page > $max_pages)) {
			$this->forward_404();
		}

		$result['items'] =
			ORM::factory($this->_object_name)->fetchPageByParentModelId(
				$this->_model->id,
				$this->_items_on_page,
				/*offset*/($page - 1) * $this->_items_on_page,
				$column,
				Arr::get($_GET, 'order'),
				Arr::get($_GET, 'dest')
			);

		$result['pagination'] =
			Pagination::factory(
				array(
					'current_page'   => array('source' => 'route', 'key' => 'page'),
					'total_items'    => $countItems,
					'items_per_page' => $this->_items_on_page,
					'view' => 'site/pagination/view'
				)
			)->render();

		return $result;
	}
}