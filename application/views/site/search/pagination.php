<?php 
	$max_page = $page + 1;
	
	if ($max_page > $count_pages) {
		$max_page = $count_pages;
	}
	
	if ($count_pages >= 3 && $max_page < 3) {
		$max_page = 3;
	}
	
	$min_page = $page - 1;
	if (($count_pages - $min_page) < 3) {
		$min_page--;
	}
	
	if ($min_page < 1) {
		$min_page = 1;
	}
	
	$query = parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY);
	$query = str_replace('&p=' . $page, '', $query);
?>
<div class="paginate">
	<strong>Страницы:</strong>
	<a href="/search?<?php echo $query; ?>">Начало</a>
	<?php for ($i = $min_page; $i <= $max_page; $i++) { ?>
		<?php if ($i == $page) { ?>
			<a class="current" href="/search?<?php echo $query; ?>&p=<?php echo $page; ?>"><span><?php echo $i; ?></span></a> 
		<?php } else { ?>
			<a href="/search?<?php echo $query; ?>&p=<?php echo $i; ?>"><?php echo $i; ?></a> 
		<?php } ?>
	<?php } ?>
	<a href="/search?<?php echo $query; ?>&p=<?php echo $count_pages; ?>">Конец</a>
</div>