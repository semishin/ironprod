<?php 
	$max_page = $current_page + 1;
	
	if ($max_page > $total_pages) {
		$max_page = $total_pages;
	}
	
	if ($total_pages >= 3 && $max_page < 3) {
		$max_page = 3;
	}
	
	$min_page = $current_page - 1;
	if (($total_pages - $min_page) < 3) {
		$min_page--;
	}
	
	if ($min_page < 1) {
		$min_page = 1;
	}
?>

<div class="paginate">
	<strong>Страницы:</strong> 
	<a href="<?php echo urldecode($page->url(1)); ?>">Начало</a>
	<?php for ($i = $min_page; $i <= $max_page; $i++) { ?>
		<?php if ($i == $current_page) { ?>
			<a class="current" href="<?php echo urldecode($page->url($i)) ?>"><span><?php echo $i; ?></span></a>
		<?php } else { ?>
			<a href="<?php echo urldecode($page->url($i)) ?>"><?php echo $i; ?></a>
		<?php } ?>
	<?php } ?>
	<a href="<?php echo urldecode($page->url($total_pages)); ?>">Конец</a>
</div>