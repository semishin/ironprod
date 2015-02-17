<!--<div class="clear"></div>-->
<!---->
<!--<section>-->
<!--    <div class="grid_16 margin_minus20bot" style="z-index:0;margin-top: 0px;">-->
<!--        <img src="/ironprod/img/shadow_top.jpg" width="100%">-->
<!--    </div>-->
<!--</section>-->

<div class="clear"></div>
<div class="content">
    <div class="container_16">
        <div class="grid_16">
            <div class="teni"></div>
            <div class="you_here">
<!--                <span class="orange_">Вы здесь:</span>-->
<!--                <span><a href="/">Главная</a> ></span>-->
<!--                <span class="orange_">--><?php //echo $name ?><!--</span>-->
            </div>
        </div>
        <article>
            <div class="top_p">
                <?php if(!$items) { ?>
                    <div class="">По вашему запросу ничего не найдено</div>
                <?php } ?>
                <?php foreach ($items as $index => $service) { ?>
                    <div class="column">
                        <?php if ($service->main_image) { ?>
                            <span class="column_img"><a href="/service/<?php echo $service->category->url ?>/<?php echo $service->url ?>"><img src="<?php echo Lib_Image::resize_bg($service->main_image, 'service',$service->id, 318, 212); ?>" alt="<?php echo $service->name ?>" class="works_img"></a></span>
                        <?php } ?>
                        <span class="column_name"><a href="/service/<?php echo $service->category->url ?>/<?php echo $service->url ?>"><?php echo $service->name ?></a></span>
                    </div>
                <?php } ?>
                <div class="clear"></div>
                <div class="col-xs-12">
                    <?php echo $pagination; ?>
                </div>
            </div>
        </article>
    </div>
</div>>