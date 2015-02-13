<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 */

return array
(
	Application::NAME => array
	(
        '<i class="fa fa-picture-o"></i>|Слайды' => 'admin-slide',
        '<i class="fa fa-bell-o"></i>|Коментарии' => 'admin-comment',
        '<i class="fa fa-bell-o"></i>|Заявки от клиентов' => 'admin-brief',
		'<i class="fa fa-comments-o"></i>|Новости' => array(
			'<i class="fa fa-comments"></i>|Категории' => 'admin-news_category',
			'<i class="fa fa-comments-o"></i>|Новости' => 'admin-news',
		),
        '<i class="fa fa-edit"></i>|Статьи' => 'admin-article',
        '<i class="fa fa-briefcase"></i>|Наши работы' => array(
            '<i class="fa fa-briefcase"></i>|Категории работ' => 'admin-ourproduct_category',
            '<i class="fa fa-briefcase"></i>|Наши работы' => 'admin-ourproduct',
        ),
        '<i class="fa  fa-thumbs-o-up"></i>|Услуги' => array(
            '<i class="fa fa-book"></i>|Категории услуг' => 'admin-service_category',
            '<i class="fa  fa-wrench"></i>|Услуги' => 'admin-service',
        ),
		'<i class="fa fa-key"></i>|Войти' => 'admin-auth:login',
		'<i class="fa fa-key"></i>|Сбросить пароль' => 'admin-auth:reset_password_step_1',
		'<i class="fa fa-gears"></i>|Служебное' => array(
			'<i class="fa fa-gear"></i>|Настройки' => 'admin-config',
			'<i class="fa fa-user"></i>|Пользователи' => 'admin-user',
		),
	)
);