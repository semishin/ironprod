<div class="block_w no_bord no_p_b">

    <div class="block">

        <div class="brcs">
            <b>Вы здесь:</b>
            <a href="/">Главная</a>
            <i>&bull;</i>
            <span>Поиск - «<?php echo Arr::get($_GET, 'q'); ?>»</span>
        </div>
    </div>

</div>

<div class="block_w no_bord zi_9">

    <div class="block">

        <div class="left_block">
            <div class="call_w">
                <strong>Ваш консультант</strong>
                <div class="cons_name">
                    <div class="img_wrap">
                        <img src="/lumena/i/consultant_avatar.jpg" alt="Карина Михайлова"/>
                    </div>
                    <span>Карина<br/>Михайлова</span>
                </div>
                <span class="cons_cont"><b>Тел.:</b>+ 375 (17) 292 34 11</span>
                <span class="cons_cont"><b>E-mail:</b><a href="mailto:lumena.ad@gmail.com"><span>lumena.ad@gmail.com</span></a></span>
                <a class="skype_call" href="#"><i><!--skype_ico--></i><span>Начать разговор<b></b></span></a>
            </div>
        </div>

        <div class="right_block">

            <div class="block_content">
                <?php if(!$items) { ?>
                    <div class="alert alert-danger search">По вашему запросу ничего не найдено</div>
                <?php } ?>
                <?php foreach ($items as $index => $service) { ?>
                    <div class="prod col-xs-4">
                        <?php if ($service->main_image) { ?>
                            <div class="prod-img">
                                <a href="<?php echo $service->getSiteUrl(); ?>"><img src="<?php echo Lib_Image::resize_width($service->main_image, 'service', $service->id, null, 150); ?>" alt="<?=$service->name?>" /></a>
                            </div>
                        <?php } ?>
                        <div class="prod-name"><a href="<?php echo $service->getSiteUrl(); ?>"><?=$service->name?></a></div>
                    </div>
                <?php } ?>
                <div class="clear"></div>
            </div>
            <div class="col-xs-12">
                <?php echo $pagination; ?>
            </div>

        </div>
    </div>
</div>