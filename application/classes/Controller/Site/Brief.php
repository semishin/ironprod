<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Brief extends Controller_Site
{
    public function action_add()
    {
        $this->set_metatags_and_content('', 'page');
        if ($this->request->is_ajax()) {
            $email = $this->request->post('email');
            $name = $this->request->post('name');
            $phone = $this->request->post('phone');
            $text = $this->request->post('text');

            $brief = ORM::factory('Brief');
            $brief->email = $email;
            $brief->name = $name;
            $brief->phone = $phone;
            $brief->text = $text;
            $brief->save();

            Email::send('d.semishin@ariol.by', array('info@ironprod.by', 'Ironprod'),
                'Новая заявка в контактах',
                'Имя - '.$name.'<br/>'.
                'Email - '.$email.'<br/>'.
                'Телефон - '.$phone.'<br/>'.
                'Текст письма - '. $text.'<br/>',
                /*html*/true
            );

            Email::send('info@ironprod.by', array('info@ironprod.by', 'Ironprod'),
                'Новая заявка в контактах',
                'Имя - '.$name.'<br/>'.
                'Email - '.$email.'<br/>'.
                'Телефон - '.$phone.'<br/>'.
                'Текст письма - '. $text.'<br/>',
                /*html*/true
            );

            exit(json_encode(array()));
        }
        $this->forward_404();
    }

    public function action_item_add()
    {
        $this->set_metatags_and_content('', 'page');
        if ($this->request->is_ajax()) {
            $email = $this->request->post('email');
            $name = $this->request->post('name');
            $phone = $this->request->post('phone');
            $text = $this->request->post('text');


            Email::send('d.semishin@ariol.by', array('info@ironprod.by', 'Ironprod'),
                'Новая заявка в контактах',
                'Имя - '.$name.'<br/>'.
                'Email - '.$email.'<br/>'.
                'Телефон - '.$phone.'<br/>'.
                'Текст письма - '. $text.'<br/>',
                /*html*/true
            );


            exit(json_encode(array()));
        }
        $this->forward_404();
    }
}