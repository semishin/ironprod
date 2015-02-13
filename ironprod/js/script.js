//ширина поисковой строки

$(document).ready(function () {
    var sizesearch = $('.grid_16').width() - 400;
    $(".search").css('width', sizesearch);
    $('#button_brief').click(function (e) {


        e.preventDefault();

        var name = $('#brief input[name="your_name"]').val();
        var email = $('#brief input[name="your_email"]').val();
        var phone = $('#brief input[name="your_phone"]').val();
        var text = $('#brief textarea[name="your_message"]').val();
        var errors = 0;
        if (!name) {
            $('#brief input[name=your_name]').addClass('error');
            errors++;
        } else {
            $('#brief input[name=your_name]').removeClass('error');
        }
        if (!email) {
            $('#brief input[name=your_email]').addClass('error');
            errors++;
        } else {
            $('#brief input[name=your_email]').removeClass('error');
        }
        if (!phone) {
            $('#brief input[name=your_phone]').addClass('error');
            errors++;
        } else {
            $('#brief input[name=your_phone]').removeClass('error');
        }
        if (!text) {
            $('#brief textarea[name=your_message]').addClass('error');
            errors++;
        } else {
            $('#brief textarea[name=your_message]').removeClass('error');
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
                $('#button_brief').hide();
                $('.form_wrap form').html('');

            }
        });

    });

    $('#button_comment').click(function (e) {


        e.preventDefault();

        var name = $('#comment input[name="your_name"]').val();
        var text = $('#comment textarea[name="your_message"]').val();
        var errors = 0;
        if (!name) {
            $('#comment input[name=your_name]').addClass('error');
            errors++;
        } else {
            $('#comment input[name=your_name]').removeClass('error');
        }

        if (!text) {
            $('#comment textarea[name=your_message]').addClass('error');
            errors++;
        } else {
            $('#comment textarea[name=your_message]').removeClass('error');
        }
        if (errors) {
            $('.feed_back_form').removeClass('loading');
            return false;
        }
        $.ajax({
            url: "/comments/add",
            dataType: "json",
            type: "post",
            data: {name: name, text: text},
            success: function (jsondata) {
                $('.feed_back_form').removeClass('loading');
                $('.feed_back_form').html('<h3>Спасибо за комментарий</h3>');
                $('#button_comment').hide();
                $('.form_wrap form').html('');

            }
        });

    });
    $(".fancybox").fancybox({
        openEffect: 'none',
        closeEffect: 'none'
    });


//hover верхнего меню
    $("li.parent").hover(
        function () {
            $(this).append("<i></i>");
        },
        function () {
            $(this).find("i:last").remove();
        }
    );
});
//ширина оранж меню
var countallli = $(".orange_menu li").length;
var elem_width = 0;
var i = 0;
$('.orange_menu li').each(function (i) {
    elem_width = elem_width + $(this).outerWidth(); //суммируем ширину всех элементов списка. именно тут идет неправильный расчет.
    i = i + 1;
    $('.orange_menu nav').css('width', elem_width);
});
//меремещение оранж меню
//правый ховер
var allwidthorange = $(".orange_menu li").outerWidth() - 420;
$(".orange_menu i.right").hover(
    function () {
        $('.orange_menu nav').animate({marginLeft: allwidthorange}, 500);
    },
    function () {
        $('.orange_menu nav').stop();
    }
);

//левый ховер
var allwidthorangeminus = $(".orange_menu li").outerWidth();
$(".orange_menu i.left").hover(
    function () {
        $('.orange_menu nav').animate({marginLeft: 20}, 500);
    },
    function () {
        $('.orange_menu nav').stop();
    }
);




//slider
$(".slide.n1").click(function (e) {

    if ($(".slide.n1").hasClass('active')) {
        e.preventDefault();
    }
    $(".slide.n2").css('left', '100%');
    $(".slide.n3").css('left', '200%');
    $(".slide.n2").removeClass('active');
    $(this).addClass('active');
    $(this).css('left', '0');
});
$(".slide.n2").click(function (e) {
    if ($(".slide.n2").hasClass('active')) {
        e.preventDefault();
    }
    $(".slide.n1").css('left', '-100%');
    $(".slide.n3").css('left', '100%');
    $(".slide.n1").removeClass('active');
    $(".slide.n3").removeClass('active');
    $(this).addClass('active');
    $(this).css('left', '0');
});
$(".slide.n3").click(function (e) {

    if ($(".slide.n3").hasClass('active')) {
        e.preventDefault();
    }
    $(".slide.n1").css('left', '-200%');
    $(".slide.n2").css('left', '-100%');
    $(".slide.n2").removeClass('active');
    $(this).addClass('active');
    $(this).css('left', '0');
});
