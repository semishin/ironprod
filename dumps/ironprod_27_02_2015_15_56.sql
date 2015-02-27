-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "articles" ---------------------------------
CREATE TABLE `articles` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`url` VarChar( 512 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`md5_url` Char( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`position` Int( 3 ) UNSIGNED NOT NULL, 
	`content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_description` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_keywords` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`active` TinyInt( 1 ) UNSIGNED NOT NULL, 
	`date` Date NOT NULL, 
	`short_content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- ---------------------------------------------------------


-- CREATE TABLE "brief" ------------------------------------
CREATE TABLE `brief` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`phone` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`text` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 21;
-- ---------------------------------------------------------


-- CREATE TABLE "changelog" --------------------------------
CREATE TABLE `changelog` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`created_at` Int( 10 ) UNSIGNED NOT NULL, 
	`filename` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "comments" ---------------------------------
CREATE TABLE `comments` ( 
	`id` Int( 100 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`date` Date NOT NULL, 
	`active` TinyInt( 1 ) UNSIGNED NOT NULL DEFAULT '0',
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- ---------------------------------------------------------


-- CREATE TABLE "config" -----------------------------------
CREATE TABLE `config` ( 
	`group` VarChar( 128 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`key` VarChar( 128 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`value` Text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	 PRIMARY KEY ( `group`,`key` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "feedback" ---------------------------------
CREATE TABLE `feedback` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`updated_at` Timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
	`text` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`status` Enum( 'open', 'in_process', 'closed' ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'open', 
	`answers` Int( 10 ) NULL DEFAULT '0', 
	`phone` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = MyISAM
AUTO_INCREMENT = 8;
-- ---------------------------------------------------------


-- CREATE TABLE "menu" -------------------------------------
CREATE TABLE `menu` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 55 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`url` VarChar( 55 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`parent_id` Int( 10 ) UNSIGNED NULL, 
	`position` Int( 10 ) NOT NULL DEFAULT '0', 
	`active` TinyInt( 1 ) NOT NULL DEFAULT '1', 
	`updated_at` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "news" -------------------------------------
CREATE TABLE `news` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`s_title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`s_description` VarChar( 350 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`s_keywords` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`url` VarChar( 512 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`active` TinyInt( 1 ) NULL DEFAULT '0', 
	`md5_url` Char( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`date` Date NOT NULL, 
	`content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`category_id` Int( 10 ) UNSIGNED NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = MyISAM
AUTO_INCREMENT = 100;
-- ---------------------------------------------------------


-- CREATE TABLE "news_categories" --------------------------
CREATE TABLE `news_categories` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`url` VarChar( 512 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`md5_url` Char( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`active` TinyInt( 1 ) UNSIGNED NOT NULL, 
	`s_description` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_keywords` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`position` Int( 3 ) UNSIGNED NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = MyISAM
AUTO_INCREMENT = 6;
-- ---------------------------------------------------------


-- CREATE TABLE "ourproducts" ------------------------------
CREATE TABLE `ourproducts` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`active` TinyInt( 1 ) UNSIGNED NOT NULL, 
	`date` Date NOT NULL, 
	`category_id` Int( 10 ) UNSIGNED NOT NULL, 
	`position` Int( 3 ) UNSIGNED NOT NULL, 
	`image` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 21;
-- ---------------------------------------------------------


-- CREATE TABLE "ourproducts_categories" -------------------
CREATE TABLE `ourproducts_categories` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`position` Int( 3 ) UNSIGNED NOT NULL DEFAULT '1', 
	`active` TinyInt( 1 ) UNSIGNED NOT NULL DEFAULT '1',
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- ---------------------------------------------------------


-- CREATE TABLE "pages" ------------------------------------
CREATE TABLE `pages` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`s_title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`s_description` VarChar( 350 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`s_keywords` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`url` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`active` TinyInt( 1 ) NULL DEFAULT '0', 
	`updated_at` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	`static` TinyInt( 1 ) NULL DEFAULT '0', 
	`content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 31;
-- ---------------------------------------------------------


-- CREATE TABLE "services" ---------------------------------
CREATE TABLE `services` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`active` TinyInt( 1 ) UNSIGNED NOT NULL DEFAULT '0', 
	`category_id` Int( 10 ) UNSIGNED NOT NULL, 
	`content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`url` VarChar( 512 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`md5_url` Char( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_description` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_keywords` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`position` Int( 3 ) UNSIGNED NOT NULL, 
	`images` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`main_image` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 52;
-- ---------------------------------------------------------


-- CREATE TABLE "services_categories" ----------------------
CREATE TABLE `services_categories` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`url` VarChar( 512 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`md5_url` Char( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`position` Int( 3 ) UNSIGNED NOT NULL, 
	`content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`active` TinyInt( 1 ) UNSIGNED NOT NULL, 
	`s_description` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_keywords` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`s_title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`images` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 11;
-- ---------------------------------------------------------


-- CREATE TABLE "slides" -----------------------------------
CREATE TABLE `slides` ( 
	`id` Int( 10 ) AUTO_INCREMENT NOT NULL, 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`image` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`position` Int( 3 ) UNSIGNED NOT NULL, 
	`active` TinyInt( 1 ) UNSIGNED NOT NULL, 
	`link` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT 'utf8_general_ci'
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- ---------------------------------------------------------


-- CREATE TABLE "user_tokens" ------------------------------
CREATE TABLE `user_tokens` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`user_id` Int( 10 ) UNSIGNED NOT NULL, 
	`user_agent` VarChar( 40 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`token` VarChar( 40 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`created` Int( 10 ) UNSIGNED NOT NULL, 
	`expires` Int( 10 ) UNSIGNED NOT NULL,
	 PRIMARY KEY ( `id` )
, 
	CONSTRAINT `UN_user_tokens_token` UNIQUE( `token` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 44;
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`email` VarChar( 127 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`password` Char( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`roles` Int( 10 ) UNSIGNED NOT NULL DEFAULT '0', 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`logins` Int( 10 ) UNSIGNED NOT NULL DEFAULT '0', 
	`last_login` Int( 10 ) UNSIGNED NULL, 
	`login_attempts` Int( 10 ) UNSIGNED NULL, 
	`banned_to` Int( 10 ) UNSIGNED NULL, 
	`ban_time` Int( 10 ) UNSIGNED NULL, 
	`reset_password_code` VarChar( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`created_at` Int( 10 ) UNSIGNED NOT NULL, 
	`updated_at` Int( 10 ) UNSIGNED NULL, 
	`register_token` Char( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`active` TinyInt( 1 ) NOT NULL DEFAULT '0', 
	`username` Char( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
, 
	CONSTRAINT `uniq_email` UNIQUE( `email` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- Dump data of "articles" ---------------------------------
INSERT INTO `articles`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`s_description`,`s_keywords`,`s_title`,`active`,`date`,`short_content`) VALUES ( '2', 'Выбор оконных решеток', 'vyibor-okonnyih-reshetok', 'a4f499b81a9c43605617be3c2030d2ec', '1', '<h3>Виды решеток для окон</h3>

<p><strong>Сварные решетки</strong> - наиболее распространенный тип защиты оконных систем. Они отличаются легкостью и доступной стоимостью. Большая прочность, а также жесткость конструкции почти такая же, как у кованых решеток. Но эстетичные качества далеко не всегда удовлетворяют запросам потребителей.</p>

<p><strong>Кованые решетки</strong> - самым изысканные по исполнению. Завитки и кружева выдерживаются в одном стиле с другими элементами ландшафтного дизайна участка или с художественным оформлением карнизов, балкона или ворот. Стоят эти решетки дорого, поскольку производятся эксклюзивно для каждого отдельного случая.</p>

<h3>Типы конструкций и материалы оконных решеток.</h3>

<p>Решетки для окон создаются из разных профилей, сделанных из металла. Соответственно, нужно определиться с типом конструкции. Различают такие оконные решетки:</p>

<ol>
	<li>из небольших прутов с квадратным либо круглым сечением (они самые прочные, - за счет своей толщине, которая составляет 12-20 миллиметров);</li>
	<li>из полосок с прямоугольного сечения (данные профили обойдутся вам дешевле; но они характеризуются меньшей надежностью).</li>
</ol>

<p>Заказывая решетки, ориентируйтесь на материалы, из которых они будут создаваться. Решетку из полос трудно сделать симметрической. Именно поэтому лучше будет остановиться на комбинации из прутов и полос.</p>

<h3>Технология монтажа</h3>

<p>Процесс монтажа решеток, по сути, одинаковый и для сварных, и для кованых решеток. Метод крепежа подбирается зависимо от функциональных характеристик решеток. Решетки могут быть распашными, стационарными, съемными или раздвижными. Определитесь с оптимальным способом крепления, который подойдет для ваших оконных систем и приступите к установке.&nbsp;<br />
<br />
Стационарные решетки - эти решетки, которые не предусматривают возможность открывания. Соответственно, они закрепляются наиболее прочно.&nbsp;<br />
<br />
В торцах окна нужно высверлить отверстия под крепежи для решетки. Зависимо от линейных размеров креплений, поперечник отверстий также колебаться от 12 миллиметров, до 20 миллиметров.&nbsp;<br />
<br />
Далее решетка закрепляется ко всем 4-ем сторонам проема окна посредством специализированных крюков-штырей, которые прижимают изделие к капитальным стенам дома.&nbsp;<br />
<br />
<a href="">Распашные решетки</a> открывается (работает одна либо две створки).&nbsp;<br />
<br />
Крепеж такой решетки производится только в боковых сторонах проема окна по технологии, которая уже описана выше. В процессе крепления распашных решеток используют тяжелые петли, которые способны выдерживать существенную нагрузку.&nbsp;<br />
<br />
<a href="">Раздвижные оконные решетки</a> устроены по принципу пантографа (раздвижного механизма).&nbsp;<br />
<br />
При установке, нужно прикреплять полозы (направляющие шины оконных решеток) к торцам проема оконной системы для свободного хода конструкции в процессе раздвигания. После этого решетку вставляют в созданную раму.&nbsp;<br />
<br />
Следует обратить внимание, что у раздвижных оконных решеток есть и свои недостатки: конструкция из клепанной крест накрест полосы несколько снизит защитные свойства и жесткость конструкции.&nbsp;<br />
<br />
<a href="">Съемные оконные решетки</a> устанавливаются в междуоконный проем.&nbsp;<br />
<br />
Обрамление оконной решетки не нуждается в дополнительной защите. Потому оно может закрепляться не крюками, а ввинчивающимися стальными болтами.</p>
', '', '', '', '1', '2015-02-16', '<p><a href="">Решетки для окон</a> не только обеспечат безопасность вашего жилья, но и сформируют стиль фасада. Если для вас важно найти наилучшую комбинацию функциональности и декоративности, наш материал поможет вам разобраться в видах конструкций, типах и характеристиках оконных решеток.</p>
' );
INSERT INTO `articles`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`s_description`,`s_keywords`,`s_title`,`active`,`date`,`short_content`) VALUES ( '3', 'Кованые калитки', 'kovanyie-kalitki', 'fa063092b49775c2e010b185fc804bfa', '2', '<p>Очень симпатично смотрится кованая калитка, выполненная в романском стиле. Наличие благородных и легких линий металла, изобилие кованых львов и изображений других крупных зверей, искусно вписанных мастером в придуманный сюжет, создает настоящий шедевр художественной ковки.</p>

<p>Кованая калитка, выполненная в стиле классицизма, требует от мастера простой композиции и максимальной тщательности в изображении рисунка. В качестве орнамента для калитки используют различные геометрические фигуры, а основу изделия составляют из прочных и прямых прутьев. Неповторимую утонченность кованой калитке, выполненной в стиле классицизма, придают изящные листья и цветы с четким рисунком. Излюбленной декорацией мастеров художественной ковки в этом случае являются изящные завитки с точкой и изображение лаврового листка.</p>

<p>Сегодня большой популярностью пользуются кованые <a href="" title="калитки для дачи из металла">калитки</a>, выполненные в колоритном русском стиле. В таких узорах используют изображение двух встречных завитков или расходящиеся валюты. Цветы в такой композиции всегда украшаются длинными стеблями с листьями.</p>

<p>Но все-таки, какой бы стиль не был выбран для кованой калитки, ее основные функции все равно остаются неизменными &ndash; препятствовать нежелательному проникновению на огражденную территорию животных и незваных гостей. Кроме этого, она служит достойным украшением ограждения и всего участка.</p>

<p>Большую популярность металлические калитки и <a href="" title="заборы из металла">заборы</a> получили не только благодаря своей красоте и прочности, а также хорошей сочетаемости с другими видами ограждений: бетонными, металлическими и кирпичными.&nbsp;<br />
Кованые калитки изготавливают как с помощью горячей ковки, так и холодной, все зависит от финансовых возможностей и предпочтений заказчика. Как правило, готовые кованые калитки покрывают специальными составами, защищающие их от коррозии. Благодаря современным технологиям такие изделия служат длительное время своим хозяевам, не теряя при этом своего изящного вида.</p>
', '', '', '', '1', '2015-02-16', '<p>Кованая калитка &ndash; это очень оригинальный и изящный вид художественной ковки. Своей неповторимой красотой она способна придать всему домашнему интерьеру и садовому пейзажу своеобразную солидность и нарядность.<br />
Безусловно, во многом стиль калитки будет определяться внешним видом забора и ворот. Поэтому оптимальным вариантом при выборе кованой калитки, необходимо уделить особое внимание всему ограждению дома.</p>
' );
INSERT INTO `articles`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`s_description`,`s_keywords`,`s_title`,`active`,`date`,`short_content`) VALUES ( '4', 'Защита металлоконструкций от коррозии', 'zaschita-metallokonstruktsiy-ot-korrozii', '73d07c4e2b8a2321675f21a89276b44c', '3', '<p>Непосредственной коррозии подвержен обычный пластик, резина, и абсолютно все конструкции <a href="" title="производство металлических конструкций">из металла</a>. Пожалуй, самым известным видом коррозии железа является ржавчина, которая является не чем иным, как обыкновенным окислением металла.</p>

<p>Каждый год экономике довольно большого количества стран мира непосредственной разрушение конструкций из металлов приносит просто колоссальные убытки. Частично снизить их позволяет так называемая антикоррозионная защита металлоконструкций. Как показывает многочисленная статистика, очень высокая степень защиты от коррозии обеспечивается за счет долгой и тщательной подготовки всей поверхности металлоконструкции, а также использования всевозможный лакокрасочных материалов. Одним из самых надежных и проверенных вариантов в борьбе с коррозией остается нанесение на поверхность материала тонкого слоя цинка, нержавеющей стали, а также достаточного количества цветных металлов. Также стоит отметить, что вышеупомянутое цинковое покрытие способно в самые короткие сроки остановить уже начавшийся процесс коррозии. Данная положительная характеристика антикоррозионной защиты металлоконструкции является стратегически важной для ряда компаний и металлообрабатывающих фирм. Ведь почти половина объемов всей мировой добычи вышеописанного цинка используется именно в антикоррозионных целях.</p>

<p>Подводя итог всему вышеперечисленному, хочется отметить, что антикоррозионная защита металлоконструкций является просто необходимая мера, если вы не хотите постоянно ремонтировать, заниматься сваркой или вообще менять всю <a href="" title="беседки из металла">беседку</a>, лавку или другую металлоконструкцию. Лучше довольно часто заниматься так называемым косметическим ремонтом, чем потом выкинуть на свалку вся конструкцию, которая пришла в негодность. Всегда следует помнить поговорку о том, что скупой платит дважды.</p>
', '', '', '', '1', '2015-02-16', '<p>Коррозия является непосредственным разрушением строительного или ремонтного материала под воздействием довольно большого количества неблагоприятных внешних факторов. К ним можно отнести такие, как резкие перепады температуры, повышенная влажность, а также в результате практически любого непроизвольного взаимодействия с окружающей средой.</p>
' );
INSERT INTO `articles`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`s_description`,`s_keywords`,`s_title`,`active`,`date`,`short_content`) VALUES ( '5', 'Плазморез - принцип работы', 'plazmorez-printsip-rabotyi', 'e53f4dd6378215b8d0af2ebb785beebe', '4', '<p><strong>Принцип работы</strong> заключается в образовании плазменного луча вызванным электрической дугой и сжатым воздухом. Исходя из этого вы наверное поняли, что для работы аппарата необходимо воздушное давление, которое создаётся компрессором. Сжатый воздух входит в аппарат и по воздушным шлангам в рукав. На конце рукава находится пистолет с кнопкой резки и головкой, которая и создает электродугу и в последствии плазменный луч. Вовремя плазменной <a href="" title="резка металла плазмой">резки</a> металл практически не поддается деформации.</p>

<p>Благодаря такому аппарату можно в <a href="" title="металлоконструкции в Минске - производство и продажа">конструкции</a> из металла делать вырезы различных форм. А это открывает огромные возможности в работе с металлами. Плазморез - это аппарат современной резки металла. Особо не заменим когда необходимо сделать в металле декоративные вырезы. А вот если аппарат ещё и много функциональный, то есть и сварочный, то он становится незаменимым в работе будь то дома или на производстве.</p>
', '', '', '', '1', '2015-01-16', '<p><strong>Плазморез</strong> - это аппарат, с помощью которого выполняется <a href="" title="плазменная резка">плазменная резка металла</a>. С плазморезом процесс резки металла становится лёгким и даже приятным. Плазморез позволяет проводить резку многих видов металла: сталь, нержавейка, медь, бронза, алюминий, латунь, гальваническая сталь и т.д. В зависимости от вида плазморежущего аппарата он позволяет резать металл толщиной от 0.1 до 50 мм.</p>
' );
-- ---------------------------------------------------------


-- Dump data of "brief" ------------------------------------
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '1', 'Пупкин', 'pupkin@pup.com', '+333 33 333 33 33', '<p>мхо мхо<br />
&nbsp;</p>
' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '2', 'vasya', 'vasya@vas.com', '16846 1618 16', 'ихо' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '3', 'кенр', 'упкеаып', '4854', 'унквен' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '4', 'sagfd', 'sdfv', '857', 'segrgsg' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '5', 'safe', 'egrs', '785', 'segrg' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '6', 'ыпкв', 'ыкпу', 'екры', 'фукпыуп' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '7', 'пкуп', 'фкп', 'фпукп', 'фыупп' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '8', 'вапы', 'вкпыуп', 'кыпп', 'ыкппы' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '9', 'фкп', 'фукпфп', 'фпкп', 'фупкпф' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '10', 'йй', 'йй', 'йй', '<p>йй</p>
' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '11', 'qq', 'qq', 'qq', 'qq' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '12', 'asdf', 'asdf', 'asdf', 'asdf' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '13', 'asdf', 'asdf', 'asdf', 'asdf' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '14', 'aa', 'aa', 'aa', 'aa' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '15', 'яя', 'яя', 'яя', 'яя' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '16', 'www', 'www', 'www', 'www' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '17', 'qqq', 'qqq', 'qqq', 'qqq' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '18', 'qqq', 'qqq', 'qqq', 'qqq' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '19', 'qqq', 'qqq', 'qqq', 'qqq' );
INSERT INTO `brief`(`id`,`name`,`email`,`phone`,`text`) VALUES ( '20', 'qqq', 'qqq', 'qqq', 'qqq' );
-- ---------------------------------------------------------


-- Dump data of "changelog" --------------------------------
-- ---------------------------------------------------------


-- Dump data of "comments" ---------------------------------
INSERT INTO `comments`(`id`,`name`,`content`,`date`,`active`) VALUES ( '1', 'Пупкин', '<p>Вы боги!</p>
', '2014-11-13', '1' );
INSERT INTO `comments`(`id`,`name`,`content`,`date`,`active`) VALUES ( '2', 'Петров', '<p>Мудаки!</p>
', '2014-11-19', '1' );
INSERT INTO `comments`(`id`,`name`,`content`,`date`,`active`) VALUES ( '3', 'asdasd', '<p>asdasdsd</p>
', '2014-12-05', '0' );
INSERT INTO `comments`(`id`,`name`,`content`,`date`,`active`) VALUES ( '4', 'Сидоров', 'Молодцы', '2014-12-05', '0' );
-- ---------------------------------------------------------


-- Dump data of "config" -----------------------------------
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'auth_ban', 'base_time', '3600' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'auth_ban', 'max_login_attempts', '555' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'auth_ban', 'time_multiplier', '2' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'mailer', 'encryption', '' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'mailer', 'from', 'info@trip-shop.by' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'mailer', 'hostname', 'mail.trip-shop.by' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'mailer', 'password', 'p@ss4@dm1n' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'mailer', 'port', NULL );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'mailer', 'username', 'info@trip-shop.by' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'parser', 'dominant', '0' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'parser', 'ridershop', '0' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'parser', 'velo', '0' );
INSERT INTO `config`(`group`,`key`,`value`) VALUES ( 'price', 'update', '0' );
-- ---------------------------------------------------------


-- Dump data of "feedback" ---------------------------------
INSERT INTO `feedback`(`id`,`updated_at`,`text`,`name`,`email`,`status`,`answers`,`phone`) VALUES ( '2', '2014-07-19 11:04:31', 'Здраствуйте, есть ли возможность купить отдельно шкурку для скейтборда (нождак)?', 'Антон', 'vip.gpook@mail.ru', 'open', '0', '+375 33 3200746' );
INSERT INTO `feedback`(`id`,`updated_at`,`text`,`name`,`email`,`status`,`answers`,`phone`) VALUES ( '3', '2014-07-28 20:20:13', 'Имеется ли у Вас в наличии велосипед http://trip-shop.by/velo/fuji-fudji-feather-cx-1-1-d-chernyiy , с рамой L, на рост 182 см', 'Борис', 'megaamino3200@gmail.com', 'open', '0', '80295464418' );
INSERT INTO `feedback`(`id`,`updated_at`,`text`,`name`,`email`,`status`,`answers`,`phone`) VALUES ( '4', '2014-07-29 16:32:42', 'Здравствуйте! Велосипед Author Classic 2014 какие есть ростовки?', 'Марина', 'shumanya08@mail.ru', 'open', '0', '80295745608' );
INSERT INTO `feedback`(`id`,`updated_at`,`text`,`name`,`email`,`status`,`answers`,`phone`) VALUES ( '5', '2014-07-30 13:40:51', 'Здравствуйте! Есть ли в наличии Миникрузер Penny Pastels 22 lemon или Penny Pastels 22 mint? ', 'София', 'olga14423@yandex.ru', 'open', '0', '+7 (905) 530 14 58' );
INSERT INTO `feedback`(`id`,`updated_at`,`text`,`name`,`email`,`status`,`answers`,`phone`) VALUES ( '6', '2014-07-30 13:40:51', 'Здравствуйте! Есть ли в наличии Миникрузер Penny Pastels 22 lemon или Penny Pastels 22 mint? ', 'София', 'olga14423@yandex.ru', 'open', '0', '+7 (905) 530 14 58' );
INSERT INTO `feedback`(`id`,`updated_at`,`text`,`name`,`email`,`status`,`answers`,`phone`) VALUES ( '7', '2014-10-01 19:31:33', '124412412412', '414412', 'zgol@mail.ru', 'open', '0', '' );
-- ---------------------------------------------------------


-- Dump data of "menu" -------------------------------------
-- ---------------------------------------------------------


-- Dump data of "news" -------------------------------------
INSERT INTO `news`(`id`,`name`,`s_title`,`s_description`,`s_keywords`,`url`,`active`,`md5_url`,`date`,`content`,`category_id`) VALUES ( '99', 'новость 4', '', '', '', 'novost-4', '1', 'dcfa71ea51f482f5cdbf041a2bbeae67', '2014-12-02', '<p>контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент</p>
', '4' );
INSERT INTO `news`(`id`,`name`,`s_title`,`s_description`,`s_keywords`,`url`,`active`,`md5_url`,`date`,`content`,`category_id`) VALUES ( '98', 'новость 3', '', '', '', 'novost-3', '1', '3bb7256a044d6d5a766234611f7f0268', '2014-12-03', '<p>контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент</p>
', '4' );
INSERT INTO `news`(`id`,`name`,`s_title`,`s_description`,`s_keywords`,`url`,`active`,`md5_url`,`date`,`content`,`category_id`) VALUES ( '97', 'новость 2', '', '', '', 'novost-2', '1', 'f03178c088abca53c326c4d2c38e725a', '2014-11-04', '<p>контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент</p>
', '5' );
INSERT INTO `news`(`id`,`name`,`s_title`,`s_description`,`s_keywords`,`url`,`active`,`md5_url`,`date`,`content`,`category_id`) VALUES ( '96', 'новость 1', '', '', '', 'novost-1', '1', '01e7b6fcc6894b04bfc903c16df0cd07', '2014-11-20', '<p>контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент</p>
', '4' );
-- ---------------------------------------------------------


-- Dump data of "news_categories" --------------------------
INSERT INTO `news_categories`(`id`,`name`,`url`,`md5_url`,`active`,`s_description`,`s_keywords`,`s_title`,`position`) VALUES ( '5', 'категория 2', 'kategoriya-2', 'eac801319b69e5f070291f4ceb69deb9', '1', '', '', '', '2' );
INSERT INTO `news_categories`(`id`,`name`,`url`,`md5_url`,`active`,`s_description`,`s_keywords`,`s_title`,`position`) VALUES ( '4', 'категория 1', 'kategoriya-1', '07755de9e49657a55292ee9804347778', '1', '', '', '', '1' );
-- ---------------------------------------------------------


-- Dump data of "ourproducts" ------------------------------
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '6', '1', '2014-12-05', '1', '1', '/files/ourproduct/6/315d7cba95cde8c66d2bf5addff2948e.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '7', '1', '2014-12-05', '1', '2', '/files/ourproduct/7/e802a80adf4228f54f63d99889e6f6a3.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '11', '1', '2014-12-05', '1', '3', '/files/ourproduct/11/8c64b4db1caace27a5800888595eed92.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '12', '1', '2014-12-05', '1', '4', '/files/ourproduct/12/b3eb8bd996630304d1aeacf8c23b50dc.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '13', '1', '2014-12-05', '2', '1', '/files/ourproduct/13/53691cc5e46898972524deb7b9babc98.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '14', '1', '2014-12-05', '2', '2', '/files/ourproduct/14/50cfe54e9ea70bb9b3c88c4607f2aef0.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '15', '1', '2014-12-05', '2', '3', '/files/ourproduct/15/86230e5b6411f4a0c13671c069bf9fff.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '16', '1', '2014-12-05', '2', '4', '/files/ourproduct/16/75244fa0090997a4c6d84b9b02ba143a.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '17', '1', '2014-12-05', '3', '1', '/files/ourproduct/17/5be9559b247aa9272f17c91375859794.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '18', '1', '2014-12-05', '3', '2', '/files/ourproduct/18/8cbe895bc28a4f01b689e01c646069cf.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '19', '1', '2014-12-05', '3', '3', '/files/ourproduct/19/ac5b7696e0ad1c699fe5cd937609d307.jpg' );
INSERT INTO `ourproducts`(`id`,`active`,`date`,`category_id`,`position`,`image`) VALUES ( '20', '1', '2014-12-05', '3', '4', '/files/ourproduct/20/cc9b3ca7be449d49eb9c4e600ad52ea2.jpg' );
-- ---------------------------------------------------------


-- Dump data of "ourproducts_categories" -------------------
INSERT INTO `ourproducts_categories`(`id`,`name`,`position`,`active`) VALUES ( '1', 'Нестандартные конструкции по чертежам Заказчика', '1', '1' );
INSERT INTO `ourproducts_categories`(`id`,`name`,`position`,`active`) VALUES ( '2', 'Архитектурно-строительные сооружения', '2', '1' );
INSERT INTO `ourproducts_categories`(`id`,`name`,`position`,`active`) VALUES ( '3', 'Стеллажное и торгово-выставочное оборудование', '3', '1' );
-- ---------------------------------------------------------


-- Dump data of "pages" ------------------------------------
INSERT INTO `pages`(`id`,`name`,`s_title`,`s_description`,`s_keywords`,`url`,`active`,`updated_at`,`static`,`content`) VALUES ( '2', 'Главная страница', 'Главная страница', '', '', '', '1', '2014-11-17 17:30:21', '1', '' );
INSERT INTO `pages`(`id`,`name`,`s_title`,`s_description`,`s_keywords`,`url`,`active`,`updated_at`,`static`,`content`) VALUES ( '21', 'Контакты', 'Контакты', '', '', 'kontaktyi', '1', '2014-12-04 15:43:44', '0', '<p>ООО &quot;Айрон Продакшн&quot;<br />
220036 Республика Беларусь<br />
г. Минск, ул. Грушевская 11а<br />
Офисное помещение, 3</p>

<p>&nbsp;</p>

<p>+375 (17) <strong>226-28-56</strong></p>

<p>+375 (29) <strong>198-25-88</strong></p>

<p>&nbsp;</p>

<p><strong>Чернецов Дмитрий Валерьевич</strong> - Директор<br />
Моб. +375 (29) 655-05-66<br />
email: chdv@ironprod.by</p>

<p><strong>Лактионов Юрий</strong> - креативный Директор<br />
Моб. +375 (29) 682-02-04</p>

<p><strong>Железный Игорь</strong> - главный Инженер<br />
Моб. +375 (29) 622-99-80</p>

<p><strong>Максим Юхнович</strong> - руководитель отдела снабжения<br />
Моб. +375 (29) 198-25-88<br />
email: may@ironprod.by</p>

<p><strong>Александр Абрамович</strong> - маркетолог<br />
Моб. +375 (29) 663-56-55<br />
email: ranak@ironprod.by</p>
' );
INSERT INTO `pages`(`id`,`name`,`s_title`,`s_description`,`s_keywords`,`url`,`active`,`updated_at`,`static`,`content`) VALUES ( '29', 'Вакансии', 'Вакансии', '', '', 'vakansii', '1', '2014-12-04 15:53:13', '0', '<p>вакансии контент</p>

<p>контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент</p>
' );
INSERT INTO `pages`(`id`,`name`,`s_title`,`s_description`,`s_keywords`,`url`,`active`,`updated_at`,`static`,`content`) VALUES ( '30', 'О компании', 'О компании', '', '', 'o-kompanii', '1', '2014-12-04 15:53:22', '0', '<p>о компании контент</p>

<p>контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент контент</p>
' );
-- ---------------------------------------------------------


-- Dump data of "services" ---------------------------------
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '7', 'Навесы зданий и сооружений', '1', '6', '', 'navesyi-zdaniy-i-soorujeniy', 'd0ed1b8e3212bf9eea6f816ba9449e25', '', '', '', '1', '["\\/files\\/service\\/7\\/8714cf2b37d4c2d8d18c39bbc03ce8b1.gif","\\/files\\/service\\/7\\/567d306e739a75a4722df2831696a27f.jpg","\\/files\\/service\\/7\\/a66c8abeea60a26ae0361771f4ee0590.jpg","\\/files\\/service\\/7\\/a47a54df3cb61503d2f2cb52a3c8c469.jpg","\\/files\\/service\\/7\\/f0b53a3991ea6fd29b1c1a768dff1d04.jpg"]', '/files/service/7/ef27543747833fcc89f87bfc063b88e9.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '8', 'Тентовые павильоны', '1', '6', '<p>Тентовые павильоны &mdash; выгодно, практично и надежно</p>

<p>&nbsp;</p>

<p><br />
Быстровозводимые тентовые павильоны &mdash; это удобные универсальные конструкции, способные справится с немалым количеством производственно-коммерческих задач. В зависимости от направления работы учреждения, такой объект может выступать в роли:</p>

<p>&nbsp;&nbsp; &nbsp;временного помещения для размещения рабочих и техники во время строительных работ;<br />
&nbsp;&nbsp; &nbsp;ангара для хранения производственного и служебного автотранспорта, а также для обслуживания техники;<br />
&nbsp;&nbsp; &nbsp;объекта для создания животноводческих предприятий на его базе;<br />
&nbsp;&nbsp; &nbsp;хранилища для продукции земледелия;<br />
&nbsp;&nbsp; &nbsp;удобного складского сооружения или закрытого цеха.</p>

<p>Благодаря многофункциональности и повышенной востребованности такого типа сооружения, на сегодняшнем минском рынке можно найти сотни предложений купить тентовый павильон любого типа. Чего гораздо меньше, так это компаний с собственным производством, отточенными технологиями и опытными сотрудниками &mdash; компаний, где можно заказать по-настоящему качественную конструкцию, причем, по адекватной цене.</p>

<p><br />
Тентовые павильоны от ООО &quot;Айрон Продакшн&quot; &mdash; опыт, технологии и серьезная производственная база</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Чтобы избежать сомнений и риска, заказывать тентовые павильоны следует в проверенной фирме с большим числом реализованных проектов за плечами &mdash; такой, как ООО &quot;Айрон Продакшн&quot;. Нам можно поручить задачу любого масштаба &mdash; от небольшой тентовой палатки для выездной торговли до основательных сооружений с множеством пролетов.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>В нашем распоряжении &mdash; объемная база собственных наработок и проектов, позволяющих создать качественную конструкцию в кратчайшие сроки. У вас имеются собственные чертежи? Мы детально и на высоком уровне воплотим ваш план в жизнь.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>При создании тентовых павильонов для наших заказчиков, мы используем особо прочные каркасы, ткани повышенной плотности, только проверенные материалы и комплектующие.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Мы знаем, что цена вопроса также имеет значение. И именно она становится еще одной причиной обратиться к нам. Сотрудничать с ООО &quot;Айрон Продакшн&quot; действительно выгодно: мы в состоянии гарантировать вам действительно привлекательные цены на тентовые павильоны. Причины этого &mdash; в собственном производстве и отсутствии необходимости обращаться к посредникам, в наработанных связях с поставщиками материалов, которые поставляют нам надежную продукцию по специальным расценкам.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Возникли вопросы, хотите обсудить заказ тентового павильона? Ждем вас в ООО &quot;Айрон Продакшн&quot;. Звоните!</p>
', 'tentovyie-pavilonyi', 'a513d150ba4713ff596e30002c516392', 'Желаете получить тентовый павильон высококлассного качества за разумную цену? Звоните нам в ООО "Айрон Продакшн". Собственная производственная база, надежные материалы от проверенных поставщиков, опытная команда, тысячи воплощенных в жизнь проектов. ', '', '', '2', '["\\/files\\/service\\/8\\/dfa4f4960bc5ce4be0881b0635ca0463.jpg","\\/files\\/service\\/8\\/60d9475141c196a502e113593bbb7911.jpg","\\/files\\/service\\/8\\/6125e61c81a026564147f4e6ed8ee183.jpg","\\/files\\/service\\/8\\/aa46e4730c5371f7aff9cd2ca669432a.jpg"]', '/files/service/8/7f04ec631c813653329f0de69a6132be.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '9', 'Палатки для торговли', '1', '6', '<p>Торговые палатки &mdash; практичное и экономичное решение для выездного бизнеса</p>

<p>Хотите купить разборную палатку для выездной торговли на улице &mdash; качественную, удобную и долговечную? ООО &laquo;Айрон Продакшн&raquo; предложит вам различные варианты конструктивных решений, оптимальные как по функциональности, так и по цене.</p>

<p>Современные палатки для торговли &mdash; это практичные мобильные конструкции, представляющие собой прочный металлический каркас, обтянутый тентом. Они надежно защищают сотрудников и товар от неприятных сюрпризов погоды &mdash; таким образом, возможность заниматься выездной торговлей гарантируется в любой сезон. По сравнению с более основательными решениями, уличные палатки для торговли обходятся гораздо дешевле. Кроме того, они практически не требуют обслуживания, их легко перевозить с места на место в собранном виде, а сборка / разборка такого мини-павильона занимает считанные минуты.</p>

<p>Почему наши палатки для выездной торговли отличаются повышенной надежностью?</p>

<p>&nbsp;&nbsp; &nbsp;Собственное производство позволяет нам тщательно контролировать каждый этап создания торговой палатки. Каждый элемент металлического каркаса продумывается так, чтобы итоговая конструкция была крепкой и устойчивой, а монтировать и демонтировать палатку было просто даже неопытному человеку.</p>

<p>&nbsp;&nbsp; &nbsp;Металлокаркасы наших изделий покрываются специальным порошковым полимером. Это придает им великолепную стойкость к коррозии и агрессивным воздействиям. Вся несущая конструкция выходит исключительно прочной и износостойкой.</p>

<p>&nbsp;&nbsp; &nbsp;При производстве разборных палаток для торговли, мы используем наиболее современные ткани, прошедшие испытание временем и опытом. Они легко отталкивают осадки и грязь, не пропускают воду и аккуратно выглядят даже спустя годы эксплуатации.</p>

<p>&nbsp;&nbsp; &nbsp;Мы уделяем особое внимание соответствию наших конструкций всем санитарным и противопожарным требованиям: наша продукция не вызывает претензий ни у одной комиссии.</p>

<p>За счет того, что все производство &laquo;от и до&raquo; происходит в собственных цехах ООО &laquo;Айрон Продакшн&raquo;, мы предлагаем наиболее конкурентные цены на уличные палатки для торговли, а также разумные сроки изготовления. Вместо того, чтобы переплачивать компаниям-посредникам, доверьте задачу специалистам с серьезным опытом &mdash; и созданная нами палатка для выездной торговли станет надежным и долговечным помощником в вашем деле. Звоните!</p>
', 'palatki-dlya-torgovli', '29f42fae3eecffc08f31dc61affc09e5', 'Где купить разборную палатку для уличной выездной торговли? Те, кто бережет свои финансы, время и спокойствие, уже давно сделали свой выбор. Присоединяйтесь к тем, кто выбирает качество по доступным ценам: звоните в ООО «Айрон Продакшн»!', '', '', '3', '["\\/files\\/service\\/9\\/73dc9b4153c5b1503be08bd246fc1707.jpg","\\/files\\/service\\/9\\/c2d8e74de89ab274c04ea4e3f939000c.jpg","\\/files\\/service\\/9\\/7366a5431dc0d1fb7346b1461e1ac4cb.jpg","\\/files\\/service\\/9\\/80a4b226123c13bad07fb53a66261776.jpg"]', '/files/service/9/64bdd5484b3779164f9e8c3e11814c08.png' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '10', 'Остановочные павильоны', '1', '6', '', 'ostanovochnyie-pavilonyi', 'bd420b55a6715d61f3b7a9336c320634', '', '', '', '4', '["\\/files\\/service\\/10\\/bc6283d737120151007e49d410e4cb05.jpg","\\/files\\/service\\/10\\/201b031e5a7525a29b14e1768dd03c50.jpg","\\/files\\/service\\/10\\/3c0c49731185575cdcb143eb13f12cea.jpg","\\/files\\/service\\/10\\/04adecdcde2677b88ac72995fe1a3052.jpg","\\/files\\/service\\/10\\/443bceb81a0f80cb97083654e3768ca1.jpg","\\/files\\/service\\/10\\/a3b92c3c752817793ec4139562824171.jpg"]', '/files/service/10/ae9ad87c32bdfe90114192474f60b84c.png' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '11', 'Бытовка металлическая', '1', '6', '<p>Прочные металлические бытовки любой сложности</p>

<p>&nbsp;&nbsp; &nbsp;Вам необходимы долговечные металлические бытовки для дачи или заселения рабочих во время проведения строительных работ?<br />
&nbsp;&nbsp; &nbsp;Ваш бюджет не предполагает внушительных вложений, поэтому вы рассчитываете приобрести конструкцию по адекватным ценам?<br />
&nbsp;&nbsp; &nbsp;Желаете за небольшую сумму организовать мобильный офис, охранный пункт, передвижное хранилище или выездную столовую для работников на производстве?</p>

<p>В ООО &laquo;Айрон Продакшн&raquo; вы найдете надежного партнера, который справится с любой задачей &laquo;на отлично&raquo;: быстро, недорого и качественно. В рядах наших заказчиков &mdash; крупные стройорганизации, небольшие застройщики, бизнес-компании и частные лица.</p>

<p>Клиенты обращаются в ООО &laquo;Айрон Продакшн&raquo; снова и рекомендуют нас коллегам, потому что все они убедились: наши изделия служат десятки лет и остаются такими же надежными, как и в день приобретения. Ведь изготовлением бытовок из металла в ООО &laquo;Айрон Продакшн&raquo; занимаются далеко не первый год. В нашем распоряжении &mdash; серьезный опыт, доскональное знание всех тонкостей производства и множество практических наработок. Именно это исключает всякие сомнения по поводу качества наших конструкций.</p>

<p>Мы знаем, как сделать металлическую бытовку максимально прочной, устойчивой и безопасной. Доверьте создание этих сооружений нашей опытной команде &mdash; и защитите свой персонал и оборудование от неприятных сюрпризов.</p>

<p>Металлические бытовки &mdash; оцените преимущества ООО &laquo;Айрон Продакшн&raquo;</p>

<p>&nbsp;&nbsp; &nbsp;Наиболее выгодные цены на металлические бытовки. Итоговый счет за производство конструкции у нас всегда получается гораздо привлекательнее, чем фирм-посредников. Ведь каждый этап изготовления мы выполняем своими силами на грамотно оборудованном производстве. Мы не занимаемся перепродажей, не вовлекаем сторонних специалистов и имеет специальные цены от поставщиков материалов. Все это &mdash; залог низких расценок за продукцию действительно надежного качества.</p>

<p>&nbsp;&nbsp; &nbsp;Все бытовки из металла в нашей компании делаются из проверенных материалов первоклассного качества. Добавьте сюда скрупулезную сборку, применение отточенных технологий и высокое мастерство наших сотрудников &mdash; и вы поймете, почему ООО &laquo;Айрон Продакшн&raquo; доверяют долгие годы.</p>

<p>Готовы обсудить детали заказа? Хотите задать дополнительные вопросы? Желаете запросить расчет стоимости? Звоните!</p>

<p>&nbsp;</p>
', 'byitovka-metallicheskaya', 'ed295be89d4222592a98daacac04f3bf', 'Вы ищете, где заказать функциональную, доступную и комфортную металлическую бытовку для дачи или строительства? Вас интересуют разумные цены и быстрые сроки? Обращайтесь напрямую в ООО «Айрон Продакшн» и экономьте свои средства без ущерба в надежности.', '', '', '5', '["\\/files\\/service\\/11\\/bb258b574e794af1ea63720d87d9fd12.jpg","\\/files\\/service\\/11\\/d8bdc1a7f71e95b91a63459573b5775b.jpg","\\/files\\/service\\/11\\/267f5d3ca92991418355b465dd7843a4.jpg","\\/files\\/service\\/11\\/1cef89e35ec02c28a5cdcfee2807c2f8.jpg","\\/files\\/service\\/11\\/21c09232644d9a1d3b025f047c9c422a.jpg","\\/files\\/service\\/11\\/ef346afd11e8b797b09e6c8bf46db104.png","\\/files\\/service\\/11\\/c9a5c82f3db15c6958d6991dba012d96.jpg","\\/files\\/service\\/11\\/13e1ebffbadaa8b5d2f03e12740f0e56.jpg"]', '/files/service/11/83263cf098b2b9e41358d1d2432f1cd5.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '12', 'Киоски', '1', '6', '<p>Изготовление киосков в ООО &laquo;Айрон Продакшн&raquo;. Удобные конструкции для успешного бизнеса</p>

<p>Что имеет для вас наибольшее значение при выборе торгового места? Если мобильность, практичная конструкция и экономичность &mdash; в списке ваших требований, значит, решение купить киоск в Минске будет правильным. Изделия нашего производства становятся удачным вариантом для проведения уличной торговли: они одинаково комфортны как для покупателей, так и для продавцов.</p>

<p>Где может быть установлен торговый киоск?</p>

<p>Везде, где востребованы оказание небольших услуг населению, розничная торговля, заведения общественного питания: это может быть и современный торговый центр, и территория открытого рынка, и выездная ярмарка, и подземный переход, и уличная площадка с высокой проходимостью. Вам не придется задумываться о трудностях традиционного строительства: звоните нам и в самые короткие сроки получайте быстрый, надежный и мобильный мини-магазин &mdash; киоск.</p>

<p>Где купить качественный киоск в Минске и не переплатить?</p>

<p>Доверьтесь нашей репутации и обращайтесь в ООО &laquo;Айрон Продакшн&raquo;.</p>

<p>&nbsp;&nbsp; &nbsp;Мы производим долговечные и эстетичные изделия за реальные деньги. Собственное производство автоматически снижает вашу цену на порядок &mdash; мы работаем без посредников, осуществляя все работы в собственных производственных цехах.<br />
&nbsp;&nbsp; &nbsp;Мы не экономим на качестве. В создании киосков для наших клиентов мы используем только современные и отлично зарекомендовавшие себя материалы. Это &mdash; уверенная гарантия того, что ваш товар, ваши сотрудники и оборудование будут в полной безопасности, несмотря на погодные катаклизмы, многочисленные перевозки и прочие воздействия.<br />
&nbsp;&nbsp; &nbsp;Изготовление киоска занимает минимум времени, вам практически не приходится ждать.<br />
&nbsp;&nbsp; &nbsp;В зависимости от ваших требований, при производстве мы можем использовать разнообразные проекты &mdash; от наиболее непритязательных в финансовом плане до самых сложных. Вы можете заказать типовое сооружение, выбрав подходящий вариант из нашей базы, или же предоставить нам собственные чертежи &mdash; мы создадим киоск в точном соответствии с ними.<br />
&nbsp;&nbsp; &nbsp;На какой бы конструкции вы ни остановили свой выбор, можете не сомневаться: вы получите аккуратный, стильный и привлекательный для покупателей киоск.</p>

<p>Вы хотите получить дополнительную информацию, узнать стоимость изготовления киоска в вашем случае, получить консультацию? Достаточно связаться с нами по любому из номеров, указанных на сайте. Мы не подведем!</p>

<p>&nbsp;</p>
', 'kioski', 'e608b4de1f41f181125b19402723c4ae', 'Ищете, где купить киоск в Минске по демократичной цене, но при этом не проиграть в качестве конструкции? Звоните напрямую в «Айрон Продакшн»! Изготовление киосков на собственной производственной базе, оптимальные сроки, тщательная сборка из долговечных ма', '', '', '6', '["\\/files\\/service\\/12\\/17df5a58304b01bcafc07244577ee915.jpg","\\/files\\/service\\/12\\/eacd1207587eacb355e706ca92f38aa3.jpg","\\/files\\/service\\/12\\/2193e4862ed664f6aeb041620cce2eae.jpg","\\/files\\/service\\/12\\/1eab60c29b07a84b23ddd287bca6b784.jpg","\\/files\\/service\\/12\\/f95fed9c52aa72dc2fd2757581254da0.jpg","\\/files\\/service\\/12\\/2e69fe8d4e547a111867dc799f68167b.JPG"]', '/files/service/12/160f5e3a3adf32962afc0093454c0034.jpeg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '13', 'Модернизация заправок', '1', '6', '', 'modernizatsiya-zapravok', 'aebd1689cf8cd29dbb1d7afc1d2491b1', '', '', '', '7', '["\\/files\\/service\\/13\\/7bd32bf301e94f0c8e27c590cdd3bf39.jpg","\\/files\\/service\\/13\\/31f171d38a45e7fa340404a99cf96664.jpg"]', '/files/service/13/21362579e5b1b0913f14843fc1b9ebf2.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '14', 'Лестницы уличные пожарные и промышленные', '1', '6', '<p><img alt="черная металлическая лестница" class="limg" src="http://ironprod.by/img/lestnica3.jpg" style="height:250px; width:188px" /></p><p>В основном <strong>металлические лестницы</strong> выполняются в одномаршевом, двухмаршевом и винтовом варианте. Самыми распространенными версиями лестниц являются маршевые лестницы, что объясняется легкостью их изготовления и удобством в эксплуатации.</p>

<p>Существенным достоинством винтовых лестниц является возможность экономии пространства, так как они занимают площадь значительно меньшую, чем маршевые. Прочность конструкции каждого марша обеспечивают так называемые тетивы, которые поддерживают ступеньки и металлические ограждения лестницы. Опорой самих тетив служат или стены или площадочные балки.</p>

<h3>Устройство лестниц из металла</h3>

<p style="text-align:justify"><img alt="лестница" class="rimg" src="http://ironprod.by/img/lestnica2.jpg" style="height:260px; width:174px" /></p><p>Необходимо отметить, что расстояние от пола до нижней стороны площадки конструкции должно превышать 1-2 метра, в случае если предусмотрены промежуточные проходы и площадки под ними.</p>

<p style="text-align:justify">Как уже было указано выше, винтовые лестницы занимают площадь намного меньше, чем маршевые, но даже такое их преимущество не способствует их популяризации, так как они достаточно неудобны в эксплуатации. Чаще всего их используют из соображений декоративного украшения интерьера или в качестве вспомогательного средства. &nbsp;Выполняются только в варианте забежных ступенек винтовые лестницы, <strong>изготовление</strong> которых производится из металла.</p>

<h3>Металлические лестницы в Минске - цена и качество</h3>

<p><img alt="ступеньки и перила" class="limg" src="http://ironprod.by/img/lestnica1.jpg" style="height:300px; width:225px" /></p><p>Для придания интерьеру более эстетичного вида в основном используются <strong>лестницы металлической конструкции</strong>, открытые узлы, элементы, крепеж и заклепки которых служат отличным декором. Такие лестницы прекрасно вписываются в интерьер, как жилых домов, так и в интерьер различных бизнес центров, ресторанов, фитнес клубов и прочее.</p>

<p>Возможности современных технологий открывают дизайнерам простор для реализации своего творческого потенциала. Прочность металла позволяет создавать более тонкие и изящные конструкции, причем с широким спектром фактурной палитры. Возможно различное выполнение лестничных балюстрад как то: из тросов, &laquo;рваных&raquo; металлических листов, сочетать металлическую конструкцию с камнем или деревом, вариантом более чем достаточно.</p>

<p>Выбор конкретной конструкции лестницы определяется размером помещения и его функциональным предназначением. Тип лестницы также определяется местом расположения ее проемов в перекрытии. Достаточно популярны так называемые поворотные лестницы, которые при одной и той же высоте ступенек занимают меньшую площадь, чем прямые лестницы. Такие лестницы обычно устанавливаются вдоль двух стен.</p>
', 'lestnitsyi-ulichnyie-pojarnyie-i-promyishlennyie', 'c0e431207926a01d3fab269cd43fcfb8', '', '', '', '8', '["\\/files\\/service\\/14\\/afc6475afe5fc7ab3ae889cb0b164d7d.jpg","\\/files\\/service\\/14\\/ab07a4aeb0318c887ef71df77ab5ecf9.jpg","\\/files\\/service\\/14\\/7f55b5f1011fc442697d404fd0bc6a01.jpg","\\/files\\/service\\/14\\/8e79e776cdc3bfd9492eaff37c894104.jpg","\\/files\\/service\\/14\\/dfbd8498daea27fa7ac0593429e18837.jpg"]', '/files/service/14/5dcea38cf7d3774ebf31ae0228a352b8.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '15', 'Строительство автомоек', '1', '6', '<p>Строительство автомоек &mdash; где ООО &laquo;Айрон Продакшн&raquo;, там качество</p>

<p>Вы стоите на пороге открытия собственного автомоечного бизнеса или планируете расширить уже существующую сеть станций? Поручите строительство автомойки квалифицированной команде нашей компании. Быстровозводимые строения из металла &mdash; это возможность снизить вложения финансов и времени в несколько раз.&nbsp; Весь процесс происходит быстро, просто и выгодно. Проходит минимальное время после заключения договора, и вы получаете ключи от готового здания, а стоимость строительства автомойки уменьшается в разы по сравнению с классическим способом.</p>

<p>Готовы задать успешной работе уверенный старт? Звоните! Здания, которые мы возводим, строятся на базе усиленных металлических каркасов, которые впоследствии обшиваются прочными и устойчивыми ПВХ-материалами. Это гарантирует:</p>

<p>&nbsp;&nbsp; &nbsp;долговечность и основательность конструкции;<br />
&nbsp;&nbsp; &nbsp;великолепные огнеупорные способности;<br />
&nbsp;&nbsp; &nbsp;умение противостоять воздействию агрессивных химических веществ$<br />
&nbsp;&nbsp; &nbsp;аккуратный и привлекательный внешний вид.</p>

<p>Доверьте строительство автомойки нам и воспользуйтесь нашими сильными сторонами</p>

<p>&nbsp;&nbsp; &nbsp;Заказ автомойки в ООО &laquo;Айрон Продакшн&raquo; &mdash; это уверенность в улучшенной надежности и доскональном соответствии постройки с актуальными строительными нормативами. За нашими плечами &mdash; не одна сотня блестяще реализованных проектов, и мы в совершенстве владеем каждым нюансом проведения работ.</p>

<p>&nbsp;&nbsp; &nbsp;При этом, цены строительства автомойки в нашей компании выгодно отличаются от конкурентных предложений. Отчасти, это объясняется тем, что все работы проводятся целиком на собственном производстве. Свою долю в выгодный прейскурант вносят и долгие годы плодотворной работы в серьезных масштабах, благодаря чему мы закупаем материалы и комплектующие лишь у наиболее надежных поставщиков с минимальными наценками.</p>

<p>&nbsp;&nbsp; &nbsp;Производственная база компании позволяет с легкостью создавать именно ту планировку, которая вам идеально подойдет. Каждый заказ выполняется по индивидуальной схеме: выбирайте расположение помещений, меняйте размеры полезной площади и подсобных участков, добавляйте нестандартные требования. Мы справимся!</p>

<p>Чтобы заключить выгодный договор на строительство автомойки, совсем не обязательно жертвовать качеством, функциональностью и безопасностью. Обращайтесь напрямую в ООО &laquo;Айрон Продакшн&raquo; и не переплачивайте цепочке посредников.</p>
', 'stroitelstvo-avtomoek', '6e54386fdb3486f50133a1d1cd515086', 'Какой компании доверить строительство автомойки? Как можно быть уверенным в 100%-й безопасности и надежности постройки? Где найти выгодные цены, которые впишутся в рациональный бюджет? Звоните — мы воплощаем строгие требования в практичную реальность.', '', '', '9', '["\\/files\\/service\\/15\\/e31d305287f72959a1a1f25783db585b.jpg","\\/files\\/service\\/15\\/952814c1716cabd16dd5a75caf9df083.jpg","\\/files\\/service\\/15\\/b6b443466b60e3998649d5d27f0c57c9.jpg","\\/files\\/service\\/15\\/f299897761e7a94c4622b8b6e831cbbf.jpg"]', '/files/service/15/6788ddbdf1dbd50e28a035dda7aaee7e.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '16', 'Строительство гипермаркетов', '1', '6', '<p>Строительство гипермаркетов на базе металлоконструкций &mdash; оперативно, надежно, экономично</p>

<p>Перед вами стоит такая ответственная задача как строительство гипермаркета? Доверьтесь выбору своих коллег и поручите все заботы ООО &laquo;Айрон Продакшн&raquo;.</p>

<p>Минимальные затраты. Малые сроки. Возможность получить здание даже зимой. Прочность и долговечность. Мы знаем, что именно это ищет каждый собственник или управляющий, планируя возведение гипермаркета. Быстровозводимые гипермаркеты из высокопрочных металлоконструкций &mdash; это именно то, что отвечает всем вашим требованиям.</p>

<p>&nbsp;&nbsp; &nbsp;Стоимость строительства гипермаркета быстровозводимого типа в разы демократичнее капитального строительства. Окупаемость работ &mdash; колоссально быстрая.<br />
&nbsp;&nbsp; &nbsp;Ограничения по размеру гипермаркета практически отсутствуют. Объект можно легко модифицировать под конкретные требования. Каждый квадратный метр площади здания становится полезным.<br />
&nbsp;&nbsp; &nbsp;Относительно небольшой вес постройки дает возможность строить на облегченном фундаменте, а это означает дополнительное снижение расходов.</p>

<p>Ваши выгоды от строительства гипермаркета с нами</p>

<p>За серьезной репутацией ООО &laquo;Айрон Продакшн&raquo; стоят годы кропотливой работы. Каждый заказ, независимо от его объема, выполняется с максимальной отдачей. Металлоконструкции изготавливаются в наших собственных производственных цехах. Мы берем на себя доставку и монтаж готового здания на вашей площадке. Техническому оснащению нашего производства могут позавидовать многие зарубежные компании. В нашей команде &mdash; нет ни единого человека &laquo;с улицы&raquo;. Каждый из них &mdash; профессионал с колоссальным опытом за плечами, многократно проверенный и подтвердивший свою компетентность.</p>

<p>&nbsp;&nbsp; &nbsp;Будьте уверены в надежности и безопасности здания. Все работы по строительству гипермаркетов производятся в неукоснительном соответствии с актуальными нормами и стандартами.</p>

<p>&nbsp;&nbsp; &nbsp;Получите здание, которое по всем параметрам подходит именно вам. Мы с одинаковой тщательностью подходим как к типовым проектам, так и к нестандартным задачам. Любой план может быть быстро адаптирован под ваши потребности. Необходимо строительство гипермаркета по вашим индивидуальным чертежам? Эту задачу также можно доверить нам.</p>

<p>&nbsp;&nbsp; &nbsp;Берегите собственное время. Мощная производственная база позволяет нам оперативно и без ущерба для качества выполнять наиболее масштабные задачи.</p>

<p>&nbsp;&nbsp; &nbsp;Наши клиенты знают: в назначенный срок &mdash; и ни днем позже &mdash; ключи от здания будут у вас в руках.</p>

<p>Поручите строительство вашего гипермаркета нам. Выбирайте лучшее для своего бизнеса.</p>
', 'stroitelstvo-gipermarketov', '4f5595868dafd2ae409e9daab179b36d', 'Ищете подрядчика для строительства гипермаркета из металлоконструкций? Доверяйте репутации! ООО «Айрон Продакшн» — это собственное масштабное производство, персонал с колоссальным опытом и серьезное оборудование. Просто свяжитесь с нами. ', '', '', '10', '["\\/files\\/service\\/16\\/2f56cfb340f3ecd4c3a989f9875f5b1f.jpg","\\/files\\/service\\/16\\/1d4061d9a405c34ff0753e6d192e4666.jpg","\\/files\\/service\\/16\\/f7fc7f013a7142243ee3ef3978748fe7.jpeg"]', '/files/service/16/886baed384f6c26cf9fe97c8e64ffb01.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '17', 'Строительство картофелехранилищ', '1', '6', '<p>Строительство картофелехранилищ &mdash; рациональные решения для современных фермерских хозяйств</p>

<p>Когда урожай картофеля собран, на первый план выходит следующая задача: как сохранить его в течение долгих месяцев? Поручите нам строительство картофелехранилища и вы получите эффективное решение данного вопроса. Уложиться в строго ограниченный бюджет &mdash; очень просто, если вы сотрудничаете с ООО &laquo;Айрон Продакшн&raquo;.</p>

<p>Ведь, к счастью, привычные всем массивные постройки для хранения картофеля из кирпича, бетонных блоков или железобетонных панелей уже давно остались в прошлом. Им на смену пришли быстровозводимые картофелехранилища на базе металлических арочных профилей. Современные технологии ощутимо уменьшают как ваши материальные вложения, так и время, необходимое для постройки надежного объекта.</p>

<p>Существенные плюсы в пользу строительства картофелехранилищ в нашей компании</p>

<p>&nbsp;&nbsp; &nbsp;Мы берем на себя все хлопоты по строительству качественного картофелехранилища &laquo;с нуля&raquo;. Проект скрупулезно рассчитывается таким образом, чтобы вся постройка с легкостью переносила капризы погоды, осадки, ветровые нагрузки и механические воздействия.</p>

<p>&nbsp;&nbsp; &nbsp;Полученное здание не требует обслуживания, отличается внушительной долговечностью и стойкостью к пожарам.</p>

<p>&nbsp;&nbsp; &nbsp;Итоговая цена на строительство картофелехранилища впишется даже в самый скромный бюджет, а темпы возведения здания по нашей технологии на порядок выше традиционного строительства.</p>

<p>&nbsp;&nbsp; &nbsp;Монтаж занимает минимум времени. Если вам потребуется перенести ваше картофелехранилище в другое место &mdash; это очень легко сделать: всю конструкцию можно разбирать и перевозить.</p>

<p>&nbsp;&nbsp; &nbsp;За счет того, что постройка обладает достаточно малым весом, автоматически отпадает необходимость заливать мощный фундамент. Ваши расходы становятся еще ниже.</p>

<p><br />
Какие разновидности картофелехранилищ мы можем построить?</p>

<p>Ограничений нет &mdash; наша производственная база позволяет нам реализовывать проекты любого масштаба и сложности.</p>

<p>&nbsp;&nbsp; &nbsp;Хотите получить постройку по одному из проверенных типовых планов? Сделаем.<br />
&nbsp;&nbsp; &nbsp;Возникла необходимость внести изменения в стандартную схему? Адаптируем чертежи под вас.<br />
&nbsp;&nbsp; &nbsp;Желаете добавить к складскому помещению пункт приемки, комнаты для персонала, торговую точку? Все будет исполнено максимально грамотно.<br />
&nbsp;&nbsp; &nbsp;У вас имеются собственные чертежи или нестандартный заказ? Мы справимся на высоком уровне.</p>

<p>Формулируйте задачу и звоните.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 'stroitelstvo-kartofelehranilisch', 'f003f9027123c3b59b7103a707ad03c5', 'Что означает строительство картофелехранилищ с «Айрон Продакшн»? Вы тратите меньше, получаете готовый объект быстрее и на 100% уверены в надежности результата. Разве не этого хочет каждый представитель фермерского хозяйства?', '', '', '11', '["\\/files\\/service\\/17\\/65e504778165e4dbad53370f1479c210.jpg","\\/files\\/service\\/17\\/ef26442e0c1d17517b0167c01b6aab2c.jpg","\\/files\\/service\\/17\\/14a49c4f663789e742c08cad3c0a9f2a.jpg","\\/files\\/service\\/17\\/95384fbcbd617ffcd58a4267bd6da57e.jpg"]', '/files/service/17/9ab9c75c7144e5e5bacfb7d7ad364215.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '18', 'Строительство магазинов', '1', '6', '<p>Строительство магазинов &mdash; надежно и в короткие сроки<br />
Стремительный темп сегодняшней жизни выдвигает собственные условия. Ждать некогда, да и переплачивать нет возможности. Строительство магазинов в современном бизнесе подразумевает демократичные цены, сжатые сроки, и всё это &mdash; без ущерба в качестве.</p>

<p>Всем этим требованиям соответствуют быстровозводимые здания от &laquo;Айрон Продакшн&raquo;. Доверьте строительство нового магазина нам и решайте свои коммерческие задачи быстро и эффективно. Вам не приходится ждать долгие месяцы, пока стройка будет закончена. Кроме того, вы значительно сокращаете расходы на строительство. &nbsp;</p>

<p>Строительство магазинов в &laquo;Айрон Продакшн&raquo; &mdash; опыт, на который можно рассчитывать<br />
Быстрота возведения совсем не подразумевает поспешности. Вы получаете прочное, долговечное и практичное здание из качественных металлоконструкций. Изделия в заводских условиях наделяются антикоррозионными свойствами и скрупулезно тестируются на устойчивость и надежность. Такой магазин не боится ни капризов погоды, ни интенсивной эксплуатации: минимальный срок службы постройки составляет полвека. А если вам понадобится демонтировать здание или перевезти его на новое место, это можно реализовать без лишних трудностей.</p>

<p>Хотите уточнить нужную вам информацию насчет строительства магазинов? Позвоните нам.</p>
', 'stroitelstvo-magazinov', '856a855b5d5c283d5a8dff1726cbb8f1', 'Строительство магазинов на высокотехнологичном производстве «Айрон Продакшн».
Минимальные цены без переплат. Возведение сложных объектов в краткие сроки. Любые масштабы.', '', '', '12', '[]', '/files/service/18/1ff114514ea41597739e8652a1d1ed98.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '19', 'Строительство птицеферм', '1', '6', '<p>6 причин заказать строительство птицефермы у нас</p>

<p>Ищете наиболее выгодный вариант строительства птицефермы? Доверьте свою задачу нам, и вы получите оптимальное решение: как по материальным затратам, так и качеству и срокам возведения. Быстровозводимые птичники, создаваемые по нашей технологии, успешно соединяют в своей конструкции баланс всех трех главных факторов: цены, надежности и времени.</p>

<p>&nbsp;&nbsp; &nbsp;С нами вы серьезно экономите свой бюджет: строительство птицефермы не требует колоссальных вложений, при этом, здание выходит надежным, долговечным и основательным.<br />
&nbsp;&nbsp; &nbsp;Благодаря малой проводимости тепла и герметичности наших зданий, ваши расходы на обогрев и обслуживание птицефермы также ощутимо снижаются.<br />
&nbsp;&nbsp; &nbsp;За счет существенной скорости возведения, вы приступаете к работе гораздо раньше. Это вносит дополнительный вклад в быструю окупаемость ангара.<br />
&nbsp;&nbsp; &nbsp;Вы получаете просторное помещение без несущих перегородок и можете распоряжаться планировкой по своему усмотрению.<br />
&nbsp;&nbsp; &nbsp;Легкие конструкции на базе металла, дополненные практичными сэндвич-панелями, сводят к нулю вероятность появления грибков, мышей, размножения бактерий и вирусов.<br />
&nbsp;&nbsp; &nbsp;Специальная обработка металла делает ангар для содержания птиц чрезвычайно стойким к воздействию химических и дезинфицирующих веществ. Нашим зданиям не грозит ни ржавчина, ни преждевременный износ даже в самых суровых условиях.</p>

<p>Строительство птицеферм с в &laquo;Айрон Продакшн&raquo; &mdash; нас знают за надежность</p>

<p>Поручая строительство птицеферм &laquo;Айрон Продакшн&raquo;, вы полагаетесь на ответственного партнера, за плечами у которого &mdash; сотни реализованных проектов. Вам не приходится ни за что переплачивать, так как все работы &laquo;от и до&raquo; осуществляются на собственном производстве.</p>

<p>Наши цеха оснащены по последнему слову техники, а коллектив обладает отточенными навыками строительства и серьезным опытом. Материалы, из которых мы строим птицефермы, отличаются безопасностью и прочностью. Все закупки производятся у проверенных годами поставщиков.</p>

<p>Результат? Наши клиенты получают строительство птичника высококлассного качества с минимальными затратами, условия для содержания птицы удовлетворяют всем их требованиям, а стоимость наших услуг окупается в первые месяцы.</p>

<p>Остались вопросы, которые вы хотели бы уточнить? Важно нужно получить грамотную консультацию от специалиста? Готовы обсудить условия и подписать договор? Просто позвоните нам.</p>

<p>&nbsp;</p>
', 'stroitelstvo-ptitseferm', 'd5bf62c50b7466d24bda416d4d5c5617', 'Кому заказать строительство птицефермы — без чрезмерных затрат, но так, чтобы не пострадало качество? Где найти партнера, который имеет серьезный опыт и на деле знает все тонкости возведения зданий для фермерских хозяйств? Ответ перед вами — переложите вс', '', '', '13', '["\\/files\\/service\\/19\\/3c8e9df3587ff9f5292c5d1d1f952496.jpg","\\/files\\/service\\/19\\/8a2ac393e0f53e812ca8724255616379.jpg","\\/files\\/service\\/19\\/16b5c4dd1810819ef843c43e5ecfc916.jpg"]', '/files/service/19/faaa5313339255642b2964c1e2dcbaaa.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '20', 'Строительство свиноферм', '1', '6', '<p>Строительство свиноферм &mdash; безопасно, долговечно и экономически выгодно</p>

<p>Если вы выдвигаете к строительству свиноферм самые жесткие требования, вы попали по адресу. Поручите возведение высококачественного свинокомплекса для вашей фермерской организации компании &laquo;Айрон Продакшн&raquo;, и вы на практике убедитесь, что приняли верное решение.</p>

<p>Строительство современных свиноферм: тонкости производства и преимущества</p>

<p>&nbsp;</p>

<p>Капитальное строительство свинарников из цемента и кирпича уже давно отходит на второй план. &laquo;Морально устаревший&raquo; способ возведения &mdash; дорогостоящий и длительный &mdash; уверенно сменяется современными технологиями. Быстровозводимые свинофермы-ангары на базе металлоконструкций стали выгодным и практичным способом построить качественный животноводческий комплекс &mdash; в короткие сроки и без чрезмерных вложений.</p>

<p>&nbsp;</p>

<p><br />
Такие свинофермы производятся из высококачественных металлических конструкций, а для обустройства стен и крыши применяются прочные сэндвич-панели.</p>

<p>&nbsp;</p>

<p><br />
&nbsp;&nbsp; &nbsp;Как понятно из названия, сроки строительства быстровозводимого свинокомплекса не идут ни в какое сравнение с традиционным методом.<br />
&nbsp;&nbsp; &nbsp;Благодаря использованию легких металлических конструкций, расходы на сооружение ощутимо снижаются. При этом, все строительные нормативы остаются полностью соблюденными.<br />
&nbsp;&nbsp; &nbsp;Такие здания имеют очень длительный срок жизни, с легкостью противостоят самым суровым погодным испытаниям, не ржавеют и не разрушаются даже спустя десятки лет.</p>

<p>Строительство свиноферм &mdash; возводим надежные объекты для стабильной работы<br />
Внушительные производственные мощности позволяют нам на 100% отвечать за каждый этап работы. Все металлоконструкции, которые применяются при строительстве свиноферм для наших заказчиков:</p>

<p>&nbsp;&nbsp; &nbsp;изготавливаются в наших собственных цехах,<br />
&nbsp;&nbsp; &nbsp;подвергаются тщательной обработке против коррозии,<br />
&nbsp;&nbsp; &nbsp;многократно испытываются на прочность, стойкость к агрессивным воздействиям и безвредность с точки зрения экологии.</p>

<p>Материалы для покрытия стен и кровли закупаются напрямую у наиболее авторитетных производителей с кристальной репутацией. Свою исключительную надежность все используемые покрытия подтверждают годами безупречной службы в тысячах реализованных нами проектов. Каждый наш рабочий имеет соответствующую аттестацию, в совершенстве владеет всеми практическими навыками и знает нюансы возведения ангаров для разведения свиней.</p>

<p>Звоните!</p>
', 'stroitelstvo-svinoferm', '131a99ad40a4413bb223d7c862340b17', 'Строительство свиноферм с компанией «Айрон Продакшн» — профессионально, прочно, доступно. Хотите получить готовый ангар для свиней в минимальные сроки и по выгодной цене? Звоните! Собственное производство, ответственный подход.', '', '', '14', '["\\/files\\/service\\/20\\/370e204c27d3484801e9792e647f7f50.jpg","\\/files\\/service\\/20\\/ec5862cdb52321ab10e4839527b23d61.jpg"]', '/files/service/20/dc8fb740f4c204224954c6fb3970e811.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '21', 'Строительство торговых центров', '1', '6', '<p>За надежным строительством торговых центров обращаются в &laquo;Айрон Продакшн&raquo;</p>

<p>Строительство нового торгово-развлекательного центра &mdash; это задача, которую вы можете смело перекладывать в руки нашей организации. Мы умеем возводить по-настоящему качественные здания, которое объединяют в себе все важные характеристики:</p>

<p>&nbsp;&nbsp; &nbsp;функциональность,<br />
&nbsp;&nbsp; &nbsp;комфорт,<br />
&nbsp;&nbsp; &nbsp;безопасность<br />
&nbsp;&nbsp; &nbsp;и долговечность.</p>

<p>Современные технологии позволяют нам строить в минимальные сроки и значительно сокращать ваши расходы.</p>

<p>Строительство быстровозводимых торговых центров &mdash; прибыльное вложение средств</p>

<p>Торговые центры, которые мы строим, имеют в своей основе исключительно надежный, но при этом очень легкий каркас из высокопрочного металла. Это автоматически решает сразу несколько важных вопросов.</p>

<p>&nbsp;&nbsp; &nbsp;Строительство торгового центра по нашей технологии подразумевает серьезную экономию по сравнению с организацией капитальной стройки: как временную, так и финансовую. Вы вкладываете меньше, а здание окупается на порядки быстрее.<br />
&nbsp;&nbsp; &nbsp;Всю конструкцию можно быстро демонтировать и заново смонтировать на новом месте. Перевезти торговый центр при необходимости? Теперь это реально.<br />
&nbsp;&nbsp; &nbsp;Огромный выбор форм и разновидностей будущей постройки. Любые размеры, практически свободная планировка. Нестандартные задачи? С ними тоже не возникает никаких проблем. Применяйте каждый квадратный сантиметр с пользой!<br />
&nbsp;&nbsp; &nbsp;Для строительства торгового центра не требуется заливать мощный фундамент. Вы платите еще меньше.<br />
&nbsp;&nbsp; &nbsp;Несмотря на малый вес, такие помещения отличаются потрясающей надежностью, прочностью, стойкостью к разрушению и износу. Они защищены от огня, грызунов, коррозии. Ваш торговый центр не боится неблагоприятных погодных условий и не деформируется при перепадах температуры. Работайте без проблем долгие десятки лет!</p>

<p>Строим торговые центры с основательностью, на которую можно положиться<br />
Разумеется, все вышеперечисленные достоинства имеют место лишь в том случае, если воплощением вашего проекта в жизнь занимается опытный, ответственный и надежный подрядчик с серьезной репутацией. Такой, как &laquo;Айрон Продакшн&raquo;.</p>

<p>Ведь мы не только осуществляем строительство торговых комплексов, но и производим металлоконструкции для всех объектов на собственных цехах. Монтажные работы проводит компетентная команда опытных рабочих, каждый из которых имеет множество серьезных проектов за плечами. Именно так мы можем предоставить максимально честную гарантию на построенный торговый центр. Звоните!</p>

<p>&nbsp;</p>
', 'stroitelstvo-torgovyih-tsentrov', '6156500d33f0275f7dc5c61889953653', 'Строительство торговых центров на базе легких металлокаркасов — минимум времени и вложений, максимум долговечности и надежности. Хотите получить торговый объект, который будет идеально соответствовать и вашим требованиям, и актуальным строительным нормам?', '', '', '15', '["\\/files\\/service\\/21\\/cabb0dcd54cbacdfbd24efd41e6dfd12.jpg","\\/files\\/service\\/21\\/a68b475c1b17a83079d1fb552a46a859.jpg","\\/files\\/service\\/21\\/b98213fce75f885fc671589fc8336937.jpg"]', '/files/service/21/9580f5e6aa7486bba0c313771ad17766.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '22', 'Строительство холодильных камер', '1', '6', '<p>Компетентный подход к строительству холодильных камер</p>

<p>Ищете, где заказать строительство холодильной камеры? В лице компании &laquo;Айрон Продакшн&raquo;&nbsp; вы найдете ответственного и опытного исполнителя. Мы подбираем наиболее подходящий вариант конструкции непосредственно под ваши задачи, а также всегда предлагаем выгодное для бюджета решение.</p>

<p>Мы &mdash; производственная компания. А это значит, что вся конструкция &laquo;от и до&raquo; изготавливается в наших цехах и монтируется на месте опытными рабочими, сторонние подрядчики не привлекаются. Все это становится залогом привлекательной цены.</p>

<p>Конструкция холодильной камеры</p>

<p>Холодильные камеры &mdash; это специальные промышленные объекты особой конструкции, способные поддерживать заданную температуру круглый год, независимо от внешних условий. Классический вариант холодильной камеры нашего производства &mdash; это складское помещение, которое имеет в своей основе прочный, но легкий каркас из высококачественных металлов. Стены, пол и потолок обшиваются специальными панелями. В результате продуманной теплоизоляции и тщательной герметизации, температурный режим внутри холодильной камеры великолепно сохраняется.</p>

<p>Ключевые преимущества строительства холодильных камер по нашей технологии</p>

<p>&nbsp;&nbsp; &nbsp;Относительно небольшие финансовые вложения.<br />
&nbsp;&nbsp; &nbsp;Благодаря отточенной технологии, сроки строительства холодильных камер сводятся к минимуму.<br />
&nbsp;&nbsp; &nbsp;Полученные конструкции отлично держат холод, тем самым снижая ваши затраты на поддержание нужной температуры.</p>

<p>Грамотно построенная холодильная камера &mdash; это гарантия бесперебойной работы холодильной техники, уменьшение расходов на ее ремонт и обслуживание. Кроме того, в результате вы можете приобрести оборудование меньшей мощности.</p>

<p>Строительство холодильных камер &mdash; качество в каждой детали</p>

<p>Мы изготавливаем холодильные камеры по типовым проектам и занимаемся производством объектов по вашим чертежам. Благодаря собственным производственным цехам и опытной команде, создание изделий нестандартной конфигурации не представляет для нас проблемы.</p>

<p>Все строительные материалы и комплектующие, которые мы применяем в работе, полностью соответствуют строгим требованиям санитарных служб, подвергаются многократным проверкам и разрешены к использованию в пищевой промышленности.</p>

<p>Звоните, и мы подробно ответим на каждый ваш вопрос по поводу строительства холодильных камер.</p>
', 'stroitelstvo-holodilnyih-kamer', '6869200a85a33036cf4c2cd58e0676f4', 'Почему строительство холодильных камер стоит заказать в компании «Айрон Продакшн»? Огромный опыт реализации сложный проектов, компетентная команда, собственное производство и современное оборудование. Мы работаем на ваш результат!', '', '', '16', '["\\/files\\/service\\/22\\/70ff29fe688c998156f486b819b4e28e.jpg","\\/files\\/service\\/22\\/f956baed8e4785e1168304582d246738.jpg"]', '/files/service/22/4bd364c6276e1b70fc350c5013bf59c4.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '23', 'Стулья металлические', '1', '7', '<p>Мы производим красивые и прочные металлические стулья для баров</p>

<p>Если вы находитесь в поиске надежного партнера по изготовлению металлических стульев для бара, мы с удовольствием им станем. Колоссальный опыт создания металлической мебели по заказам различной сложности, серьезные производственные мощности и проверенная команда специалистов позволяют нам утверждать: не существует задумки настолько сложной и партии настолько объемной, чтобы мы не смогли исполнить ваш заказ в разумные сроки.</p>

<p>Стиль, износостойкость и функциональность &mdash; вот качества наших металлических стульев, которые делают нашу продукцию востребованной далеко за пределами Минска. Наше производство дает нам возможность не только быстро поставлять даже самые крупные партии изделий, но и воплощать в жизнь творческие идеи наших клиентов. Наши стулья из металла не просто прочные и долговечные. Они придадут вашему бару, кафе или ресторану безупречно стильную ноту, которая выигрышно подчеркнет статус вашего заведения.</p>

<p>&nbsp;&nbsp; &nbsp;Мелкий и крупный опт.<br />
&nbsp;&nbsp; &nbsp;Практичные конструкции по типовым проектам и индивидуальные задачи.<br />
&nbsp;&nbsp; &nbsp;Наличие всех сертификатов и неукоснительное соответствие нормативам безопасности.<br />
&nbsp;&nbsp; &nbsp;Прямые цены от производителя.</p>

<p>Изготовление металлических стульев для бара &mdash; особенности технологии</p>

<p>&nbsp;&nbsp; &nbsp;Металлический каркас поворотных стульев делается из трубы с усиленной прочностью. Благодаря этому, такая мебель без проблем выдерживает серьёзные механические нагрузки, даже в общественных местах с повышенной проходимостью.</p>

<p>&nbsp;&nbsp; &nbsp;Специальные антикоррозийные составы гарантируют изделиям высокую степень защиты от ржавчины, перепадов влажности и температуры.</p>

<p>&nbsp;&nbsp; &nbsp;Ударопрочная полимерная окраска позволяет получить практически любую цветовую гамму, а хромированное покрытие станет великолепным выбором для тех, кто ищет характерный металлический блеск.</p>

<p>Купить поворотные стулья для бара в Минске от компании &laquo;Айрон Продакшн&raquo; &mdash; значит сделать выбор в пользу самых последних разработок в сфере работы с металлом. Результат впечатляет даже самых требовательных заказчиков: за более чем адекватную сумму вы получаете современные, стильные и сверхпрочные конструкции, которые десятками лет служат вам без единого нарекания. Экономия ресурсов налицо: отпадает необходимость тратиться на ремонт, вкладывать силы в кропотливый уход, слишком часто обновлять мебель. Элегантный дизайн металлических стульев не стареет и остается актуальным даже спустя годы.</p>

<p>Звоните!</p>

<p>&nbsp;</p>
', 'stulya-metallicheskie', 'd0c56f2d2ec4c9a927cfa884578009e8', 'Хотите купить поворотные стулья для бара в Минске? Обращайтесь в «Айрон Продакшн». Изготовление на собственном производстве. Крупный опт и мелкие партии. Лояльные цены. Проверенное качество.  ', '', '', '1', '["\\/files\\/service\\/23\\/2f3791003f90ff94bf53dcf44b11e428.jpg","\\/files\\/service\\/23\\/1fe984f2120a02aee5cac10a2e72fa61.jpg","\\/files\\/service\\/23\\/dcb4b46443161345ebe0324849da0ea0.jpg","\\/files\\/service\\/23\\/47ce8185dd12d3e3dfbfce6282a1387a.jpg"]', '/files/service/23/f2869e26931ef183431601adfa623f61.png' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '24', 'Секции кресел для залав ожидания', '1', '7', '<p>Удобные и прочные секции кресел для залов ожидания по демократичным ценам</p>

<p>Долгое ожидание выматывает. Эргономичные секции кресел для помещений и залов ожидания производства &laquo;Айрон Продакшн&raquo; дают вашим посетителям возможность провести его с максимальным комфортом. Позаботьтесь о своих гостях, и они будут возвращаться к вам с большим удовольствием.</p>

<p>Предлагаем вам проверенные и качественные решения по обустройству удобных зон ожидания:</p>

<p>&nbsp;&nbsp; &nbsp;на ж/д и автовокзалах, в аэропортах,<br />
&nbsp;&nbsp; &nbsp;в холлах бизнес-центров и административных зданий,<br />
&nbsp;&nbsp; &nbsp;в медицинских организациях,<br />
&nbsp;&nbsp; &nbsp;в вестибюлях театральных заведений и кинотеатров,<br />
&nbsp;&nbsp; &nbsp;в учебных и спортивных учреждениях,<br />
&nbsp;&nbsp; &nbsp;в торговых и развлекательных центрах.</p>

<p>Обращайтесь напрямую к производителю и избавьте себя от необходимости переплачивать компаниям-посредникам. Репутация &laquo;Айрон Продакшн&raquo; на белорусском рынке говорит сама за себя, а за счет крупных объемов производства наши цены становятся еще доступнее. Только не в ущерб качеству!</p>

<p>Все наши кресла для залов ожиданий изготавливаются из выносливого металла и имеют специальное ударопрочное защитное покрытие. К конструкции могут быть добавлены подлокотники, опоры для ног и столики.</p>

<p>Преимущества наших кресел для помещений<br />
Мы уделяем особое внимание износостойкости наших кресел для залов ожидания. Для их изготовления применяются наиболее прочные материалы и специальные комплектующие. Каркас каждой конструкции делается усиленным. Кроме того, многоместные секции кресел из металла обладают огнестойкостью, а также автоматически снимают проблему вандализма.</p>

<p>Наши изделия отличаются стильным дизайном и комфортом.&nbsp; Посетители размещаются с максимальным удобством, а элегантный внешний вид работает на имидж вашей организации. Каждая конструкция тщательно продумывается, чтобы обеспечить максимальную травмобезопасность.</p>

<p>Возможность выбирать количество посадочных мест, разнообразие конфигураций и оттенков покрытия позволяет заказать решение, подходящее именно вам: как по дизайну, так и по бюджету.</p>

<p>Кресла для помещений от &laquo;Айрон Продакшн&raquo; рассчитаны на установку в местах повышенной проходимости. Их конструкция способна выдержать нешуточные нагрузки без неприятных последствий. Прочный каркас из металла и износостойкие, неприхотливые в обслуживании сидения гарантируют нашей продукции долговечность, а вам &mdash; отсутствие лишних трат на ремонт и обновление мебели.<br />
&nbsp;</p>

<p>&nbsp;</p>
', 'sektsii-kresel-dlya-zalav-ojidaniya', '50c7f0bd78239cfe9457e19ed5534017', 'Многоместные секции кресел для залов ожидания и помещений различного назначения заказывают в «Айрон Продакшн». Адекватные цены от производителя. Стойкость к износу. Комфортная конструкция.', '', '', '2', '["\\/files\\/service\\/24\\/a9a2c37b678dcf9ac42f9fefb6f8ee5e.jpg","\\/files\\/service\\/24\\/ab01c78374992feff12c70656c62015c.jpg","\\/files\\/service\\/24\\/606b504b676071fef7c8ee2ced7cf38a.jpg","\\/files\\/service\\/24\\/4043a8bc0476debb0f2909331d011648.jpg","\\/files\\/service\\/24\\/c68edeb8521f726a0ee9c5e9042eb649.jpg","\\/files\\/service\\/24\\/32f56ff6151908c1c567610e7d3636de.jpg","\\/files\\/service\\/24\\/495e40f566a2a6564d4c3f43b3e80c97.jpg"]', '/files/service/24/cf39e0840d313b81952583abab42e0a6.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '25', 'Стеллажи специализированные', '1', '7', '<p>&nbsp;</p>

<p><a class="button gray" href="http://ironprod.by/contacts" rel="nofollow">Заказать стеллаж</a></p>

<p style="text-align:justify"><img alt="складские стеллажи" class="rimg" src="http://ironprod.by/img/stellazh.jpg" style="border:0px none currentColor; height:270px; width:246px" title="складские стеллажи" /></p><p>Стеллажи применяются для рационального использования складского помещения и торговых площадей и способны значительно увеличить количество продукции, которое можно разместить в помещении, повышают удобство хранения и сортировки, в целях экономии времени на поиск необходимых товаров. Именно благодаря стеллажам, выпускаемых нашей компанией, вы сможете максимально эффективно использовать рабочие и производственные площади, и, соответственно, экономить значительные суммы при аренде складов и торговых площадок. Изготавливаемые металлические стеллажи можно условно разделить на несколько видов:</p>

<h3>Стеллажи складские из металла</h3>

<p>Металлические стеллажи для склада &ndash; многоуровневые конструкции из металлического профиля для удобного и безопасного хранения продукции на предприятиях, производстве, цехах, магазинах и других площадей, где необходимо структурировано хранить товар и продукцию максимально используя площадь складского помещения. Стеллажи складские успешно реализуются нашей компанией уже не первый год и всегда радуют заказчика своей ценной и высоким уровнем надежности и долговечности.</p>

<p><img alt="складские стеллажи" class="cimg" src="http://ironprod.by/img/stellazh1.jpg" style="border:0px none currentColor; height:300px; width:450px" title="складские стеллажи" /></p>

<h3>Передвижные торговые стеллажи</h3>

<p>Мобильные торговые стеллажи устанавливаются на специальные рельсы, которые дают возможность перемещать стеллаж с помощью управляющего механизма (штурвала). Это позволяет сделать использование такого стеллажа максимально комфортным в случае дефицита площади складского помещения. В основном такой способ хранения применяется при создании архивов документации, что дает возможность безопасно хранить важную информацию и ограничивать доступ к ней (оснащается замком).</p>

<h3>Полочные и архивные стеллажи в Минске</h3>

<p><img alt="торговые стеллажи" class="limg" src="http://ironprod.by/img/stellazh2.jpg" style="border:0px none currentColor; height:240px; width:265px" title="торговые стеллажи" /></p><p>Полочными стеллажами можно так же назвать стеллажи для офиса. Предназначаются они для хранения предметов малых габаритов и большого количества документов и ценных бумаг в ограниченном по площади офисном кабинете. Такие конструкции должны быть максимально компактными, что бы не мешать рабочему персоналу свободно перемещаться по офису, но так же архивные стеллажи для офиса должны сочетать в себе высокий уровень вместительности и удобство поиска необходимых документов.</p>

<p>Позвоните нашим мастерам по телефонам указанным на сайте, сделайте заказ на изготовление металлических стеллажей в Минске, и уже скоро мы произведем, доставим и установим вам стеллажи отвечающие всем современным требования долговечности, надежности и качества.</p>

<div class="yashare-auto-init">&nbsp;</div>
', 'stellaji-spetsializirovannyie', '4efc10ab347bc75b5d3ebf7adc09c615', '', '', '', '3', '["\\/files\\/service\\/25\\/cdaa7fc0463e7b5d35a74050a94d6fad.jpg","\\/files\\/service\\/25\\/140ee54309305729dc99171c2a2f706a.jpg","\\/files\\/service\\/25\\/7dd04fd02e42eea2c01ea924ec2fd565.jpg","\\/files\\/service\\/25\\/70042d541be0bbe9ed4348493627233d.jpg","\\/files\\/service\\/25\\/f24d9281da525390849d11b2045b762e.jpg"]', '/files/service/25/76eb7cbe66ac30b227daf75caf465d5a.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '26', 'Стойки торгово-выставочные', '1', '7', '<p>Торгово-выставочные стойки от &laquo;Айрон Продакшн&raquo; &mdash; эргономика и комфорт на службе у Вашего бизнеса</p>

<p>Если вы ищете, где купить торговые стойки в Минске от прямого производителя &mdash; на нашем сайте вы найдете всю нужную информацию. За плечами нашей команды &mdash; сотни реализованных проектов различной сложности. В частности, нам под силу создание торгово-выставочных конструкций любой конфигурации и для различных целей.</p>

<p>Вам необходимы торговые стойки, сложные выставочные конструкции или стенды на металлокаркасе? Возможно, вы хотите заказать перфорированные стойки или торговое оборудование иных разновидностей? Нет смысла искать дальше &mdash; просто сформулируйте задачу и свяжитесь с нами. Мы с удовольствием возьмем на себя воплощение в жизнь ваших самых смелых задумок.&nbsp; &nbsp;</p>

<p>&nbsp;&nbsp; &nbsp;Все наши торговые стойки можно использовать многократно и перевозить с места на место. Продвигайте и продавайте свои товары, где вам угодно.<br />
&nbsp;&nbsp; &nbsp;Наши изделия легко разбираются для транспортировки и так же легко монтируются снова на месте проведения мероприятия.<br />
&nbsp;&nbsp; &nbsp;Нужно изготовить нестандартную конструкцию, за которую отказываются браться другие? У нас есть для этого все необходимое.</p>

<p>Почему торгово-выставочные стойки заказывают именно у нас?</p>

<p>&nbsp;&nbsp; &nbsp;Износостойкость, которая впечатляет<br />
Сильная производственная база и наработанные технологии дают нам возможность выпускать эстетичную и функциональную продукцию с колоссально долгим сроком использования. Что это означает на практике? Вы получаете стильные и надежные торгово-выставочные стойки, разработанные четко под ваши задачи, и надолго забываете про необходимость ремонта или какого-то особого ухода.</p>

<p>&nbsp;&nbsp; &nbsp;Мы не срываем сроки<br />
Мы постоянно наращиваем производственные мощности и уделяем пристальное внимание совершенствованию нашего технического оснащения. Что это значит? Несмотря на то, что спрос на выставочные стойки нашего производства постоянно повышается, в наших силах &mdash; поставка партий абсолютно любого объема в наиболее короткое время. Даже в самые загруженные месяцы, когда объемы значительно увеличиваются, оговоренные сроки производства будут выдержаны с точностью до одного дня. Наши клиенты уверены в нас.</p>

<p>&nbsp;&nbsp; &nbsp;Торговые стойки без посреднических наценок<br />
Соотношение качества, внешних характеристик и цены на наши изделия &mdash; одно из наиболее привлекательных в Минске. Себестоимость продукции в &laquo;Айрон Продакшн&raquo; снижается не за счет экономии на надежности, а благодаря максимально отточенному процессу и крупным объемам производства. Это делает сотрудничество с нами выгодным и в финансовом плане.<br />
&nbsp;</p>

<p>&nbsp;</p>
', 'stoyki-torgovo-vyistavochnyie', 'fb888766101b49c2c06984de460ddfe1', 'Где купить торгово-выставочные стойки в Минске? Звоните в «Айрон Продакшн» и получайте долговечные конструкции от прямого производителя без переплат. Перфорированные стойки, торговое оборудование.', '', '', '4', '["\\/files\\/service\\/26\\/0f5b08b3e687525c495f0c1822d73ba9.jpg","\\/files\\/service\\/26\\/7c3d04ebd670301a427b46d40ea0f831.jpg","\\/files\\/service\\/26\\/57729766c53b9de5a321b07c7e855d10.jpeg","\\/files\\/service\\/26\\/d3c6c8fdd0a92f7baaf7361b6911f680.jpg","\\/files\\/service\\/26\\/4dc40eff206eae8e68313fd163306efc.jpg","\\/files\\/service\\/26\\/70b86ad3f805586af190132c09c525b3.jpg"]', '/files/service/26/89b46d6f7d1511c7f1826b4d157121e4.jpeg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '27', 'стальной уголок', '1', '8', '<p>Широкий выбор металлического уголка по низким ценам</p>

<p>Ищете, где по выгодным ценам купить металлический уголок в Минске? Больше не нужно искать &mdash; в компании &laquo;Айрон Продакшн&raquo; вы найдете привлекательные условия, которые непременно удовлетворят ваши требования. Мы поставляем металлопрокат напрямую с заводов-изготовителей, поэтому демократичная стоимость с минимальными наценками становится незыблемой спутницей всех предложений нашей организации. &nbsp;</p>

<p>Металлический уголок &mdash; немного цифр и фактов</p>

<p>С конструктивной точки зрения, такой тип сортового проката как металлический уголок отличается характерным поперечным сечением в виде буквы &laquo;Г&raquo;, при этом полки расположены строго под углом 90%. Изделия производятся из высококачественной стали, благодаря чему они обладают способностью выдерживать колоссальные нагрузки, укрепляя конструкцию, в которой используются.</p>

<p>Неудивительно, что металлический уголок так востребован в большинстве сфер сегодняшней промышленности. Он выступает в роли армирующего материала для сооружений из бетона, для усиления большепролетных перекрытий, активно используется при создании тяжелой техники.</p>

<p>Какие разновидности уголка имеются в продаже в &laquo;Айрон Продакшн&raquo;?</p>

<p>Вы можете подобрать изделия с различными видами сечения: как равнополочные, так и неравнополочные. На нашем складе, готовые к отгрузке в любой момент, вас всегда ждут различные размеры металлического уголка: 20х20, 25х25, 40х40, 50х50.</p>

<p>Что касается разновидностей металла, применяемых при изготовлении, выделяют уголок из стандартной углеродистой, конструкционной и низколегированной стали. Последний тип изделий обладает наибольшей прочностью и надежностью, благодаря чему он широко используется в сооружениях с большой нагрузкой или сложным атмосферным режимом.</p>

<p>Почему металлический уголок имеет смысл покупать именно у нас?</p>

<p>Весь ассортимент металлического уголка, реализуемый нашей компанией, подвергается требовательному контролю качества. Мы сотрудничаем только с проверенными поставщиками и на 100% уверены в надежности продукции, которую поставляем вам.</p>

<p>&nbsp;&nbsp; &nbsp;Объемный ассортимент.<br />
&nbsp;&nbsp; &nbsp;Вероятность брака сведена к нулю.<br />
&nbsp;&nbsp; &nbsp;Оперативная отгрузка со склада в Минске.<br />
&nbsp;&nbsp; &nbsp;Специальные цены на уголок.<br />
&nbsp;&nbsp; &nbsp;Гибкость при расчетах.<br />
&nbsp;&nbsp; &nbsp;Грамотные консультации от опытных менеджеров, которые действительно разбираются в том, что продают.</p>

<p>Звоните!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 'stalnoy-ugolok', '4c8a71c5301ef540e7120b60105d7ac9', 'Хотите купить металлический уголок по оптовым ценам в Минске? Партии любого объема — всегда в наличии на складах «Айрон Продакшн». Поставки напрямую с заводов без переплат.', '', '', '1', '["\\/files\\/service\\/27\\/ddfeb2dab545fa4896eebbe9f028f7bd.jpg"]', '/files/service/27/9f404ad44030c938b1d68f0ba908fb7d.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '28', 'лист стальной', '1', '8', '<p>Прочные металлические бытовки любой сложности</p>

<p>&nbsp;&nbsp; &nbsp;Вам необходимы долговечные металлические бытовки для дачи или заселения рабочих во время проведения строительных работ?<br />
&nbsp;&nbsp; &nbsp;Ваш бюджет не предполагает внушительных вложений, поэтому вы рассчитываете приобрести конструкцию по адекватным ценам?<br />
&nbsp;&nbsp; &nbsp;Желаете за небольшую сумму организовать мобильный офис, охранный пункт, передвижное хранилище или выездную столовую для работников на производстве?</p>

<p>В ООО &laquo;Айрон Продакшн&raquo; вы найдете надежного партнера, который справится с любой задачей &laquo;на отлично&raquo;: быстро, недорого и качественно. В рядах наших заказчиков &mdash; крупные стройорганизации, небольшие застройщики, бизнес-компании и частные лица.</p>

<p>Клиенты обращаются в ООО &laquo;Айрон Продакшн&raquo; снова и рекомендуют нас коллегам, потому что все они убедились: наши изделия служат десятки лет и остаются такими же надежными, как и в день приобретения. Ведь изготовлением бытовок из металла в ООО &laquo;Айрон Продакшн&raquo; занимаются далеко не первый год. В нашем распоряжении &mdash; серьезный опыт, доскональное знание всех тонкостей производства и множество практических наработок. Именно это исключает всякие сомнения по поводу качества наших конструкций.</p>

<p>Мы знаем, как сделать металлическую бытовку максимально прочной, устойчивой и безопасной. Доверьте создание этих сооружений нашей опытной команде &mdash; и защитите свой персонал и оборудование от неприятных сюрпризов.</p>

<p>Металлические бытовки &mdash; оцените преимущества ООО &laquo;Айрон Продакшн&raquo;</p>

<p>&nbsp;&nbsp; &nbsp;Наиболее выгодные цены на металлические бытовки. Итоговый счет за производство конструкции у нас всегда получается гораздо привлекательнее, чем фирм-посредников. Ведь каждый этап изготовления мы выполняем своими силами на грамотно оборудованном производстве. Мы не занимаемся перепродажей, не вовлекаем сторонних специалистов и имеет специальные цены от поставщиков материалов. Все это &mdash; залог низких расценок за продукцию действительно надежного качества.</p>

<p>&nbsp;&nbsp; &nbsp;Все бытовки из металла в нашей компании делаются из проверенных материалов первоклассного качества. Добавьте сюда скрупулезную сборку, применение отточенных технологий и высокое мастерство наших сотрудников &mdash; и вы поймете, почему ООО &laquo;Айрон Продакшн&raquo; доверяют долгие годы.</p>

<p>Готовы обсудить детали заказа? Хотите задать дополнительные вопросы? Желаете запросить расчет стоимости? Звоните!</p>
', 'list-stalnoy', '05e33ee0e42bed12e6a346779d54c012', 'Вы ищете, где заказать функциональную, доступную и комфортную металлическую бытовку для дачи или строительства? Вас интересуют разумные цены и быстрые сроки? Обращайтесь напрямую в ООО «Айрон Продакшн» и экономьте свои средства без ущерба в надежности.', '', '', '2', '["\\/files\\/service\\/28\\/a4eea7a2be1579f62c67444572e87559.jpg"]', '/files/service/28/564e032727a4eae503b85a9352485b73.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '29', 'арматура стальная', '1', '8', '', 'armatura-stalnaya', '23239a7ee3ad1a80ee277dfb75fec990', '', '', '', '3', '["\\/files\\/service\\/29\\/be1d77d38905db8d9f0a51c580e81af1.jpg"]', '/files/service/29/03b6235d8d5cb9eb4e0fabb401f093bb.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '30', 'швеллер стальной', '1', '8', '<p>Стальной швеллер безупречного качества для клиентов &laquo;Айрон Продакшн&raquo;</p>

<p>Хотите купить стальной швеллер высококлассного качества у надежного поставщика металлопроката? Приглашаем к сотрудничеству! Весь сортамент продукции, которую мы поставляем нашим партнерам, имеет полный комплект необходимых сертификатов качества и изготовлен со скрупулезным соблюдением актуальных нормативов и стандартов.</p>

<p>Этот тип сортового металлопроката, напоминающий букву &laquo;П&raquo;, давно зарекомендовал себя в качестве универсального &laquo;помощника&raquo; при строительных работах любого масштаба. Стальной швеллер незаменим везде, где требуется жесткое укрепление конструкции, придание ей устойчивости и прочности.</p>

<p>&nbsp;&nbsp; &nbsp;Возведение мощных каркасов.<br />
&nbsp;&nbsp; &nbsp;Укрепление стен и кровли.<br />
&nbsp;&nbsp; &nbsp;Сооружение перегородок.<br />
&nbsp;&nbsp; &nbsp;Ремонтные и монтажные мероприятия.<br />
&nbsp;&nbsp; &nbsp;Создание перекрытий между этажами и пр.</p>

<p>За счет малого веса, профиль с легкостью справляется с серьезными осевыми нагрузками, а также демонстрирует колоссальную прочность на изгиб.</p>

<p>Европейские стандарты обслуживания. Купить стальной швеллер &mdash; это просто</p>

<p>Хочется надеяться, что наш продуманный сервис станет для вас приятным бонусом к нашему партнерству. При возникновении любых затруднений, опытные сотрудники с легкостью помогут выбрать изделия подходящего вам типоразмера, проконсультируют вас по любым вопросам, связанным с металлопрокатом.</p>

<p>Мы высоко ценим каждого заказчика и стараемся идти навстречу в каждом конкретном случае, решая все вопросы оперативно и без бюрократической волокиты.</p>

<p>Нашим клиентам не приходится ждать, т.к. запасы стального швеллера на складе &laquo;Айрон Продакшн&raquo; в Минске постоянно пополняются. В результате, вы получаете заявленную продукцию в минимальные сроки. Вся процедура покупки проходит быстро и просто, а процесс отгрузки тщательно отлажен для вашего удобства: никаких заминок и долгих ожиданий.</p>

<p>Низкие цены на стальной швеллер &mdash; покупайте выгодно</p>

<p>Если вы желаете купить стальной швеллер и при этом не переплачивать цепочке посредников, присоединяйтесь к числу клиентов компании &laquo;Айрон Продакшн&raquo;. Поскольку мы имеем дело напрямую с заводами-изготовителями продукции, вы получаете возможность избежать завышенных цен на стальной швеллер. Вкладывайте свои средства разумно! &nbsp;</p>

<p>Появились дополнительные вопросы? Хотите обсудить наш прайс? Заинтересованы в сотрудничестве? Свяжитесь в нами по указанным телефонам.</p>

<p>&nbsp;</p>
', 'shveller-stalnoy', 'db89b1f613bc9dad9a5d0ddd94fd8c0c', 'Хотите купить стальной швеллер напрямую со склада в Минске? Избежать волокиты и ожиданий? Получить низкие цены за высококачественную продукцию? Ждем вас в «Айрон Продакшн»!', '', '', '4', '["\\/files\\/service\\/30\\/24fa413c6d15bb3ed7c0cf8f0dc8f5a5.png","\\/files\\/service\\/30\\/89ac15ec7bcaf934966292df746c966c.jpg","\\/files\\/service\\/30\\/6046506eccd07d8a3e47aa72694517cb.jpg"]', '/files/service/30/b6fa708b2aeb010929f9021ac524e2a0.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '31', 'труба профильная', '1', '8', '<p>Демократичные цены на профильную трубу в Минске. Комфортные условия покупки</p>

<p>Желаете по выгодным ценам за метр купить профильную трубу в Минске? Присоединяйтесь к числу клиентов компании &laquo;Айрон Продакшн&raquo; и убедитесь на практике, насколько просто и выгодно иметь с нами дело.</p>

<p>Прямые связи с производителями качественного металлопроката и внушительный масштаб собственных производственных мощностей позволяют нам предлагать партнерам специальные условия. Вы получаете продукцию максимального уровня по демократичным ценам без переплат. Каждая партия в полной мере соответствует жестким государственным стандартам.</p>

<p>Сервис европейского уровня, быстрая отгрузка, благожелательное отношение при улаживании технических моментов, простой и четкий финансовый алгоритм &mdash; вот лишь некоторые преимущества, которые ценят наши заказчики в сотрудничестве с нами.</p>

<p>Профильные трубы &mdash; конструкция, сильные стороны, разновидности</p>

<p>Под названием &laquo;профильные трубы&raquo; подразумеваются изделия со всеми типами сечения, отличными от классического круглого. Наиболее популярными вариантами считаются прямоугольные и квадратные. Благодаря своей форме, металлическая профильная труба вносит весомый вклад в создание ровной и жесткой конструкции, устойчивой к деформации даже в условиях усиленных нагрузок.</p>

<p>Профильную трубу из металла принято считать экономичным решением, т.к. сердцевина у нее отсутствует, а жесткость достигается именно за счет стен. Отсюда и высокая скорость монтажных работ, и малый вес, и легкость транспортировки.</p>

<p>Все разновидности профильной трубы, которую мы реализуем со своего склада, отлично показали себя в использовании и отличаются множеством преимуществ:</p>

<p>&nbsp;&nbsp; &nbsp;отменная механическая прочность;<br />
&nbsp;&nbsp; &nbsp;стойкость к износу и надломам;<br />
&nbsp;&nbsp; &nbsp;стабильность при неблагоприятных температурных условиях;<br />
&nbsp;&nbsp; &nbsp;высокие способности к сопротивлению серьезным статическим нагрузкам;<br />
&nbsp;&nbsp; &nbsp;универсальность в использовании;<br />
&nbsp;&nbsp; &nbsp;беспроблемная обработка.</p>

<p>Вы можете быть уверенными, что всегда найдете на складах &laquo;Айрон Продакшн&raquo; широкий ассортимент различных типоразмеров профильной трубы: 20х20, 20х40, 40х20, 40х40,60х60. Если у вас возникли малейшие вопросы или неуверенность, смело обращайтесь к нашим консультантам: они дадут грамотный совет и сориентируют в выборе, объективно подобрав подходящий для вас вариант.</p>

<p>От возможности купить профильную трубу выгодно и без лишних хлопот вас отделяет всего один звонок. Мы ждем ваших заявок!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 'truba-profilnaya', '556913ed5ee44470787974d2ef9b3aa5', 'Приглашаем с выгодой купить металлическую профильную трубу в Минске: 20х20, 20х40, 40х20, 40х40,60х60. Низкие цены за метр. Прямые поставки с комбинатов.', '', '', '5', '["\\/files\\/service\\/31\\/8a31aeff5540a60aa264dc6953dee561.jpg","\\/files\\/service\\/31\\/4647962754d2f544365ddb4e8babfd3c.jpeg"]', '/files/service/31/9e56af12cdc2a56bb6df4e0951c25c61.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '32', 'труба стальная', '1', '8', '<p>Хотите купить стальную трубу ВГП со склада в Минске?</p>

<p>Вы обратились по адресу! Благодаря прямым связям с комбинатами-изготовителями, компания &laquo;Айрон Продакшн&raquo; предлагает вам выгодные цены на стальную трубу ВГП.</p>

<p>Как становится ясно из расшифровки аббревиатуры ВГП &mdash; водогазопроводная &mdash; стальная труба ВГП используется при монтаже газо- и водопроводов, а также отопительных систем. Чтобы с успехом справляться с немалыми нагрузками в течение долгого времени и оставаться непроницаемыми для газа и жидкостей, такие трубы имеют увеличенную прочность, а также многократно усиленный сварной шов.</p>

<p>На какие разновидности подразделяются стальные трубы ВГП?<br />
Условная классификация выглядит следующим образом.</p>

<p>&nbsp;&nbsp; &nbsp;Относительно точности изготовления, стальные трубы ВГП бывают высокой или стандартной точности.<br />
&nbsp;&nbsp; &nbsp;Относительно типа обработки, изделия подразделяются на оцинкованные и &laquo;черные&raquo;.<br />
&nbsp;&nbsp; &nbsp;Относительно толщины стенки, конструкции бывают легкие, стандартные и усиленные.<br />
&nbsp;&nbsp; &nbsp;Относительно резьбы, различают трубы с накатной, нарезной резьбой или без резьбы.</p>

<p>Надежная стальная труба ВГП &mdash; особенности изготовления</p>

<p>Классический метод изготовления стальной ВГП трубы сводится к формовке трубы необходимого диаметра из полос стали, после чего производится сварка, причем, качеству полученного шва уделяется особо пристальное внимание. Все стальные трубы ВГП, которые мы реализуем, детально соответствуют строгим нормативам, утвержденным в официальных государственных стандартах.</p>

<p>В результате, по сроку службы и надежности водогазопроводная труба из стали может смело тягаться со своими металлопластиковыми &laquo;конкурентами&raquo;. А вот цена на стальную трубу ВГП &mdash; позволяет уложиться в гораздо меньший бюджет. Это и объясняет стабильную популярность таких решений.<br />
&nbsp;<br />
Низкие цены на стальную трубу ВГП с сертификатами качества</p>

<p>Если вам необходима качественная стальная труба ВГП, вы можете смело рассчитывать на ООО &laquo;Айрон Продакшн&raquo;. За годы работы с металлопрокатом мы сумели доказать свой статус стабильного и надежного партнера в глазах множества компаний. С удовольствием покажем и вам все преимущества сотрудничества с нами.</p>

<p>Готовы сделать заказ на стальную трубу ВГП? Вам необходим дельный совет от специалистов? Просто наберите наш номер. Каждый наш менеджер имеет серьезный опыт за плечами и проконсультирует вас по любому вопросу.</p>

<p>&nbsp;</p>
', 'truba-stalnaya', '82a14645a46a6642fdd099272f49e152', 'Ищете надежного поставщика стальной трубы ВГП в Минске? Вас интересуют прямые поставки с заводов и адекватные цены? Все это вы найдете в «Айрон Продакшн».', '', '', '6', '["\\/files\\/service\\/32\\/081b84c07fa425e45cd820346c5f4a80.jpg","\\/files\\/service\\/32\\/8a15e6237cab61eec8cf0c2d7088df24.jpg"]', '/files/service/32/8e559ba1cfc0f29f9683992497085307.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '33', 'квадрат стальной', '1', '8', '<p>Предлагаем вам доступные цены на стальной квадрат в Минске</p>

<p>Если вы ищете компанию, в которой можно выгодно купить стальной квадрат 8х8, 10х10 мм, присмотритесь к тому, что мы предлагаем. На складе &laquo;Айрон Продакшн&raquo;, в любой момент готовые к отгрузке, вас дожидаются все наиболее ходовые типоразмеры квадрата из стали.</p>

<p>Налаженная связь с тщательно отобранными нами заводами-изготовителями металлопроката дает нам возможность поставлять продукцию без посреднических услуг, а вам &mdash; получать первоклассные материалы без лишних надбавок. Мы уверены, наша цена на стальной квадрат наверняка вас заинтересует.</p>

<p>Разумеется, мы представляем заказчикам все нужные документы, свидетельствующие о высоком качестве реализуемого квадрата. Сотрудничать с ООО &laquo;Айрон Продакшн&raquo; &mdash; означает надежно позаботиться о безопасности и прочности изготавливаемой вами продукции.</p>

<p>Конструктивные особенности стального квадрата</p>

<p>Его наименование говорит само за себя: сечение стального прута данного типа имеет стандартную квадратную форму. В роли материала для его изготовления выступают разнообразные виды стали: низколегированная, углеродистая сталь стандартного или улучшенного качества, а также высоколегированная сталь.</p>

<p>Современные технологические возможности дают возможность производить квадратные стержни, размер стороны которых может составлять 6-200 мм.</p>

<p>Востребованность стального квадрата во всех сферах современной промышленности легко объясняется.</p>

<p>&nbsp;&nbsp; &nbsp;Этот вид металлопроката отличается потрясающей прочностью.<br />
&nbsp;&nbsp; &nbsp;Износостойкость превращает его в выгодное вложение средств.<br />
&nbsp;&nbsp; &nbsp;Антикоррозийные свойства гарантируют долгий срок службы.<br />
&nbsp;&nbsp; &nbsp;Гибкость стали, из которой производится квадрат, позволяет с легкостью обрабатывать изделие, придавая ему необходимую форму.<br />
&nbsp;&nbsp; &nbsp;Малый вес при чрезвычайной жесткости материала становится весомым фактором при возведении масштабных конструкций.</p>

<p>Все разновидности стального квадрата на складе в Минске</p>

<p>Чтобы закупка была успешной, важно выяснить, какую разновидность продукции вы хотите приобрести. Стальные квадраты можно разделить на горячекатаные, калиброванные и кованые.</p>

<p>Если у вас возникли любые вопросы, связанные с поставляемым нами прокатом, вы можете рассчитывать на профессиональную консультационную поддержку. Глубокие знания и серьезный опыт наших сотрудников призваны помочь вам сделать правильный выбор. Звоните!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 'kvadrat-stalnoy', '5ec399dcf73a9f9edaa44df987aead4e', 'Купить стальной квадрат по низким ценам без переплат — возможно, если иметь дело с проверенным поставщиком. «Айрон Продакшн»: наши деловые связи работают на вас.', '', '', '7', '["\\/files\\/service\\/33\\/b1368ceece48cf52dcfdb791dc8133b8.jpg"]', '/files/service/33/a40c799f41bae55b2a01d2e14ad4f619.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '34', 'круг пруток стальной', '1', '8', '', 'krug-prutok-stalnoy', '237530d9d756af46c4f31db4a7a7ae16', '', '', '', '8', '["\\/files\\/service\\/34\\/db74978257ccf017196d21550562c1bb.jpg","\\/files\\/service\\/34\\/4be68f29a1f9b280ee0e48c838d1c441.jpg"]', '/files/service/34/869d1ac172b234a0afab9e29ee6b13b6.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '35', 'лист перфорированный', '1', '8', '', 'list-perforirovannyiy', 'c3b4dacb439fa760cb5edab9f7485bb6', '', '', '', '9', '["\\/files\\/service\\/35\\/61eacc130cc6ec7186051e31a608dac7.jpg"]', '/files/service/35/e724e24599a6ef6048ff3823d82097b4.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '36', 'лист гладкий', '1', '8', '', 'list-gladkiy', 'c1ac202da79cc94c4d7daf955d623290', '', '', '', '10', '[]', '' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '37', 'Полимерное покрытие металлов', '1', '9', '<div class="content_min">
<div class="leading">
<div class="articleBody">
<p><img alt="Полимерное покрытие металла" class="limg" src="http://ironprod.by/img/polimernoe-pokritie.jpg" style="border:0px none currentColor; height:225px; width:300px" title="Полимерное покрытие металла" /></p><p>ООО Айрон Продакшн предлагает услуги по высококачественной порошковой окраске поверхностей из металла: как ручным методом, так и в автоматическом режиме. Внутренние размеры камер: (4000 х 1100 х 1750) мм. Возможно размещение плоских металлоконструкций в камере по диагонали в размер (4360 х 2060) мм.</p>

<p>Данный процесс основан на использовании специального порошка на базе полимера, который придает изделию выдающиеся физико-механические и эстетические свойства. Полимерное покрытие стали и других металлов обеспечивает <a href="" title="изготовление металлоконструкций">производимым металлоконструкциям</a> мощную защиту от агрессивных воздействий и одновременно с этим - внешнюю привлекательность.</p>

<p>Металлочерепица, доборные кровельные элементы, металлокаркасы любого предназначения, ограждения, профлист и т.п. - диапазон решений, в которых актуально применение такого покрытия, весьма широк.</p>

<h2>Достоинства порошковой окраски</h2>

<ul>
	<li>Прочность и долговечность<br />
	Полимерное покрытие демонстрирует впечатляющие антикоррозийные свойства, продлевая жизнь изделиям из металла на десятки лет. Гибкое и колоссально прочное, оно не откалывается и не трескается, не боится ни изнуряющей жары, ни критически низких температур, ни воздействия воды. В плане износостойкости и устойчивости, порошковая окраска - безусловный лидер.</li>
	<li>Экономическая выгода<br />
	Цена на полимерное покрытие металла на порядок более выгодна, по сравнению с окраской обычными лакокрасочными материалами. С первого раза полимерный слой получается плотным и основательным - как правило, обычные краски могут обеспечить такой эффект лишь при нанесении нескольких слоев.</li>
	<li>Обширная цветовая гамма<br />
	Изделия с порошковым напылением могут похвастаться привлекательными эстетическими свойствами. Сегодня, для покрытия можно выбрать любой из множества цветов, не только базовых, но и достаточно сложных оттенков - вплоть до искусной имитации различных фактур и эффекта искусственного старения. Полимерный слой не выцветает и не тускнеет с течением времени, сохраняя насыщенный цвет даже под лучами солнца.</li>
	<li>Безвредность<br />
	Помимо всего, этот тип окрашивания металла признан самым экологичным, а также отличается увеличенной адгезией к поверхности.</li>
</ul>

<h2>Нанесение полимерных покрытий: этапы производства</h2>

<p>Процесс нанесения полимерного покрытия включает в себя последовательное выполнение нижеуказанных операций.</p>

<ol>
	<li>Выбор оптимального материала покрытия и способа его нанесения<br />
	Правильный выбор надлежащего полимера и подходящей технологии его нанесения значительным образом влияет на итоговый результат. При принятии решения, учитывается необходимая толщина полимерного слоя, условия будущей эксплуатации изделия, особенности его конструкции и состава, а также предъявляемые требования к свойствам материала.</li>
	<li>Подготовительная обработка поверхности конструкции перед нанесением<br />
	Грамотно проведенная поверхностная обработка изделия является исключительно весомым фактором для создания качественного полимерного покрытия. Приступать к процессу нанесения порошкового слоя следует лишь после окончания всех операций по предварительной механической и термической обработке поверхности. Чтобы результат был идеален, поверхность должна быть совершенно чистой и гладкой: нормативы на этот счет очень строги.Механическая обработка изделий, в большинстве случаев, проводится методом дробеструйной или пескоструйной очистки. <a href="http://ironprod.by/svarochnye-raboty" title="сварка металла">Сварочные</a> швы очищаются от окислов, заусеницы удаляются, начисто убирается ржавчина и окалина. Далее, поверхность подвергается обезжириванию и дополнительной обработке, которая усиливает адгезию и улучшает антикоррозийные показатели (оксидирование, фосфатирование или грунтование).</li>
	<li>Нанесение полимерного слоя на поверхность изделия<br />
	Доскональное внимание при проведении этой операции уделяется равномерности толщины красочного слоя и аккуратному распределению его по всей поверхности. Осаждение порошковых полимерных покрытий, как правило, выполняется по одной из следующих технологий:
	<ul>
		<li>Осаждение во взвешенном слое. Технологическая специфика данного метода заключается в переводе полимерного порошка в состояние псевдоожиженности. В полученный таким образом слой вносится нагретая деталь, после чего происходит оплавка контактирующих с изделием частиц полимера и их закрепление на поверхности.</li>
		<li>Электростатические методы. Они подразумевают распыление полимера в электростатическом поле или технологию напыления в облаке заряженных частиц порошка.</li>
		<li>Насыпание. При данном методе осаждения, покрывающий слой образуется как результат оплавки слоя полимерного порошка, который наносится на поверхность изделия при помощи вибрирующего лотка через специальное сито.</li>
	</ul>
	</li>
	<li>Высокотемпературная обработка (полимеризация) изделия<br />
	В специальной термокамере осуществляется финишный этап - термическая обработка изделия с покрытием. Эта операция обеспечивает приобретение нужной адгезионной прочности сцепления частиц полимера с поверхностью.</li>
</ol>

<p>Надлежащий выбор температурно-временного режима оплавления оказывает существенное влияние на электрофизические, механические и физико-химические показатели покрытия. Он обуславливается множеством факторов (конструкцией окрашиваемого изделия, природой металла и полимера) и, в большинстве случаев, подбирается опытным путем.</p>

<ul>
</ul>

<div class="yashare-auto-init">&nbsp;</div>
</div>
</div>
</div>
', 'polimernoe-pokryitie-metallov', '92805fc964c0e953aa02994108112bf9', '', '', '', '1', '["\\/files\\/service\\/37\\/d3d4be56e7667ef71838f518b9f8931d.jpg","\\/files\\/service\\/37\\/ea472b1cc118ccfc1f21cb99ab86d9bf.jpg","\\/files\\/service\\/37\\/c1c7c8f4b26a2823451ed6c2d60f0508.jpeg","\\/files\\/service\\/37\\/57639c8980d619c9979b87537d96ce59.jpg","\\/files\\/service\\/37\\/cd1f9bd02ddf678471adde4f01ab2f8b.jpg","\\/files\\/service\\/37\\/0ef3b5274b0e5b9fd17a59e6d82c7be4.jpg"]', '/files/service/37/6b4e0e901d0a7a6a7302978755197a5a.JPG' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '38', 'Плазменная резка металлов', '1', '9', '<h3>Резка металла плазмой в Минске - ООО &quot;Айрон Продакш&quot;</h3>

<p><img alt="плазменная резка металла" class="limg" src="http://ironprod.by/img/plazmorez.jpg" style="border:0px none currentColor; height:188px; width:250px" title="плазменная резка металла" /></p><p>Плазменная резка &ndash; высокотехнологический метод резки металла, при котором используется струя плазмы. Данный тип позволяет производить работы с высокой точностью и минимальными временными затратами, а специальные генераторы плазмы (плазмотроны), которые не требуют частой замены расходных материалов, &nbsp;обеспечивают экономию средств, при проведении данных работ. Струя плазмы способна резать металлы стойкие к коррозийному воздействию (нержавейка) толщенной около 10 сантиметров.&nbsp; Высокая точность нарезки независимо от толщины и размеров делают резку металла плазмой одним из самых популярных способов обработки металла в современной индустрии.</p>

<h3>Преимущества плазменной резки:</h3>

<p>Плазменная резка в Минске дает возможность обрабатывать:</p>

<table border="0" style="width:100%">
	<tbody>
		<tr>
			<td>
			<ul>
				<li>сталь</li>
				<li>чугун</li>
				<li>нержавейку</li>
			</ul>
			</td>
			<td>
			<ul>
				<li>алюминий</li>
				<li>медь</li>
				<li>титан</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>

<p>В отличии от кислородной, плазменная резка различного металла позволяет экономить время на реализацию поставленных задач,&nbsp; значительно сокращает расходы, сводит деформацию в месте разреза к минимуму, дает возможность реза сложных геометрических фигур и обладает отличными экологическими показателями.</p>

<h3>Технология резки металла плазмой</h3>

<p>В сопло станка подается газ (воздух), который нагретый электрической дугой до высокой температуры ионизируется (ионизированный газ утрачивает свойства диэлектрика и после нагрева способен проводить электрический ток), &nbsp;получившаяся струя плазмы подается через плазмотрон и расплавляет металл по не обходимому контуру. Расплавленный металл в жидком виде выдувается по лини разреза потоком газа, из которого образуется плазма. Такая обработка позволяет проводить качественную плазменную резку с максимально высокой точностью, а металл не теряет свою структуру, следовательно, места резки не нуждаются в дополнительной обработке, что очень сильно сокращает бюджеты и сроки на <a href="" title="сварочные работы по металлу">сварку металла</a> и последующие работы с ним.</p>
', 'plazmennaya-rezka-metallov', 'e67bdf6270de8dbfa79fbb7cd8efea83', '', '', '', '2', '["\\/files\\/service\\/38\\/89a58afe6428a029b718b0d272075b98.jpg","\\/files\\/service\\/38\\/286be371a67369a5f4ec7078bf25cd7d.jpg","\\/files\\/service\\/38\\/0ceb108adbcee3433c1602ae7f73ed33.jpg","\\/files\\/service\\/38\\/b3c6c1c424268d1f070bc781b6bc3cc6.jpg","\\/files\\/service\\/38\\/a8d228d30b2d04c8ef4c316298b75240.jpg","\\/files\\/service\\/38\\/94853e78cacc5a5c1f3392187eab71e4.jpg","\\/files\\/service\\/38\\/f8e1c754cbd86693a984f06fd47b0ddf.jpg","\\/files\\/service\\/38\\/7d0b2966085f1f9fc9a12043e7dde850.jpg","\\/files\\/service\\/38\\/10169c199bf206753b12876e69024037.jpg","\\/files\\/service\\/38\\/e92f9a64902d000b96194ce23686acd5.jpg","\\/files\\/service\\/38\\/dbb94f5b2368e812d6a1d6341a6d5116.jpg","\\/files\\/service\\/38\\/2b29981d6bb1ff8a4925de795492eb82.jpg","\\/files\\/service\\/38\\/f999be9a9450024a00bc1acd473a469c.jpg"]', '/files/service/38/a7a34c11bef9991441cce2ea973db375.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '39', 'Гибка стальных труб', '1', '9', '<h3>Резка металлических труб в Минске</h3>

<p><img alt="гибка труб в Минске" class="limg" src="http://ironprod.by/img/truba.jpg" style="border:0px none currentColor; height:162px; width:270px" title="вальцовка труб в Минске" /></p><p>Если вам требуется вальцовка труб, и вы находитесь в Минске - наша компания поможет вам! Гибка труб, вальцовка и любые другие работы с трубами наши мастера проводят на самом современном оборудовании, что позволяет значительно снизить стоимость таких работ. На надежность и герметичность соединения медной трубы с фитингом прямое влияние оказывает качество обработки торца трубы. Труба должна быть отрезана строго перпендикулярно продольной оси, в противном случае не возможно будет обеспечить плотное примыкание трубы к раструбу фитинга. Для обеспечения реза, отвечающего этим требованиям можно воспользоваться ножовкой по металлу и стуслом. Однако, при больших объемах <a href="" style="text-decoration : underline;">работ</a> целесообразно применять специальный инструмент &ndash; труборез.</p>

<p>Качественный труборез представляет собой приспособление, внешне напоминающее ручные тиски, на одной из губок которых закреплен режущий ролик. Чтобы разрезать трубу, ее размещают между губками трубореза, регулировочным винтом плотно прижимают режущий ролик к трубе. Затем делают несколько полных оборотов труборезом вокруг трубы и регулировочным винтом еще плотнее прижимают ролик. Продолжать эту операцию необходимо до тех пор, пока труба не будет разрезана. После этого, необходимо удалить заусенцы. Если этого не сделать, труба может издавать свистящий звук, или вибрировать при прохождении по ней воды. Обычно труборезы оснащены специальными лезвиями для снятия заусенцев. Если Вы резали трубу ножовкой, можно воспользоваться надфилем или небольшим напильником.</p>

<p>Семь раз отмерь, один раз отрежь &ndash; это правило в полной мере применимо при расчете длины трубы. Нельзя забывать о припусках, необходимых для соединения трубы с фитингом. Таким образом, полная длина отрезка трубы будет равна расстоянию между фитингами и удвоенной величине припуска. Для того, чтобы определить величину припуска необходимо измерить глубину гнезда на фитинге до втулки или колена.</p>

<h3>Зачистка мест соединения труб</h3>

<p>Следующий этап &ndash; удаление окислов с поверхности соединяемы элементов. Зачистить конец трубы и внутреннюю поверхность гнезда фитинга можно при помощи мелкозернистой наждачной бумаги, либо воспользовавшись специальными проволочными щетками. Зачищать конец трубы нужно обязательно с небольшим запасом, так чтобы длина обработанного конца трубы была больше глубины гнезда фитинга. Это необходимо для обеспечения хорошей связи между припоем и фитингом. Очень важно качественно выполнить этот этап работы, от этого в конечном итоге будет зависеть герметичность соединения.</p>

<h3>Услуга гибка и вальцовка трубы</h3>

<p>В процессе монтажа труб часто возникает необходимость выполнения различных изгибов и вальцовки. Существует несколько способов изогнуть медную трубу, не повреждая ее. Для гибки и вальцовки толстостенных труб или труб большого диаметра можно воспользоваться рычажным трубогибом. Трубы небольшого диаметра можно гнуть при помощи пружинного трубогиба. Для этого нужно надеть подходящий по диаметру пружинный трубогиб на трубу и выполнить изгиб. Трубогиб будет удерживать стенки трубы и не даст им смяться. После выполнения изгиба трубогиб снимают с трубы при помощи вращательных движений.</p>

<p>Если необходимо выполнить крутой изгиб, можно воспользоваться следующим способом. В трубу засыпают сухой песок и затыкают оба конца трубы пробками. После этого можно смело гнуть трубу &ndash; песок не даст ей сломаться или смяться в месте изгиба. Затем нужно удалить песок и промыть трубу проточной водой.</p>
', 'gibka-stalnyih-trub', '6358c43940bbbbe4c6a5a73be4f45988', '', '', '', '3', '["\\/files\\/service\\/39\\/9113ee2070405dce22e87be8c2a00b93.jpeg","\\/files\\/service\\/39\\/3d4109eddcd3660c4df6b140d800ae12.jpeg","\\/files\\/service\\/39\\/1ba70c3956d6dab54321fecf99bfe09c.jpg","\\/files\\/service\\/39\\/5362d8279a1045f2a06ec2586af2d0cb.jpg","\\/files\\/service\\/39\\/dc39fbb027873c4a812873b7782a6382.jpg","\\/files\\/service\\/39\\/da822dc9b6e27346043326575b777050.jpg"]', '/files/service/39/097390fd3ac1039abf48f7e7569e1f34.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '40', 'Наплавка металла', '1', '9', '<p>Твердосплавная наплавка металла на спецтехнику позволяет привнести ощутимую экономию в рабочий процесс в любой производственной сфере. Эта операция позволяет уберечь от износа поверхности, которые активно подвергаются повышенным химическим, термическим, ударным, абразивным или комплексным нагрузкам.</p>

<p>В сущности, наплавка металла &ndash; это нанесение на поверхность элемента слоя металла заданной толщины с требуемым качеством, улучшающими изначальные свойства детали.</p>

<p>Твердосплавная наплавка металла, помимо особых износостойких характеристик, обеспечивает возможность в дальнейшем применять термообработку, включая и отжиг, при дальнейшей механической обработке, будь то закалка или резание.</p>

<h3>Наплавка металла - реабилитация изношенных деталей</h3>

<p><img class="limg" src="http://ironprod.by/img/elektrod1.jpg" style="height:180px; width:240px" /></p><p>При промышленных объемах производства, компоненты спецтехники подвергаются износу и ломаются с &laquo;завидной&raquo; регулярностью. Часто случается так, что нужная техника уже снята с производства, и возможности заменить испорченную подведшую деталь на оригинальную попросту нет. Также, нередко восстановить деталь методом твердосплавной наплавки выходит куда выгоднее, чем терять время на заказ и доставку ее от производителя. Более того, как правило, восстановленные элементы работают потом даже лучше, чем &laquo;родные&raquo;, т.к. при процессе восстановления наплавкой можно учесть конструктивные минусы детали и доработать их, придав элементу необходимые качества.</p>

<h3>Придание специальных свойств</h3>

<p>Процедура способна придавать поверхностям дополнительные характеристики. Так, при необходимости наплавленный слой может обеспечить усиленную износостойкость, антифрикционные способности, придать детали антикоррозийные качества, повышенную твердость, устойчивость к кислотам, высоким температурам и пр.</p>

<h3>Замедление износа</h3>

<p>Твердосплавная наплавка металла в самом начале эксплуатации значительно увеличивает срок службы рабочих поверхностей станков и механизмов.</p>

<p>Плюсы здесь очевидны:</p>

<ul>
	<li>Снижение затрат на текущее обслуживание оборудования и замену вышедших&nbsp; из строя деталей.</li>
	<li>Уменьшение расхода дорогостоящих или дефицитных материалов при изготовлении деталей.</li>
	<li>Как результат, сокращение себестоимости выпускаемой продукции.</li>
</ul>

<h3>Выгодно и практично</h3>

<p style="text-align:justify"><img class="rimg" src="http://ironprod.by/img/elektrod2.jpg" style="height:180px; width:240px" /></p><p>Сложно вспомнить такую отрасль, в которой твердосплавная наплавка и резка металла не востребованы.&nbsp;<br />
Машиностроение, деревообработка, производство цемента, металлургия, энергетика, пищевая, горнодобывающая и нефтехимическая промышленности. Все эти области объединяет одно: спецтехника в них особо подвержена износу.&nbsp; И так как природа износа всегда разная, для каждого случая усиления методом твердосплавной наплавки мы тщательно подбираем оптимальный сплав, производим <a href="" title="резка металла">резку износившегося металла</a> и наплавляем новый, долговечный материал.</p>

<h3>Приглашаем к сотрудничеству</h3>

<p>10-ти летний опыт плотной работы с промышленными предприятиями в сфере защиты от износа и надежные материалы от проверенных производителей дают нам возможность гарантировать проведение работ на безупречном уровне.</p>
', 'naplavka-metalla', 'c9dbcebd358bee8237805362185d46b8', '', '', '', '4', '[]', '/files/service/40/eedeb48034983065f7fa14cf9affac58.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '41', 'Сцены и подиумы', '1', '6', '<p>Изготовление металлических сцен и подиумов: быстро, тщательно и удобно<br />
Вот уже много лет заказчики доверяют производство мобильных сцен и стационарных подиумов компании &laquo;Айрон Продакшн&raquo;. Предлагаем вам присоединиться к числу наших клиентов! Удостоверьтесь на собственном опыте: стойкость к износу и удобство сценических комплексов нашего производства делают их оптимальной площадкой для мероприятий любого рода.</p>

<p>Производство безопасных мобильных сцен &mdash; проверенное качество<br />
Кроме эстетической стороны и вопросов функциональность, при изготовлении металлических сцен и подиумов&nbsp; мы принимаем во внимание все требования безопасности. Ведь во время проведения концерта или представления настил сцены подвергается нешуточным нагрузкам.</p>

<p>&nbsp;&nbsp; &nbsp;Именно поэтому мы тщательно рассчитываем прочность каждой конструкции, закладывая необходимый запас.<br />
&nbsp;&nbsp; &nbsp;Удобная лестница и надежные ограждения вносят дополнительный вклад в итоговую безопасность наших сооружений.<br />
&nbsp;&nbsp; &nbsp;Отталкиваясь от ваших требований, мы возводим как стационарные, так и мобильные варианты. Сборные алюминиевые подиумы и сцены позволяют разбирать и перевозить конструкцию без особых хлопот.</p>

<p>Готовы заказать металлическую сцену? Хотите обсудить детали сотрудничества? Звоните!</p>
', 'stsenyi-i-podiumyi', '6b7753eb4408519ad783a415cc82bd64', 'Надежное изготовление металлических подиумов и сцен от «Айрон Продакшн». Экономически выгодные решения от производителя. Сборные алюминиевые конструкции, стационарные варианты.', '', '', '18', '["\\/files\\/service\\/41\\/76bb0ae86b6eef5595ad73e76f8671d2.jpg","\\/files\\/service\\/41\\/88c3670f307a8727547d3b8ad9b4012a.JPG","\\/files\\/service\\/41\\/65367909dc349cbdbcc3ebb9b21572fe.JPG","\\/files\\/service\\/41\\/904c8af982952caa758336a2973b6880.jpg","\\/files\\/service\\/41\\/f1e50a622aa401f0291ce31ee42ab1a6.jpg","\\/files\\/service\\/41\\/0fab23e83156acce7844dc2c062523c9.jpg","\\/files\\/service\\/41\\/470b2e68dff702bca775307b41d3478d.gif"]', '/files/service/41/0de2a0ce1779eb2254caee13d2f28ca6.JPG' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '42', 'Металлические ограждения территорий', '1', '10', '<p><img alt="кованый забор из металла" class="rimg" src="http://ironprod.by/img/zabor6.jpg" style="height:180px; width:239px" /></p>

<p><strong>Металлические заборы</strong> и ограждения один из наилучших способов оградить ваши личную собственность от внешнего мира. С древних времен кованые заборы олицетворяли надежную защиту и неприступность, а в сочетании с современным дизайном и замысловатыми приемами обработки металла стали большим и надежным украшением участка своего владельца. В современном строительстве существует множество разновидностей ограждений разные по стоимости, дизайну и степени защиты. В современном строительстве можно выделить две основные группы металлических заборов:</p>

<h3>Сварные заборы из металла</h3>

<p>Сварные кованые ограждения успешно сочетают в себе эстетические качества, высокие показатели надежности и долговечности, однако их стоимость значительно выше. При изготовлении такого забора используются профильные трубы и&nbsp; стальные полосы различных размеров и диаметра, что позволяет регулировать прочность изделия при его изготовлении. А с точки зрения дизайна, сварной забор может украшаться как вьющимися растениями, так и эксклюзивными коваными элемент.</p>

<p><img alt="металлический забор" class="cimg" src="http://ironprod.by/img/zabor1.jpg" style="height:90px; width:120px" /> <img alt="забор из металла" class="cimg" src="http://ironprod.by/img/zabor3.jpg" style="height:90px; width:120px" /> <img alt="металлическое ограждение" class="cimg" src="http://ironprod.by/img/zabor4.jpg" style="height:90px; width:120px" /> <img alt="ограждение из металла" class="cimg" src="http://ironprod.by/img/zabor5.jpg" style="height:90px; width:120px" /></p>

<h3>Забор из профнастила</h3>

<p>Металлические заборы из профнастила получили широкое распространение благодаря низкой стоимости и простоты установки, однако его внешний вид нельзя сравнивать с восхитительным дизайном кованого ограждения. Так же профнастил отлично защищает территорию от пыли и грязи, ограничивает видимость владений и не допускает проникновение животных к вам на участок.</p>

<p><img alt="забор из профнастила" class="limg" src="http://ironprod.by/img/zabor7.jpg" style="height:200px; width:266px" /></p>

<p>Наши мастера выполняют работы по изготовлению металлических ограждений, как по типовым чертежам, так и по вашим индивидуальным пожеланиям на максимально профессиональном уровне и в короткие сроки. Что бы <strong>купить забор</strong> сделайте заказ по телефонам указанным на сайте и уже скоро вашу собственность будут оберегать ограждения из металла, купить которые вы можете у нас. Ограждения отвечают всем современным требованиям защиты и надежности.</p>
', 'metallicheskie-ograjdeniya-territoriy', '1ee1f99e69622e09889460cbe7d5782e', '', '', '', '2', '["\\/files\\/service\\/42\\/6e0b61188f82b8b0f338b2bb7e4afb9a.jpg","\\/files\\/service\\/42\\/27c9cc9759d241449ad426b79aabd155.jpg","\\/files\\/service\\/42\\/f090670f8eb2a7f7e35a1b60e34cc2b8.jpg","\\/files\\/service\\/42\\/441d2df64064d48c85d0558feaa20fb2.jpeg","\\/files\\/service\\/42\\/49b359ae6abc7ff6fef958dd91e924a3.jpg","\\/files\\/service\\/42\\/8625c574ec1b21b420cef6c28cebf4a5.png","\\/files\\/service\\/42\\/b592796fd8b12ea0d58f85cd317dfcdc.jpg","\\/files\\/service\\/42\\/8f74f21d544f4156476181606c7997a8.jpg","\\/files\\/service\\/42\\/76f5ce9d7f4705713e04e71b77872847.jpg","\\/files\\/service\\/42\\/9c278fd955cc2d90703b6c9c671c168c.jpg","\\/files\\/service\\/42\\/5a5de65a383ba091a4278c4ba551b917.jpg","\\/files\\/service\\/42\\/3b13f1ef2642f35bf9efc1b868302818.jpg","\\/files\\/service\\/42\\/c89c4fcb6b3af19b4e77c81f824b5197.jpg","\\/files\\/service\\/42\\/72f3db81c5f79f01ecb39f6789f55e8a.jpg"]', '/files/service/42/3ee16b619b5e6f62687ddd5d54ff5bd0.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '43', 'Контейнеры для ТБО', '1', '10', '', 'konteyneryi-dlya-tbo', '822a4400f0d45496f2d7395bcb8d6d13', '', '', '', '3', '["\\/files\\/service\\/43\\/33b0b004753ae5d69dd3ca130010f191.jpg","\\/files\\/service\\/43\\/9810fbf4b376b5668f592111269806e2.jpg","\\/files\\/service\\/43\\/37ee5537ad1b2b656414cc1883c06853.jpg","\\/files\\/service\\/43\\/2e18ba15a619a4781535d512bd46cb14.jpg","\\/files\\/service\\/43\\/b0844bebf30c3992b84d6f26c5f75cd9.jpg","\\/files\\/service\\/43\\/d9d78830402f51b2509f4c8848aba7bd.jpg"]', '/files/service/43/4806f500a4c3ab1317253d5996c8af6d.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '44', 'Урны', '1', '10', '<p>Удобные и функциональные урны для мусора по выгодным ценам<br />
Одним из направлений деятельности нашей компании является изготовление урн для мусора. Мощная материально-техническая база дает нам возможность легко справляться с задачами любого масштаба &mdash; от производства мелкой партии типовых мусорных урн до выполнения в краткие сроки крупного заказа по индивидуальным чертежам. Опыт, собственные наработки и применение свежих технологий позволяет нам поддерживать демократичные расценки без снижения качества продукции.</p>

<p>Достоинства металлических урн для мусора производства &laquo;Айрон Продакнш&raquo;<br />
При создании металлических урн для мусора мы уделяем повышенное внимание надежности и прочности своих изделий. Все они имеют увеличенный срок службы и максимально выносливую конструкцию, в результате чего, они не выходят из строя даже при значительных нагрузках.</p>

<p>На первый план выходит прочность: наши урны с легкостью выдерживают атаки вандалов или случайное столкновение с транспортом. Мусорная урна из крепкого металла не теряет своей стойкости от погодных катаклизмов, физических воздействий и многократных моек с применением агрессивной химии.</p>

<p>Какие виды металлических урн для мусора мы выпускаем?<br />
Ограничений нет. Каждый заказчик может подобрать индивидуальное решение, оптимально подходящее ему по объему, конфигурации и особенностям конструкции.</p>

<p>&nbsp;&nbsp; &nbsp;Напольные и настенные мусорные урны.<br />
&nbsp;&nbsp; &nbsp;Передвижные и стационарные конструкции.<br />
&nbsp;&nbsp; &nbsp;Решения с несколькими контейнерами для раздельного сбора мусора.<br />
&nbsp;&nbsp; &nbsp;Изделие также может быть оснащено пепельницей или иметь аккуратный навес.</p>

<p>В &laquo;Айрон Продакшн&raquo; вы можете заказать продукцию на базе стандартного проекта, где дизайн и функциональная составляющие уже спланированы заранее, или выбрать работу в рамках персонального подхода, когда мы создаем для вас партию эксклюзивных конструкций конкретно под ваши задачи. У вас имеются собственные эскизы? Приносите их нам. &nbsp;</p>

<p>Для изготовления урн для мусора может применяться зеркальная или матовая нержавеющая сталь, придающая изделиям элегантный внешний вид. Если вам необходимо наиболее крепкое и добротное решение для размещения на улице, мы изготовим для вас урну из прочного металла с защитной порошковой окраской.</p>

<p>Хотите проконсультироваться по поводу заказа урн?<br />
Готовы получить расчет стоимости вашего проекта? Остались вопросы, которые вас интересуют? Просто возьмите трубку и свяжитесь с нами.<br />
&nbsp;</p>

<p>&nbsp;</p>
', 'urnyi', 'a3b24aaa0938a58eb393e85fce6592fe', 'Металлические урны для мусора от производителя. Партии любого объема по специальным ценам. Индивидуальный подход. Добротное качество и эстетичность. Звоните!', '', '', '4', '["\\/files\\/service\\/44\\/ac674b8ddcf4535834352c50f185cad9.jpg","\\/files\\/service\\/44\\/b1b25fe45fbd29d5741cdb445ddbd23f.jpeg","\\/files\\/service\\/44\\/481bf8788661309ebc94dd1582e05925.jpg","\\/files\\/service\\/44\\/051bc0ee472c8f9083c87f712747e943.jpg","\\/files\\/service\\/44\\/fccdea16b1b632649e888a5b00b3cc3c.jpg"]', '/files/service/44/1016be761c293618a1c012a4cdc0ea06.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '45', 'Несерийные изделия и конструкции по индивидуальным проектам', '1', '10', '<p><img class="limg" src="http://ironprod.by/img/chertez1.jpg" style="height:190px; width:207px" /></p>

<p>Наша компания имеет колоссальный опыт работ по обработке металла и составления проектов на разработку металлоконструкций. Используемые нами технологии отвечают всем мировым стандартам, а техника проведения работ соответствует современным тенденциям металлообработки. Мастера нашей организации &ndash; опытные профессионалы способные решить любые задачи на самом высоком уровне и в максимально короткие сроки. Именно поэтому компанию &laquo;Айрон Продакшн&raquo; можно с уверенностью назвать одним из лидеров Беларуси по обработке металла, <a href="http://ironprod.by/" title="проектирование металлоконструкций">проектированию и изготовлению</a> металлоконструкций. Отличительной особенностью сотрудничества с нами является возможность заказать услуги у квалифицированных специалистов, высокое качество производимой продукции, сжатые сроки реализации проектов и доступные цены. Мы рады предложить вам следующие виды индивидуальных услуг:</p>

<h3>Нестандартные изделия и конструкции</h3>

<p>Наши мастера не работают по &laquo;шаблонам&raquo;, квалификация специалистов по обработке металла позволяет выполнять самые незаурядные задачи.</p>

<h3>Работа по чертежам заказчика. Резка в размер.</h3>

<p>Предлагаем проведение работ по эскизам и чертежам заказчика. Если вы уже решили, какое именно изделие или услуга вам необходима, вы можете предоставить ваши материалы специалистам &laquo;Айрон Продакшн&raquo;, на основании которых будут выполнены все необходимые работы в точном соответствии с поставленной задачей.</p>

<h3>Услуги по разработке и проектированию</h3>

<p>У вас есть интересная идея, но вы не знакомы с профессиональной разработкой чертежей и технического задания? Инженеры нашей компании разработают для вас индивидуальный проект отвечающий всем современным требованиям металлообработки, используя который вы сможете воплотить ваши идеи в жизнь.</p>

<h3>Изготовление металлоконструкций любой сложности</h3>

<p>Мы реализуем проекты самой высокой сложности, даже такие, от которых отказываются наши конкуренты в виду отсутствия необходимого оборудования или квалификации рабочего персонала. Мы выполняем проекты особой сложности качественно и в оговоренные сроки. Обратившись к нам, вам не надо будет переживать о результатах и сроках выполнения работ, мы гарантируем &ndash; проект будет отвечать всем вашим требованиям.</p>

<p><a href="http://ironprod.by/izgotovlenie-metallicheskih-zaborov" title="изготовление заборов из металла"><img alt="чертеж кованого забора" class="cimg" src="http://ironprod.by/img/chertez.jpg" style="height:353px; width:474px" title="кованый забор" /></a></p>
', 'neseriynyie-izdeliya-i-konstruktsii-po-individualnyim-proektam', '6c6f67a20eac749a36953141370c0c51', '', '', '', '5', '[]', '/files/service/45/56ed806b4a4b9d466e48e21170869e80.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '46', 'труба электросварная', '1', '8', '<p>Демократичные цены на электросварную трубу в Минске</p>

<p>Чтобы купить электросварную трубу по ценам первого поставщика, достаточно обратиться в ООО &laquo;Айрон Продакшн&raquo;. С нашего собственного склада в Минске вы можете приобрести любое количество продукции, необходимое вам. Иметь с нами дело одинаково удобно как крупным оптовым клиентам, так и тем, кто нужна мелкая партия трубопроката. Ко всему ассортименту электросварной трубы прилагаются необходимые документы о сертификации.</p>

<p>Технология производства электросварной трубы</p>

<p>В процессе производства электросварной трубы:</p>

<p>&nbsp;&nbsp; &nbsp;из листовой стали нарезаются заготовки,<br />
&nbsp;&nbsp; &nbsp;усилиями специального оборудования им придается требуемая форма,<br />
&nbsp;&nbsp; &nbsp;после, кромки продольно стыкуются и прочно свариваются промышленной электродуговой сваркой.</p>

<p>Такой подход обеспечивает безупречную надежность соединительного шва, а также усиливает устойчивость конструкции к агрессивным воздействиям. Чтобы свести к нулю риск повреждения от сырости и взаимодействия с агрессивной химией, шов также профилактически подвергается антикоррозийному воздействию.</p>

<p>На электросварной трубе может иметься один или сразу несколько швов, в зависимости от технологии изготовления. Разные типы металлических электросварных труб также обладают различными сечениями: это может быть квадрат, круг, овал или прямоугольник.</p>

<p>Сильные стороны электросварных труб</p>

<p>Такие изделия обладают многочисленными преимуществами, которые выделяют их среди прочего трубопроката. Что входит в этот список?</p>

<p>&nbsp;&nbsp; &nbsp;Увеличенный срок эксплуатации.<br />
&nbsp;&nbsp; &nbsp;Исключительная прочность, отличная устойчивость к механическим воздействиям и повышенным температурам.<br />
&nbsp;&nbsp; &nbsp;Способность к работе под колоссально высоким давлением (доходящим до 20 и более атмосфер). Как следствие, возможность использовать электросварные трубы при проведении теплотрасс и водопроводов.<br />
&nbsp;&nbsp; &nbsp;Хорошая свариваемость и жароупорность обеспечивают легкость ремонтных работ и возможность беспроблемной &laquo;доработки&raquo; изделий для создания других элементов.</p>

<p>Разумеется, итоговая стоимость каждой партии зависит от диаметра, используемой марки стали, а также толщины стенки. Тем не менее, каким бы ни был ваш заказ, вы можете рассчитывать на привлекательные условия. Если вы цените рациональный подход к ценообразованию и безупречное качество без посреднических надбавок &mdash; наш прайс на стальную электросварную трубу будет вам интересен. Звоните!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 'truba-elektrosvarnaya', 'e01614f6940e7b8f32909d96d271376f', 'Ищете возможность по лояльным ценам купить стальную электросварную трубу высокого уровня производства? Просто позвоните в ООО «Айрон Продакшн». Постоянное наличие.', '', '', '11', '["\\/files\\/service\\/46\\/f138a436da98b897e8a9b3b7a400def5.jpg","\\/files\\/service\\/46\\/9ce32e4bd2ce4dcb12982cc1f733479a.jpg"]', '/files/service/46/d8d087c30f73ed7db08ba5d21531c4c7.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '47', 'полоса металлическая', '1', '8', '<p>Качественная металлическая полоса по привлекательным ценам</p>

<p>Собираетесь купить металлическую полосу в Минске? Обратите внимание на предложение &laquo;Айрон Продакшн&raquo;: мы подготовили для вас максимально комфортные условия. Каждый заказчик &mdash; независимо от масштабов и регулярности заявок &mdash; вправе рассчитывать на получение износостойкой продукции с безукоризненными характеристиками, европейский сервис, своевременность отгрузок и лояльную ценовую политику.</p>

<p>Что представляет собой металлическая полоса?</p>

<p>Технология изготовления данной разновидности металлопроката заключается в горячей прокатке металла на прокатном станке, а также путем продольной резки готовых листов. Наибольшей популярностью пользуются изделия из легированной или углеродистой стали. Если вам необходима надежная стойкость к коррозии и максимальный срок эксплуатации, вам нужна оцинкованная или нержавеющая металлическая полоса.</p>

<p>Этот тип металлопроката широко используется в производстве строительных конструкций из металла, из него создаются гнутые профили, делаются разнообразные режущие инструменты.</p>

<p>Почему купить металлическую полосу в Минске имеет смысл именно у нас?</p>

<p>&nbsp;&nbsp; &nbsp;Во-первых, вас наверняка заинтересует наша цена на металлическую полосу. Мы имеем дело напрямую с комбинатами-изготовителями металлопроката и закупаем крупные партии, в том числе, и для собственного производства. Все это становится залогом минимальных наценок. &nbsp;</p>

<p>&nbsp;&nbsp; &nbsp;Во-вторых, наши клиенты ценят нас за оперативность поставок. Не имеет значения, как срочно вам необходимо получить заказ, а также, насколько велик объем партии. Свяжитесь с нами, и вы получите продукцию в срок. На складах &laquo;Айрон Продакшн&raquo; в Минске всегда в наличии имеется металлическая полоса 40х4 и прочих ходовых размеров. С нами, вам не грозят простои в производстве.</p>

<p>&nbsp;&nbsp; &nbsp;Наконец, сотрудничая с нами, вы получаете продукцию, в качестве которой можете быть уверены. Мы работаем исключительно с авторитетными заводами и поставляем вам тот же металл, что и тщательно отбираем для себя. А это означает &mdash; обязательное наличие всех необходимых сертификатов, высокосортное исходное сырье, многоступенчатый надзор за процессом производства и безупречную деловую репутацию каждого нашего партнера.</p>

<p>Необходимы подробности? Требуется консультация от компетентных специалистов? Наши сотрудники великолепно разбираются во всех тонкостях области металлопроката и дадут толковые советы по любому вопросу.</p>

<p>&nbsp;</p>
', 'polosa-metallicheskaya', '733c82adc16a63d4075ff004af5335d4', 'ООО «Айрон Продакшн» приглашаем купить металлическую полосу 40х4 и пр. по специальным оптовым ценам. Серьезный ассортимент всегда в наличии на собственном складе в Минске.', '', '', '12', '["\\/files\\/service\\/47\\/8b3963b6eb1b2f67c5e11de29be77a89.jpg"]', '/files/service/47/95de78fba49bb3864be444efb12fb362.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '48', 'лист оцинкованный', '1', '8', '<p>Продажа оцинкованного листа от производителя: качественный прокат &laquo;из первых рук&raquo;</p>

<p>В компании &laquo;Айрон Продакшн&raquo; можно по низким ценам купить оцинкованный лист в Минске: в розницу и оптом. Почему с нами выгодно?</p>

<p>&nbsp;&nbsp; &nbsp;Прямые поставки непосредственно с металлургических комбинатов.<br />
&nbsp;&nbsp; &nbsp;Все наши партнеры многократно доказали качество своей продукции в деле: мы выбираем для себя и для вас только лучшее на всем современном рынке.<br />
&nbsp;&nbsp; &nbsp;Демократичность цен ввиду отсутствия посреднических надбавок.<br />
&nbsp;&nbsp; &nbsp;Быстрая отгрузка заказа, независимо от объема.<br />
&nbsp;&nbsp; &nbsp;Услуги по резке и перемотке рулонов на нашем собственном оборудовании.</p>

<p>Мы ценим свою репутацию стабильного и ответственного поставщика оцинкованного листа, заслуженную на столичном рынке, и делаем все возможное, чтобы и давним, и новым клиентам было удобно работать с нами.</p>

<p>Оцинкованный лист &mdash; король металлопрокатной индустрии</p>

<p>Такой шутливое прозвище материал получил вполне заслуженно &mdash; за невероятную &laquo;глобальность&raquo; своего использования. Прежде, чем получить право называть оцинкованным, лист металла подвергается особой обработке, обеспечивающей его антикоррозийные свойства. Материал приобретает способность успешно сопротивляться агрессивному воздействию внешней среды и сохраняет её в течение неограниченного периода времени.</p>

<p>В результате, получается универсальный лист со свойствами нержавеющей стали, при этом, стоимость оцинкованного листа ощутимо меньше. Не приходится удивляться, что такой практичный материал применяется повсеместно: практически во всех видах промышленности, для проведения строительных работ, в машиностроительных сферах, при возведении и оформлении частных домовладений. Оцинкованный лист становится находкой везде, где необходимо сочетание доступной цены и отличного запаса прочности, легкости и удобства при монтаже.</p>

<p>Продажа оцинкованного листа на удобных вам условиях</p>

<p>&nbsp;&nbsp; &nbsp;Нашим заказчикам не приходится ждать. Когда бы ни набрали наш номер, можете рассчитывать, что оцинкованный лист типовых размеров в нужных вам количествах присутствует на нашем складе к Минске.</p>

<p>&nbsp;&nbsp; &nbsp;Продажа оцинкованного листа от производителей является залогом привлекательной ценовой политики, выгодной для каждого клиента.</p>

<p>Не хотите платить за оцинкованный лист лишнее? Желаете обойти стандартную череду промежуточных посредников? Решение весьма разумное &mdash; и мы полностью с ним согласны. Звоните!<br />
&nbsp;</p>

<p>&nbsp;</p>
', 'list-otsinkovannyiy', '181ddd12ae228ede23dcd982040d1578', 'Возникла необходимость купить оцинкованный лист в Минске? Вас интересует опт или розница? Ищете выгодные цены? «Айрон Продакшн» — это прямые продажи от производителей.', '', '', '13', '["\\/files\\/service\\/48\\/573bcf12cba871d42df430e6c53384f7.jpg"]', '/files/service/48/b6f410a1b2fd307d1c2936e22a2157ad.jpeg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '49', 'Изготовление трибун из металла', '1', '6', '<p>Изготовление трибун из металла: качественно и без запредельных вложений</p>

<p>Если вы ищете, где заказать изготовление трибун, обращайтесь в компанию &laquo;Айрон Продакшн&raquo; &mdash; непосредственному производителю конструкций из металла. Сотрудничество с нами позволяет решить несколько важных задач одновременно.</p>

<p>&nbsp;&nbsp; &nbsp;Отпадает необходимость переплачивать: вы автоматически избавляетесь от раздутых посреднических наценок и вкладываете свои средства только в качество.<br />
&nbsp;&nbsp; &nbsp;Вы получаете металлические трибуны любой конфигурации, в том числе, можете заказать создание нестандартного изделия по вашим или нашим чертежам.<br />
&nbsp;&nbsp; &nbsp;Прямая работа с производителем сводит сроки изготовления трибун из металла к минимуму: исключается долгая цепочка перепродаж. Кроме того, мы постоянно наращиваем свои производственные мощности, что позволяет нам уверенно справляться с самыми объемными заказами даже в пик сезона.</p>

<p>Стационарные или мобильные металлические трибуны из металла от &laquo;Айрон Продакшн&raquo; зарекомендовали себя как максимально удобные и стойкие к износу конструкции. Будь то необходимость с комфортом разместить зрителей на спортивном стадионе, создать условия для просмотра соревнований в помещении бассейна или организовать продуманные зрительские места для концертных мероприятий &mdash; мы решим вашу задачу с максимальной тщательностью.</p>

<p>Изготовление трибун: какие виды изделий можно заказать у нас?</p>

<p>Ограничений практически не существует. Мы строим однорядные трибуны и изделия в несколько рядов, стационарные и мобильные конструкции с возможностью быстрого демонтажа, любой формы, размера и конфигурации. Продукция может быть оснащена безопасными перилами и даже практичным навесом.</p>

<p>&nbsp;&nbsp; &nbsp;Места для зрителей исполняются как в виде отдельных сидений, так и многоместных лавок. Все, что вам нужно сделать &mdash; это указать нужное число посадочных мест и общие размеры изделия.<br />
&nbsp;&nbsp; &nbsp;Трибуна может иметь ступенчатую форму или быть сделанной в виде классической горизонтальной конструкции. Зрительские сидения располагаются таким образом, как решите вы: полукругом, по прямой линии, под любым углом.<br />
&nbsp;&nbsp; &nbsp;Вам необходима трибуна, которую можно перевозить с места на место без лишних хлопот? Мы создадим для вас надежную сборно-разборную конструкцию, которая без труда разбирается для транспортировки, после чего быстро монтируется на новом месте. Для установки в постоянных местах у нас заказывают стационарные трибуны. Благодаря антикоррозийному покрытию, наши изделия с легкостью выдерживают длительное размещение под открытым небом.</p>

<p>Звоните!<br />
&nbsp;</p>

<p>&nbsp;</p>
', 'izgotovlenie-tribun-iz-metalla', 'a6c7d070636adc61b3aecece1ab34539', 'Изготовление трибун из металла — это задача, которую можно смело доверять «Айрон Продакшн». Сотни успешно завершенных проектов, минимальные цены, собственные производственные цеха.', '', '', '17', '["\\/files\\/service\\/49\\/245b1c5c9423affc7ccf01bd750b5174.jpg","\\/files\\/service\\/49\\/57270d338b7afce59b5e7eecce08a63f.jpg","\\/files\\/service\\/49\\/229a37b7e90c9fd9d3db701a6baeff66.png","\\/files\\/service\\/49\\/7d2da024e758f292a8a11c59009c6e81.jpg","\\/files\\/service\\/49\\/f33f53461f234b77ddb65b872e8571f4.jpg"]', '/files/service/49/5fe1dd5d6c58b8ac0371a5c75e775027.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '50', 'балка', '1', '8', '<p>Металлическая балка в Минске &mdash; максимальная выгода при разумных вложениях</p>

<p>Сотрудничество с &laquo;Айрон Продакшн&raquo; &mdash; это возможность купить балки в Минске с минимальными затратами, но при этом быть уверенными в достойном качестве продукции. Долгосрочные и отлаженные отношения с заводами-изготовителями становятся гарантией двух преимуществ одновременно.</p>

<p>&nbsp;&nbsp; &nbsp;Вы получаете только проверенную продукцию первоклассного уровня после двойного контроля качества.<br />
&nbsp;&nbsp; &nbsp;Вы приобретаете металлическую балку по ценам специального дилера, избавляя себя от ненужных переплат.</p>

<p>Конструктивные особенности металлических балок</p>

<p>Металлическую балку легко узнать по особому профилю, похожему на букву &laquo;H&raquo;. Конструктивно, это изделие выполняется в виде трехлистной конструкции: к вертикальному листу, называемому стенкой, надежно присоединяются две горизонтальные полки.</p>

<p>За счет того, что общая нагрузка симметрично рассредоточивается по всему профилю, металлическая балка без проблем выдерживает внушительные нагрузки. Жесткость балки в разы выше, чем у квадрата или уголка, поэтому конструкции с применением балок получаются максимально прочными и устойчивыми.</p>

<p>Благодаря таким свойствам, балка нашла активное применение в сооружении промышленных и жилых зданий, при создании надежных опор, мостов, перекрытий, подвесных путей, при армировании шахт.</p>

<p>У нас в продаже вы найдете разнообразные виды балок, которые различаются по толщине и размеру (узкополочные, среднеполочные, широкополочные), по способу расположения полочных граней (параллельные или с уклоном), по иным техническим свойствам. Если вам необходима консультация, опытные сотрудники &laquo;Айрон Продакшн&raquo; придут на помощь и дадут дельный совет по выбору.</p>

<p>Экономьте средства и время, покупая балку в &laquo;Айрон Продакшн&raquo;</p>

<p>За длительные годы на рынке Беларуси, компания &laquo;Айрон Продакшн&raquo; приобрела репутацию добросовестного партнера по реализации металлопроката. К поставкам металлической балки в Минске, как и к другим задачам, мы подходим со всей серьезностью.</p>

<p>Каждый клиент &mdash; независимо от нужного размера партии &mdash; найдет у нас надежное качество и честные расценки без завышенных цифр. Двери наших складов открыты для вас ежедневно, мы готовы отгрузить любое количество изделий в кратчайшие сроки после получения вашей заявки. Все типы балок строго соответствуют государственным стандартам и имеют сертификаты соответствия.</p>

<p>Свяжитесь с нами и испытайте на собственном опыте, насколько комфортным становится приобретение металлической балки в &laquo;Айрон Продакш&raquo;.<br />
&nbsp;</p>

<p>&nbsp;</p>
', 'balka', '05fda92721840be1036c5cca7f2aa625', 'Где купить металлическую балку в Минске по ценам первого поставщика? Обращайтесь в «Айрон Продакшн». Полный ассортимент на нашем складе, готовность к быстрой отгрузке.', '', '', '14', '["\\/files\\/service\\/50\\/33b742f27ec2d081f3bad49559fc8f0f.jpg"]', '/files/service/50/a7fea99b6d74c984824e192b5b45da45.jpg' );
INSERT INTO `services`(`id`,`name`,`active`,`category_id`,`content`,`url`,`md5_url`,`s_description`,`s_keywords`,`s_title`,`position`,`images`,`main_image`) VALUES ( '51', 'Сварочные работы', '1', '9', '<p>Сварочные работы &ndash; выполняемый специалистами технический процесс, при котором различные металлические элементы и <a href="" title="изготовление надежных металлоконструкций в Минске">конструкции</a> соединяются в единое целое под действием температуры, химической обработки и, в некоторых случаях, даже с использованием ультразвука. Наша компания предлагает максимально широкий спектр услуг по сварке металла, а именно:</p>

<ul>
	<li>аргоновая сварка по чертежам заказчика</li>
	<li>разработка проекта для выполнения сложных сварочных работ</li>
	<li>выезд специалиста для составления проекта и расчета стоимости</li>
	<li>выезд мастера к заказчику для выполнения работ</li>
	<li>гарантийное обслуживание объекта</li>
</ul>

<p>Наши мастера имеют многолетний опыт работы в сфере обработки и сварки металла и выполняют поставленные задачи на самом высоком уровне профессионализма, а современное оборудование, используемое нашей компанией, позволяет значительно сократить сроки реализации поставленных заказчиком задач. Вы можете заказать качественные сварочные работы в Минске по телефонам указанным в разделе Контакты на нашем сайте.</p>

<h3>Что такое сварка аргоном? Аргоновая сварка в Минске.</h3>

<p><img alt="сварочные работы" class="limg" src="http://ironprod.by/img/svarka.jpg" style="height:339px; width:300px" /></p><p>Аргон &ndash; это инертный газ, который вместе с электричеством подводиться через шланги к электроду, изготовленному из вольфрама. Электрод закреплен в горелке, из сопла которой подается струя аргона - процесс называется сварка аргоном, а такой вид сварки называется аргонно-дуговой или&nbsp; и защищает электрод и дугу от окисления путем оттеснения воздуха струей инертного газа (аргона). Простыми словами, используя такой метод как аргоновая сварка ни инструмент, ни обрабатываемый металл не вступает в контакт с кислородом, что позволяет защитить металл от &nbsp;окисления. При <a href="" title="изготовление металлических лестниц">изготовлении лестниц</a> и других конструкций, на которые будет большая нагрузка, для усиления шва, сварщики подают в дугу присадку, идентичную или близкую по составу с обрабатываемым металлом. Наша компания имеет в своем арсенале самое современное оборудование, технологии, материалы, а наши сварщики &ndash; опытные профессионалы, выполняющие аргоновую сварку в Минске на профессиональном уровне уже много лет.</p>
', 'svarochnyie-rabotyi', '973b0a6d326f723b3693d0184a8fc5d4', '', '', '', '5', '["\\/files\\/service\\/51\\/57f7903dee5e76ca2f63071dba609ace.jpg","\\/files\\/service\\/51\\/e04a7a744400c1f06ddbde4e23ef45c1.jpg","\\/files\\/service\\/51\\/113c1ec1a81865be055163e0de986bbf.jpg","\\/files\\/service\\/51\\/1e9968079eb7900e5c283fe7358a4308.jpg","\\/files\\/service\\/51\\/e0f6d2f55cf2f83b619ee2abfb3d11f9.jpg"]', '/files/service/51/0bb8831f90531c78db569ea7472681cb.jpg' );
-- ---------------------------------------------------------


-- Dump data of "services_categories" ----------------------
INSERT INTO `services_categories`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`active`,`s_description`,`s_keywords`,`s_title`,`images`) VALUES ( '6', 'Технологические металлоконструкции', 'tehnologicheskie-metallokonstruktsii', 'bb504373817e71f6110ee7c74e69fa66', '1', '', '1', '', '', '', '[]' );
INSERT INTO `services_categories`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`active`,`s_description`,`s_keywords`,`s_title`,`images`) VALUES ( '7', 'Металлическая мебель', 'metallicheskaya-mebel', 'da7d2af2475ecee67617c82460249802', '2', '<p>Стильная и прочная металлическая мебель без переплат</p>

<p>Хотите купить металлическую мебель в Минске по привлекательным ценам от прямого производителя? ООО &laquo;Айрон Продакшн&raquo; с удовольствием станет вашим надежным поставщиком.</p>

<p>&nbsp;&nbsp; &nbsp;Вы желаете получить одно из универсальных, проверенных годами решений, идеально подходящих для любой обстановки? Возможно, изготовление металлической мебели по типовым эскизам из нашей базы &mdash; это именно то, что вам нужно.</p>

<p>&nbsp;&nbsp; &nbsp;Требуется индивидуальный проект или у вас имеются собственные чертежи? Обращайтесь, и мы создадим уникальные конструкции персонально под ваши требования.</p>

<p>Почему производство металлической мебели можно доверять &laquo;Айрон Продакшн&raquo;?</p>

<p>За годы успешной работы на белорусском рынке наше предприятие заслужило авторитет серьезного и надежного производителя металлической мебели. Наше имя превратилось в своеобразный синоним качества, стабильности и взаимовыгодного партнерства. Мы делаем все, чтобы поддерживать заработанную репутацию на высоком уровне, каждый день оттачивая наши технологии, наращивая объемы производства и совершенствуя техническую базу.</p>

<p>Именно поэтому любой партнер ООО &laquo;Айрон Продакшн&raquo; в Минске или регионах может не сомневаться: все обязательства, которые мы берем на себя, будут досконально исполнены. Ваша партия металлической мебели будет готова точно в срок и соответствовать каждому пункту договора. Не имеет значения, идет ли речь о небольших объемах или крупных оптовых заказах &mdash; мы подходим к каждому проекту с особой ответственностью.</p>

<p>Изготовление металлической мебели &mdash; скрупулезный контроль качества</p>

<p>Гарантии качества от &laquo;Айрон Продакшн&raquo; &mdash; это не только высокотехнологичные цеха и последние технологии металлообработки. Грамотно работать на сложном оборудовании могут лишь опытные и компетентные мастера &mdash; именно из таких специалистов мы тщательно формируем свою команду.</p>

<p>Производство металлической мебели из высокопрочных материалов и применение надежных комплектующих дарят нашим изделиям колоссальную стойкость к износу. Даже спустя годы, даже при ежедневном использовании в условиях усиленных нагрузок, мебель из металла от &laquo;Айрон Продакш&raquo; сохраняет свою эстетичность и функциональность.</p>

<p>Платите меньше и получайте качественную металлическую мебель, обращаясь напрямую к производителю. Звоните &mdash; мы ждем ваших вопросов и заявок.</p>

<p>&nbsp;</p>
', '1', 'Причины купить металлическую мебель в Минске в компании «Айрон Продакш»? Сколько угодно. Продуманный функционал, высокопрочные материалы. Собственное производство, колоссальный опыт работы с металлом, репутация надежного партнера. Готовы убедиться? Звонит', '', '', '[]' );
INSERT INTO `services_categories`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`active`,`s_description`,`s_keywords`,`s_title`,`images`) VALUES ( '8', 'Металлопрокат', 'metalloprokat', 'd6709d08d0c94a94f9a2c5612f2ac6f8', '3', '', '1', '', '', '', '[]' );
INSERT INTO `services_categories`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`active`,`s_description`,`s_keywords`,`s_title`,`images`) VALUES ( '9', 'Металлообработка', 'metalloobrabotka', '1ed04e4ef20f3f70ad96137c53c3d295', '4', '', '1', '', '', '', '[]' );
INSERT INTO `services_categories`(`id`,`name`,`url`,`md5_url`,`position`,`content`,`active`,`s_description`,`s_keywords`,`s_title`,`images`) VALUES ( '10', 'Изделия из металла', 'izdeliya-iz-metalla', 'c343a4e23cc5a76af155457c83310f86', '5', '', '1', '', '', '', '[]' );
-- ---------------------------------------------------------


-- Dump data of "slides" -----------------------------------
INSERT INTO `slides`(`id`,`name`,`content`,`image`,`position`,`active`,`link`) VALUES ( '1', 'Адаптивный дизайн', '<p>Мы создаем эффективные веб-решения. Для создания актуальных сайтов, мы анализируем лучшие проекты интернета. И всегда добавляем новые, уникальные особенности.</p>
', '/files/slide/1/abd89e74315d88e7cfa28f5338fa594c.jpg', '1', '1', '' );
INSERT INTO `slides`(`id`,`name`,`content`,`image`,`position`,`active`,`link`) VALUES ( '2', 'слайд 2', '<p>контент</p>
', '/files/slide/2/478eacd3ba909834d296395847c714ea.jpg', '2', '1', '' );
INSERT INTO `slides`(`id`,`name`,`content`,`image`,`position`,`active`,`link`) VALUES ( '3', 'Слайд 3', '<p>контент</p>
', '/files/slide/3/29adbbd75c96ff6b0b06a921453cba3f.jpg', '3', '1', '' );
-- ---------------------------------------------------------


-- Dump data of "user_tokens" ------------------------------
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '26', '13', 'd4f09ab969f7263dd752040a91e66f34043b6e53', 'e70ea0b0af9eecb3e15801079a43830d89c125a4', '1401548182', '1402757782' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '27', '13', 'd4f09ab969f7263dd752040a91e66f34043b6e53', '483074d074f8c116ae983041e900dfdf451d63fc', '1401549391', '1402758991' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '28', '13', 'd4f09ab969f7263dd752040a91e66f34043b6e53', 'ca8387286d67292cc9e597d677ed3da329031b6f', '1401971389', '1403180989' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '29', '13', 'de7686fe24df90b4473c3a28c6ec7724defcb4c4', '59c267ff8dad4a8ef2f98ccebc9e16b5c9964b37', '1402405941', '1403615541' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '30', '13', 'db3782434708aa0c75d65ff9ec2c35f748542795', '7e898c3fc26cadd04590a30cd3eb63a77daee035', '1402576759', '1403786359' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '31', '13', 'db3782434708aa0c75d65ff9ec2c35f748542795', 'ba0027c1a3469be9738bee2054b3573ae46f1b68', '1402583879', '1403793479' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '32', '13', '894af19d7638770229799ae0b5cb49e0cc462309', '261da7105e527d386c968c4e161e6e225d73af44', '1402604335', '1403813935' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '33', '13', '894af19d7638770229799ae0b5cb49e0cc462309', 'a761e28ad1bb6ba4d1bb1229a875d453ebe76de0', '1402829485', '1404039085' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '34', '12', '9b4510ded13c04094d3576666ccd0c8f1d173d54', '0bc12d9f2d1773c1615824d5ec2cb9f4ad7190a1', '1402832325', '1404041925' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '35', '13', 'dc6e2b18161cf733765796d209cd71f12b1dd270', 'b55186b6bf44f2c340e6a0bea01b2e11c41ae906', '1402842931', '1404052531' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '36', '13', 'db3782434708aa0c75d65ff9ec2c35f748542795', '04268430ea4970230fe375606ff69f6fa039f4df', '1403796062', '1405005662' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '37', '13', '894af19d7638770229799ae0b5cb49e0cc462309', '35ce81fe53dc52836f37f5a9063f76189901a655', '1404048766', '1405258366' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '38', '13', 'dc6e2b18161cf733765796d209cd71f12b1dd270', 'ad72a8b7643fca2dda786570ceef56a6710431f7', '1404067091', '1405276691' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '39', '13', 'db3782434708aa0c75d65ff9ec2c35f748542795', '457744ce72738e607ba22134dcd2524654defe83', '1405169762', '1406379362' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '40', '13', 'dc6e2b18161cf733765796d209cd71f12b1dd270', 'baa45645506d8d1bf07e7c3930c91115b6af5277', '1405512713', '1406722313' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '41', '13', 'd8ad7bc732d3bb3bd8ae26cce2e1abfee961699f', '5d5371f105225879f885bb23506f5ae342ed642a', '1405585122', '1406794722' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '42', '13', '348b88762d2da8ea16c35cd7bb847231fd5b5057', '37ffa06b521982c7e6b8e9f92bac7bbd95fb941b', '1406633101', '1407842701' );
INSERT INTO `user_tokens`(`id`,`user_id`,`user_agent`,`token`,`created`,`expires`) VALUES ( '43', '13', 'd8ad7bc732d3bb3bd8ae26cce2e1abfee961699f', '47ab6b75d1380644c362e2889bea1b11758bb114', '1407278476', '1408488076' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`email`,`password`,`roles`,`name`,`logins`,`last_login`,`login_attempts`,`banned_to`,`ban_time`,`reset_password_code`,`created_at`,`updated_at`,`register_token`,`active`,`username`) VALUES ( '1', 'admin@ariol.by', '32c473f545fbbafd2c275b6ef518f2cccf14059b5ca6e1f00c2a7748528398b9', '1', 'zgolich', '148', '1425039328', '0', NULL, NULL, NULL, '1392567501', '1425039328', NULL, '1', 'd55b50f8ebd78188a0effa94ef101edb' );
-- ---------------------------------------------------------


-- CREATE INDEX "active" -----------------------------------
CREATE INDEX `active` USING BTREE ON `menu`( `active` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_parent_menu" ---------------------------
CREATE INDEX `fk_parent_menu` USING BTREE ON `menu`( `parent_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "parent_id" --------------------------------
CREATE INDEX `parent_id` USING BTREE ON `menu`( `parent_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "active" -----------------------------------
CREATE INDEX `active` USING BTREE ON `news`( `active` );
-- ---------------------------------------------------------


-- CREATE INDEX "category_id" ------------------------------
CREATE INDEX `category_id` USING BTREE ON `news`( `category_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "url" --------------------------------------
CREATE INDEX `url` USING BTREE ON `news`( `md5_url` );
-- ---------------------------------------------------------


-- CREATE INDEX "active" -----------------------------------
CREATE INDEX `active` USING BTREE ON `pages`( `active` );
-- ---------------------------------------------------------


-- CREATE INDEX "static" -----------------------------------
CREATE INDEX `static` USING BTREE ON `pages`( `static` );
-- ---------------------------------------------------------


-- CREATE INDEX "url" --------------------------------------
CREATE INDEX `url` USING BTREE ON `pages`( `url` );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_user_tokens_user" ----------------------
CREATE INDEX `FK_user_tokens_user` USING BTREE ON `user_tokens`( `user_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "register_token" ---------------------------
CREATE INDEX `register_token` USING BTREE ON `users`( `email`, `register_token` );
-- ---------------------------------------------------------


-- CREATE INDEX "username" ---------------------------------
CREATE INDEX `username` USING BTREE ON `users`( `username` );
-- ---------------------------------------------------------


-- CREATE LINK "menu_ibfk_1" -------------------------------
ALTER TABLE `menu` ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY ( `parent_id` ) REFERENCES `menu`( `id` ) ON DELETE Cascade ON UPDATE Cascade;
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


