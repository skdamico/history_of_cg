<div class='save'>
    <button>Save Draft</button>
    <button class='publish-button'><?php echo $t[$table_name]['published'] == 0 ? "Publish" : "Unpublish" ?></button>
    <input type='hidden' name='data[<?php echo $table_name; ?>][published]' class='publish' value='<?php echo $t[$table_name]['published'] == 0 ? "1" : "0" ?>' />
</div>
