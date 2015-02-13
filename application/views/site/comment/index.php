<div class="clear"></div>

<section>
    <div class="grid_16 margin_minus20bot" style="z-index:0;margin-top: 0px;">
        <img src="/ironprod/img/shadow_top.jpg" width="100%">
    </div>
</section>


<div class="content">
    <div class="container_16">
        <article>
            <div class="grid_16">
                <div class="contacts">

                    <div class="grid_9">
                        <div class="contact_info">
                            <h2 class="font30">Отзывы</h2>
                            <br><br>
                            <?php foreach ($comment as $item) { ?>
                                <p>
                                    <span class="review_name"><?php echo $item->name?></span>
                                    <br>
                                    <span class="review_date"><?php echo $item->date?></span>
                                    <span class="review_content"><?php echo $item->content?></span>

                                </p>
                                <br><br>
                            <?php } ?>

                        </div>
                    </div>



                    <div class="grid_7">
                        <div class="feed_back">
                            <h2 class="font30">Оставьте отзыв</h2>
                            <br>

                            <div class="feed_back_form">
                                <div class="form_inputs">
                                    <form action="#" method="post" id="comment">

                                        <table>

                                            <tr>
                                                <td>
                                                    <div class="form_labels">
                                                        <label for="your-name"><span>Ваше имя *</span></label>
                                                    </div>
                                                </td>

                                                <td>
                                                    <input type="text" name="your_name" id="your-name">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <div class="form_labels">
                                                        <label for="your-message"><span>Ваш отзыв *</span></label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <textarea name="your_message" id="your-message"></textarea>
                                                </td>
                                            </tr>


                                        </table>
                                    </form>
                                </div>
                            </div>


                            <div class="clear"></div>
                            <a class="order" id="button_comment" href="#">Отправить</a>
                        </div>
                    </div>

                </div>
            </div>
        </article>
    </div>
</div>