<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2015-02-11 16:15:08 --- EMERGENCY: Kohana_Exception [ 0 ]: Not an image or invalid image:  ~ MODPATH/image/classes/Kohana/Image.php [ 107 ] in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91
2015-02-11 16:15:08 --- DEBUG: #0 /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php(91): Kohana_Image->__construct('/home/sema/www/...')
#1 /home/sema/www/ironprod/modules/image/classes/Kohana/Image.php(54): Kohana_Image_GD->__construct('/home/sema/www/...')
#2 /home/sema/www/ironprod/modules/ariol/classes/Lib/Image.php(127): Kohana_Image::factory('/home/sema/www/...')
#3 /home/sema/www/ironprod/application/views/site/service/category.php(23): Lib_Image::crop('/files/service/...', 'service_categor...', '23', 286, 191)
#4 /home/sema/www/ironprod/system/classes/Kohana/View.php(61): include('/home/sema/www/...')
#5 /home/sema/www/ironprod/system/classes/Kohana/View.php(348): Kohana_View::capture('/home/sema/www/...', Array)
#6 /home/sema/www/ironprod/modules/ariol/classes/Extasy/View.php(27): Kohana_View->render(NULL)
#7 /home/sema/www/ironprod/system/classes/Kohana/View.php(228): Extasy_View->render()
#8 /home/sema/www/ironprod/modules/ariol/classes/Extasy/Controller.php(66): Kohana_View->__toString()
#9 /home/sema/www/ironprod/system/classes/Kohana/Controller.php(87): Extasy_Controller->after()
#10 [internal function]: Kohana_Controller->execute()
#11 /home/sema/www/ironprod/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Site_Service))
#12 /home/sema/www/ironprod/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#13 /home/sema/www/ironprod/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#14 /home/sema/www/ironprod/index.php(131): Kohana_Request->execute()
#15 {main} in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91