<div class="content">
    <div class="container_16">
        <div class="grid_16">

            <?php foreach ($ourproduct_category as $item) { ?>
                <div class="top_i-block teni">

                    <div class="grid_6">
                        <div class="top_menu">
                            <ul>
                                <li><span></span><a href="#"><?php echo $item->name ?></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <?php foreach ($item->ourproducts->where('active','=',1)->order_by('position','asc')->find_all() as $iman) { ?>
                        <div class="grid_4"><a class="fancybox" rel="group-1" href="<?php echo $iman->image ?>"><img src="<?php echo Lib_Image::crop($iman->image, 'ourproduct',$iman->id, 300, 200); ?>" class="works_img" alt="work_1-1"></a></div>
                    <?php } ?>
                </div>
            <?php } ?>

        </div>
    </div>
</div>