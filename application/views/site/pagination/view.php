<div class="paginate">
	<strong>Страницы:</strong> 
	<?php for ($i = 1; $i <= $total_pages; $i++): ?>
		<a <?php if ($previous_page == FALSE): ?>disabled="disabled"<?php endif ?> class="btn btn-default" href="<?php echo $page->url($previous_page) ?>">&larr;</a>
		<?php if ($i == $current_page): ?>
			<a class="current" disabled="disabled" href="#"><span><?php echo $i ?></span></a>
		<?php else: ?>
			<a href="<?php echo $page->url($i) ?>"><?php echo $i ?></a>
		<?php endif ?>
		<a <?php if ($next_page == FALSE): ?>disabled="disabled"<?php endif ?> class="btn btn-default<?php if ($next_page == TRUE): ?> button-gray<?php endif ?>" href="<?php echo $page->url($next_page) ?>"><?php if ($next_page == FALSE) { ?>&rarr;<?php } else { ?>Следующая страница &rarr;<?php } ?></a>
	<?php endfor ?>
</div>