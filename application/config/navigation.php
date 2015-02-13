<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 */

return array(
    'admin.comment.index' => array(
        'title' => 'Список отзывов',
        'route' => 'admin-comment'
    ),
    'admin.comment.edit' => array(
        'title' => 'Редактирование отзыва',
        'route' => 'admin-comment:edit',
        'parent' => 'admin.comment.index'
    ),
    'admin.comment.create' => array(
        'title' => 'Добавление отзыва',
        'route' => 'admin-comment:create',
        'parent' => 'admin.comment.index'
    ),

    'admin.brief.index' => array(
        'title' => 'Список заявок',
        'route' => 'admin-brief'
    ),
    'admin.brief.edit' => array(
        'title' => 'Редактирование заявок',
        'route' => 'admin-brief:edit',
        'parent' => 'admin.brief.index'
    ),
    'admin.brief.create' => array(
        'title' => 'Добавление заявки',
        'route' => 'admin-brief:create',
        'parent' => 'admin.brief.index'
    ),

    'admin.slide.index' => array(
        'title' => 'Список слайдов',
        'route' => 'admin-slide'
    ),
    'admin.slide.edit' => array(
        'title' => 'Редактирование слайда',
        'route' => 'admin-slide:edit',
        'parent' => 'admin.slide.index'
    ),
    'admin.slide.create' => array(
        'title' => 'Добавление слайда',
        'route' => 'admin-slide:create',
        'parent' => 'admin.slide.index'
    ),

    'admin.news_category.index' => array(
        'title' => 'Список категорий новостей',
        'route' => 'admin-news_category'
    ),
    'admin.news_category.edit' => array(
        'title' => 'Редактирование категории новостей',
        'route' => 'admin-news_category:edit',
        'parent' => 'admin.news_category.index'
    ),
    'admin.news_category.create' => array(
        'title' => 'Добавление категории новостей',
        'route' => 'admin-news_category:create',
        'parent' => 'admin.news_category.index'
    ),

    'admin.news.index' => array(
        'title' => 'Список новостей',
        'route' => 'admin-news'
    ),
    'admin.news.edit' => array(
        'title' => 'Редактирование новости',
        'route' => 'admin-news:edit',
        'parent' => 'admin.news.index'
    ),
    'admin.news.create' => array(
        'title' => 'Добавление новости',
        'route' => 'admin-news:create',
        'parent' => 'admin.news.index'
    ),

    'admin.article.index' => array(
        'title' => 'Список статей',
        'route' => 'admin-article'
    ),
    'admin.article.edit' => array(
        'title' => 'Редактирование статьи',
        'route' => 'admin-article:edit',
        'parent' => 'admin.article.index'
    ),
    'admin.article.create' => array(
        'title' => 'Добавление статьи',
        'route' => 'admin-article:create',
        'parent' => 'admin.article.index'
    ),

    'admin.ourproduct.index' => array(
        'title' => 'Список наших работ',
        'route' => 'admin-ourproduct'
    ),
    'admin.ourproduct.edit' => array(
        'title' => 'Редактирование наших работ',
        'route' => 'admin-ourproduct:edit',
        'parent' => 'admin.ourproduct.index'
    ),
    'admin.ourproduct.create' => array(
        'title' => 'Добавление наших работ',
        'route' => 'admin-ourproduct:create',
        'parent' => 'admin.ourproduct.index'
    ),

    'admin.ourproduct_category.index' => array(
        'title' => 'Список категорий работ',
        'route' => 'admin-ourproduct_category'
    ),
    'admin.ourproduct_category.edit' => array(
        'title' => 'Редактирование категории работ',
        'route' => 'admin-ourproduct_category:edit',
        'parent' => 'admin.ourproduct_category.index'
    ),
    'admin.ourproduct_category.create' => array(
        'title' => 'Добавление категории работ',
        'route' => 'admin-ourproduct_category:create',
        'parent' => 'admin.ourproduct_category.index'
    ),

    'admin.service.index' => array(
        'title' => 'Список услуг',
        'route' => 'admin-service'
    ),
    'admin.service.edit' => array(
        'title' => 'Редактирование услуги',
        'route' => 'admin-service:edit',
        'parent' => 'admin.service.index'
    ),
    'admin.service.create' => array(
        'title' => 'Добавление услуги',
        'route' => 'admin-service:create',
        'parent' => 'admin.service.index'
    ),

    'admin.service_category.index' => array(
        'title' => 'Список категорий услуг',
        'route' => 'admin-service_category'
    ),
    'admin.service_category.edit' => array(
        'title' => 'Редактирование категории услуги',
        'route' => 'admin-service_category:edit',
        'parent' => 'admin.service_category.index'
    ),
    'admin.service_category.create' => array(
        'title' => 'Добавление категории услуги',
        'route' => 'admin-service_category:create',
        'parent' => 'admin.service_category.index'
    ),
);