<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title><?=$code; ?> ошибка - Пристанище заблудившихся путников</title>
		<meta name="description" content="Заблудились? Попробуйте поискать еще.">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="/ariol/assets/ico/favicon.ico'; ?>">
		<?php echo HTML::style('/ariol/assets/css/bootstrap.min.css'); ?>
		<?php echo HTML::style('/ariol/assets/css/style.css'); ?>
		<?php echo HTML::style('/ariol/assets/css/retina.min.css'); ?>
		<?php echo HTML::style('/ariol/assets/css/print.css', array('media' => 'print')); ?>
		<?php echo HTML::style('/ariol/assets/css/ariol.css'); ?>
		<?php echo HTML::script('http://html5shim.googlecode.com/svn/trunk/html5.js'); ?>
		<?php echo HTML::script('/ariol/assets/js/jquery-1.10.2.min.js'); ?>
		<?php echo HTML::script('/ariol/assets/js/jquery-migrate-1.2.1.min.js'); ?>
		<?php echo HTML::script('/ariol/assets/js/bootstrap.min.js'); ?>
		<?php echo HTML::script('/ariol/assets/js/core.min.js'); ?>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div id="id_content" class="col-sm-12 full">
					<div class="row box-error">
						<div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
							<h1><?php echo $code; ?></h1>
							<?php if ($code >= 500) { ?>
								<h2>Что-то сломалось.</h2>
								<p>Ожидайте, в скором времени починимся.</p>
							<?php } else { ?>
								<h2>Страница не найдена</h2>
								<p>Волшебная строка поможет вам</p>
								<form action="https://www.google.by/search" method="get">
									<div class="input-prepend input-group">
										<span class="input-group-addon clear"><i class="fa fa-search"></i></span>
										<input name="q" value="" id="prependedInput" class="form-control" size="16" type="text" placeholder="Волшебная строка">
										<span class="input-group-btn">
											<button class="btn btn-info" type="submit">Найти</button>
										</span>
									</div>
								</form>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
<script>
	$(document).ready(function() {
		$('form').on('submit', function() {
			$('input[name=q]').val('site:<?php echo $_SERVER['HTTP_HOST']; ?> ' + $('input[name=q]').val());
		});
	})
</script>