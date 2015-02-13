<script>
    $(document).ready(function(){
        $('#button_brief_item').click(function (e) {

            e.preventDefault();

            var name = $('#brief_item input[name="your_name"]').val();
            var email = $('#brief_item input[name="your_email"]').val();
            var phone = $('#brief_item input[name="your_phone"]').val();
            var text = $('#brief_item textarea[name="your_message"]').val();
            var errors = 0;
            if (!name) {
                $('#brief_item input[name=your_name]').addClass('error');
                errors++;
            } else {
                $('#brief_item input[name=your_name]').removeClass('error');
            }
            if (!email) {
                $('#brief_item input[name=your_email]').addClass('error');
                errors++;
            } else {
                $('#brief_item input[name=your_email]').removeClass('error');
            }
            if (!phone) {
                $('#brief_item input[name=your_phone]').addClass('error');
                errors++;
            } else {
                $('#brief_item input[name=your_phone]').removeClass('error');
            }
            if (!text) {
                $('#brief_item textarea[name=your_message]').addClass('error');
                errors++;
            } else {
                $('#brief_item textarea[name=your_message]').removeClass('error');
            }
            if (errors) {
                $('.feed_back_form').removeClass('loading');
                return false;
            }
            $.ajax({
                url: "/brief/add",
                dataType: "json",
                type: "post",
                data: {name: name, email: email, phone: phone, text: text},
                success: function (jsondata) {
                    $('.feed_back_form').removeClass('loading');
                    $('.feed_back_form').html('<h3>Спасибо за заявку</h3>');
                    $('#button_brief_item').hide();
                    $('.form_wrap form').html('');

                }
            });

        });
    });
</script>
<div class="grid_7">
    <div class="feed_back">
        <h2 class="font30">Отправьте нам заявку</h2>
        <br>
        <div class="feed_back_form">
            <div class="form_inputs">
                <form action="/brief/item_add" method="post" id="brief_item">
                    <table>
                        <tr>
                            <td>
                                <label class="form_labels" for="your-name"><span>Ваше имя *</span></label>
                            </td>
                            <td>
                                <input type="text" name="your_name" id="your-name">
                            </td>
                        <tr>
                        <tr>
                            <td>
                                <label class="form_labels" for="your-phone"><span>Телефон *</span></label>
                            </td>
                            <td>
                                <input type="text" name="your_phone" id="your-phone">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="form_labels" for="your-email"><span>E-mail *</span></label>
                            </td>
                            <td>
                                <input type="text" name="your_email" id="your-email">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="form_labels" for="your-message"><span>Ваше сообщение                                                        *</span></label>
                            </td>
                            <td><textarea name="your_message" id="your-message"></textarea>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>

    <div class="clear"></div>
    <a class="order" id="button_brief_item" href="#">Отправить</a>
</div>