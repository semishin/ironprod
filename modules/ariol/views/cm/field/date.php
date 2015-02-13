<?php defined('SYSPATH') or die('No direct script access.');
/**
 * @version SVN: $Id:$
 */

?>
<?php echo form::input($name, $value, array('class' => 'form-control', 'readonly' => 'readonly', 'style' => 'cursor: pointer;'));?>
<script type="text/javascript">
$(':input[name=<?php echo $name?>]').datepicker({
	dateFormat: 'yy-mm-dd'
});
</script>