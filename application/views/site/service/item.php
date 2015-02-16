<div class="clear"></div>
<div class="content">
    <div class="container_16">

        <div class="grid_16">
            <div class="teni"></div>
            <div class="you_here">
                <span class="orange_">Вы здесь:</span>
                <span><a href="/">Главная</a> > <a href="/service/<?php echo $category->url ?>"><?php echo $category->name ?></a>  ></span>
                <span class="orange_"><?php echo $name ?></span>
            </div>
        </div>
        <div class="grid_3">
            <div class="left_menu">
                <ul>
                    <?php foreach ($services as $item) { ?>
                        <li><a href="/service/<?php echo $category->url ?>/<?php echo $item->url ?>"><?php echo $item->name ?></a></li>
                    <?php } ?>
                </ul>
            </div>
        </div>
        <div class="grid_13">
            <article>
                <div class="top_p">
                    <h1><?php echo $name ?></h1>
                    <?php echo $content ?>
                    <div class="social social-likes">
                        <div class="facebook" title="Поделиться ссылкой на Фейсбуке">Facebook</div>
                        <div class="twitter" title="Поделиться ссылкой в Твиттере">Twitter</div>
                        <div class="vkontakte" title="Поделиться ссылкой во Вконтакте">Вконтакте</div>
                        <div class="plusone" title="Поделиться ссылкой в Гугл-плюсе">Google+</div>
                    </div>
                </div>
                <div class="separator_"></div>

                <div><a class="fancybox fancybox.ajax order" href="/brief_item">Заказать</a></div>

                <div class="separator_"></div>
                <div class="korzinu">
                    <?php if ($images) {?>
                        <?php foreach ($images as $item) { ?>
                            <div class="grid_4"><a class="fancybox" rel="group-1" href="<?php echo $item ?>"><img src="<?php echo Lib_Image::resize_bg($item, 'service',$id, 163, 163); ?>" alt="img1" class="telega img1_"></a></div>
                        <?php } ?>
                    <?php } ?>
                </div>
                <?php if ($images) {?>
                    <div class="separator_"></div>
                <?php } ?>
                <div class="other_work">
                    <?php foreach ($pre_service as $item) { ?>
                        <div class="column">
                            <span class="column_img"><a href="/service/<?php echo $url ?>/<?php echo $item->url ?>"><img src="<?php echo Lib_Image::resize_bg($item->main_image, 'service',$item->id, 318, 212); ?>" alt="<?php echo $item->name ?>" class="works_img"></a></span>
                            <span class="column_name"><a href="/service/<?php echo $url ?>/<?php echo $item->url ?>"><?php echo $item->name ?></a></span>
                        </div>
                    <?php } ?>
                    <?php foreach ($post_service as $item) { ?>
                        <div class="column">
                            <span class="column_img"><a href="/service/<?php echo $url ?>/<?php echo $item->url ?>"><img src="<?php echo Lib_Image::resize_bg($item->main_image, 'service',$item->id, 318, 212); ?>" alt="<?php echo $item->name ?>" class="works_img"></a></span>
                            <span class="column_name"><a href="/service/<?php echo $url ?>/<?php echo $item->url ?>"><?php echo $item->name ?></a></span>
                        </div>
                    <?php } ?>
                </div>
                <div class="separator_"></div>
                <br>
            </article>
        </div>
    </div>
</div>