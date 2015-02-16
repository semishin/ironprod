<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2015-02-16 16:56:03 --- EMERGENCY: Kohana_Exception [ 0 ]: Not an image or invalid image:  ~ MODPATH/image/classes/Kohana/Image.php [ 107 ] in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91
2015-02-16 16:56:03 --- DEBUG: #0 /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php(91): Kohana_Image->__construct('/home/sema/www/...')
#1 /home/sema/www/ironprod/modules/image/classes/Kohana/Image.php(54): Kohana_Image_GD->__construct('/home/sema/www/...')
#2 /home/sema/www/ironprod/modules/ariol/classes/CM/Form/Abstract.php(175): Kohana_Image::factory('/home/sema/www/...')
#3 /home/sema/www/ironprod/modules/ariol/classes/CM/Form/Abstract.php(97): CM_Form_Abstract->after_submit()
#4 /home/sema/www/ironprod/modules/ariol/classes/Controller/Crud.php(216): CM_Form_Abstract->submit()
#5 /home/sema/www/ironprod/modules/ariol/classes/Controller/Crud.php(190): Controller_Crud->process_form(Object(Model_Service))
#6 /home/sema/www/ironprod/system/classes/Kohana/Controller.php(84): Controller_Crud->action_create()
#7 [internal function]: Kohana_Controller->execute()
#8 /home/sema/www/ironprod/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin_Service))
#9 /home/sema/www/ironprod/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#10 /home/sema/www/ironprod/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#11 /home/sema/www/ironprod/index.php(131): Kohana_Request->execute()
#12 {main} in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91
2015-02-16 16:57:04 --- EMERGENCY: Kohana_Exception [ 0 ]: Not an image or invalid image:  ~ MODPATH/image/classes/Kohana/Image.php [ 107 ] in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91
2015-02-16 16:57:04 --- DEBUG: #0 /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php(91): Kohana_Image->__construct('/home/sema/www/...')
#1 /home/sema/www/ironprod/modules/image/classes/Kohana/Image.php(54): Kohana_Image_GD->__construct('/home/sema/www/...')
#2 /home/sema/www/ironprod/modules/ariol/classes/CM/Form/Abstract.php(175): Kohana_Image::factory('/home/sema/www/...')
#3 /home/sema/www/ironprod/modules/ariol/classes/CM/Form/Abstract.php(97): CM_Form_Abstract->after_submit()
#4 /home/sema/www/ironprod/modules/ariol/classes/Controller/Crud.php(216): CM_Form_Abstract->submit()
#5 /home/sema/www/ironprod/modules/ariol/classes/Controller/Crud.php(202): Controller_Crud->process_form(Object(Model_Service))
#6 /home/sema/www/ironprod/system/classes/Kohana/Controller.php(84): Controller_Crud->action_edit()
#7 [internal function]: Kohana_Controller->execute()
#8 /home/sema/www/ironprod/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin_Service))
#9 /home/sema/www/ironprod/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#10 /home/sema/www/ironprod/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#11 /home/sema/www/ironprod/index.php(131): Kohana_Request->execute()
#12 {main} in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91
2015-02-16 16:58:21 --- EMERGENCY: Kohana_Exception [ 0 ]: Not an image or invalid image:  ~ MODPATH/image/classes/Kohana/Image.php [ 107 ] in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91
2015-02-16 16:58:21 --- DEBUG: #0 /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php(91): Kohana_Image->__construct('/home/sema/www/...')
#1 /home/sema/www/ironprod/modules/image/classes/Kohana/Image.php(54): Kohana_Image_GD->__construct('/home/sema/www/...')
#2 /home/sema/www/ironprod/modules/ariol/classes/CM/Form/Abstract.php(175): Kohana_Image::factory('/home/sema/www/...')
#3 /home/sema/www/ironprod/modules/ariol/classes/CM/Form/Abstract.php(97): CM_Form_Abstract->after_submit()
#4 /home/sema/www/ironprod/modules/ariol/classes/Controller/Crud.php(216): CM_Form_Abstract->submit()
#5 /home/sema/www/ironprod/modules/ariol/classes/Controller/Crud.php(202): Controller_Crud->process_form(Object(Model_Service))
#6 /home/sema/www/ironprod/system/classes/Kohana/Controller.php(84): Controller_Crud->action_edit()
#7 [internal function]: Kohana_Controller->execute()
#8 /home/sema/www/ironprod/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin_Service))
#9 /home/sema/www/ironprod/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#10 /home/sema/www/ironprod/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#11 /home/sema/www/ironprod/index.php(131): Kohana_Request->execute()
#12 {main} in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91