<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta id="viewport" name="viewport" content="width=device-width">
    <title><?php echo $s_title;?></title>
    <meta name="description" content="<?php echo $s_description;?>">
    <meta name="keywords" content="<?php echo $s_keywords;?>">
    <link rel="stylesheet" type="text/css" href="/ironprod/css/style.css?1" />
    <link rel="stylesheet" type="text/css" href="/ironprod/css/fluid_1280.css" />

<!-- Иконки соц.сетей -->
    <link href="/ironprod/css/social-likes_flat.css" rel="stylesheet">
<!---->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="/ironprod/js/social-likes.min.js"></script>
<!--    <link href="/ironprod/sapegin/social-likes_flat.css" rel="stylesheet">-->
<!--    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>-->
<!--    <script src="/ironprod/sapegin/social-likes.min.js"></script>-->
<!---->

    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>

    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="/ironprod/js/fancybox/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
    <script type="text/javascript" src="/ironprod/js/fancybox/jquery.fancybox.pack.js?v=2.1.5"></script>
    <script src="/ironprod/js/script.js"></script>
    <style type="text/css">
        .clear {
            zoom: 1;
            display: block;
        }
        .clearfix {
            zoom: 1;
            display: block;
        }
    </style>

</head>
<body class="index">
    <header class="top_header">
        <div class="container_16">
            <div class="grid_16">
                <a class="logo" href="/"></a>
                <div class="phones">
                    <nav class="top">
                        <ul>
                            <li><a href="/">Главная</a>&nbsp;|&nbsp;</li>
                            <li><a href="/o-kompanii">О компании</a>&nbsp;|&nbsp;</li>
                            <li><a href="/vakansii">Вакансии</a>&nbsp;|&nbsp;</li>
                            <li><a href="/ourproduct">Наши работы</a>&nbsp;|&nbsp;</li>
                            <li><a href="/articles">Статьи</a>&nbsp;|&nbsp;</li>
                            <li><a href="/comment">Отзывы</a>&nbsp;|&nbsp;</li>
                            <li><a href="/kontaktyi">Контакты</a></li>
                        </ul>
                    </nav>
                    <div class="mainphone">
                        +375&nbsp;&nbsp;(17)&nbsp;&nbsp;<span>226-28-56</span>
                    </div>
                    <div class="mainphone">
                        +375&nbsp;&nbsp;(17)&nbsp;&nbsp;<span>226-24-61</span>
                    </div>
                </div>
                <nav class="main">
                    <ul>
                        <?php foreach ($service_category as $item) { ?>
                            <li class="parent item1"><a href="/service/<?php echo $item->url ?>"><?php echo $item->name ?></a>
                                <ul>
                                    <?php foreach ($item->services->find_all() as $serv) { ?>
                                        <li><a href="/service/<?php echo $item->url ?>/<?php echo $serv->url ?>"><?php echo $serv->name ?></a></li>
                                    <?php } ?>
                                </ul>
                            </li>
                        <?php } ?>
                    </ul>
                </nav>


            </div>
        </div>

    </header>

    <?php echo $content ?>

    <div class="bg100proc_2">
        <footer>
        <div class="container_16">
            <div class="grid_6">
                <?php foreach ($service_category as $item) { ?>
                    <div class="h3"><a class="fome" href="/service/<?php echo $item->url ?>"><?php echo $item->name ?></a></div>
                <?php } ?>
            </div>
            <div class="grid_6">
                <h3></h3>
                <ul>
                    <li><a href="#"></a></li>

                </ul>
            </div>
            <div class="grid_4">
                <div class="promocontacts">
                    <div>
                        <div class="phone fst">
                            +375&nbsp;&nbsp;(17)&nbsp;&nbsp;<span>226-28-56</span>
                        </div>
                        <div class="phone snd">
                            +375&nbsp;&nbsp;(17)&nbsp;&nbsp;<span>226-24-61</span>
                        </div>
                        <a class="twitter" href="#twitter"><i></i>Наш блог в Twitter</a>
                        <p>220036, Республика Беларусь,<br>
                            г. Минск, ул. Грушевская, 11а<br>
                            Офисное помещение, 3</p>
                    </div>
                </div>
            </div>
            <div class="grid_16">
                <div class="copy_and_bottom">
                <span class="copy">&copy; 2012 ironprod.by</span>
                <nav class="bottom">
                    <ul>
                        <li><a href="/">Главная</a>&nbsp;|&nbsp;</li>
                        <li><a href="/o-kompanii">О компании</a>&nbsp;|&nbsp;</li>
                        <li><a href="/vakansii">Вакансии</a>&nbsp;|&nbsp;</li>
                        <li><a href="/ourproduct">Наши работы</a>&nbsp;|&nbsp;</li>
                        <li><a href="/articles">Статьи</a>&nbsp;|&nbsp;</li>
                        <li><a href="/comment">Отзывы</a>&nbsp;|&nbsp;</li>
                        <li><a href="/kontaktyi">Контакты</a></li>
                    </ul>
                </nav>
                </div>
            </div>
        </div>
    </footer>
    </div>


</body>
</html>