<div class="clear"></div>

<div class="content">
    <div class="container_16">
        <article>
            <div class="grid_16">
                <div class="articles">
                    <?php foreach ($article as $item) { ?>
                        <div class="separator_"></div>
                        <div class="grid_5">
                            <h2 class="font30"><a href="/article/<?php echo $item->url ?>"><?php echo $item->name ?></a></h2>
                        </div>
                        <div class="grid_11">

                            <div class="text_articles">
                                <p><?php echo $item->short_content ?><a class="more_inf" href="/article/<?php echo $item->url ?>">Подробнее</a></p>
                            </div>
                        </div>

                    <?php } ?>

                    <div class="separator_"></div>

                </div>
            </div>
        </article>
    </div>
</div>