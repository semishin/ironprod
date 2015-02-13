<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 * @author o.zgolich
 */

$adminPrefix = Kohana::$config->load('extasy')->admin_path_prefix;

Route::set('admin-slide', $adminPrefix . 'slide(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'slide',
        'action' => 'index'
    ));

Route::set('admin-news_category', $adminPrefix . 'news_category(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'news_category',
        'action' => 'index'
    ));

Route::set('admin-news', $adminPrefix . 'news(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'news',
        'action' => 'index'
    ));

Route::set('admin-comment', $adminPrefix . 'comment(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'comment',
        'action' => 'index'
    ));

Route::set('admin-article', $adminPrefix . 'article(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'article',
        'action' => 'index'
    ));

Route::set('admin-ourproduct', $adminPrefix . 'ourproduct(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'ourproduct',
        'action' => 'index'
    ));

Route::set('admin-brief', $adminPrefix . 'brief(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'brief',
        'action' => 'index'
    ));

Route::set('admin-ourproduct_category', $adminPrefix . 'ourproduct_category(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'ourproduct_category',
        'action' => 'index'
    ));

Route::set('admin-service', $adminPrefix . 'service(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'service',
        'action' => 'index'
    ));

Route::set('admin-service_category', $adminPrefix . 'service_category(/<action>(/<id>))')
    ->defaults(array(
        'directory' => 'admin',
        'controller' => 'service_category',
        'action' => 'index'
    ));
