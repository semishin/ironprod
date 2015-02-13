<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2014-11-27 15:17:30 --- EMERGENCY: Kohana_Exception [ 0 ]: Not an image or invalid image:  ~ MODPATH/image/classes/Kohana/Image.php [ 107 ] in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91
2014-11-27 15:17:30 --- DEBUG: #0 /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php(91): Kohana_Image->__construct('/home/sema/www/...')
#1 /home/sema/www/ironprod/modules/image/classes/Kohana/Image.php(54): Kohana_Image_GD->__construct('/home/sema/www/...')
#2 /home/sema/www/ironprod/modules/ariol/classes/Lib/Image.php(127): Kohana_Image::factory('/home/sema/www/...')
#3 /home/sema/www/ironprod/application/views/layout/site/global.php(168): Lib_Image::crop('/files/service_...', 'service_section', '3', 256, 256)
#4 /home/sema/www/ironprod/system/classes/Kohana/View.php(61): include('/home/sema/www/...')
#5 /home/sema/www/ironprod/system/classes/Kohana/View.php(348): Kohana_View::capture('/home/sema/www/...', Array)
#6 /home/sema/www/ironprod/modules/ariol/classes/Extasy/View.php(28): Kohana_View->render('layout/site/glo...')
#7 /home/sema/www/ironprod/system/classes/Kohana/View.php(228): Extasy_View->render()
#8 /home/sema/www/ironprod/modules/ariol/classes/Extasy/Controller.php(66): Kohana_View->__toString()
#9 /home/sema/www/ironprod/system/classes/Kohana/Controller.php(87): Extasy_Controller->after()
#10 [internal function]: Kohana_Controller->execute()
#11 /home/sema/www/ironprod/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Site_Index))
#12 /home/sema/www/ironprod/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#13 /home/sema/www/ironprod/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#14 /home/sema/www/ironprod/index.php(131): Kohana_Request->execute()
#15 {main} in /home/sema/www/ironprod/modules/image/classes/Kohana/Image/GD.php:91
2014-11-27 17:54:27 --- EMERGENCY: Kohana_Exception [ 0 ]: The requested route does not exist: admin-product_category ~ SYSPATH/classes/Kohana/Route.php [ 109 ] in /home/sema/www/ironprod/modules/ariol/classes/Extasy/ACL.php:39
2014-11-27 17:54:27 --- DEBUG: #0 /home/sema/www/ironprod/modules/ariol/classes/Extasy/ACL.php(39): Kohana_Route::get('admin-product_c...')
#1 /home/sema/www/ironprod/modules/ariol/classes/Extasy/Grid/Column/Link.php(61): Extasy_ACL::is_route_allowed('admin-product_c...')
#2 /home/sema/www/ironprod/modules/ariol/classes/Extasy/Grid/Column.php(71): Extasy_Grid_Column_Link->_field(Object(Model_Service_Category))
#3 /home/sema/www/ironprod/modules/ariol/classes/Extasy/Orm.php(489): Extasy_Grid_Column->field(Object(Model_Service_Category))
#4 /home/sema/www/ironprod/modules/ariol/classes/Controller/Crud.php(176): Extasy_Orm->grid_value('edit')
#5 /home/sema/www/ironprod/system/classes/Kohana/Controller.php(84): Controller_Crud->action_get_grid_data()
#6 [internal function]: Kohana_Controller->execute()
#7 /home/sema/www/ironprod/system/classes/Kohana/Request/Client/Internal.php(97): ReflectionMethod->invoke(Object(Controller_Admin_Service_Category))
#8 /home/sema/www/ironprod/system/classes/Kohana/Request/Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#9 /home/sema/www/ironprod/system/classes/Kohana/Request.php(986): Kohana_Request_Client->execute(Object(Request))
#10 /home/sema/www/ironprod/index.php(131): Kohana_Request->execute()
#11 {main} in /home/sema/www/ironprod/modules/ariol/classes/Extasy/ACL.php:39