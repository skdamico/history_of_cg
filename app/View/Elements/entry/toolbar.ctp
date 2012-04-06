<div id='toolbar'>
    <div class='title'><h1><?php echo $title; ?></h1></div>
    <div class='publish-status'><?php echo $entry['Entry']['published'] == 1 ? 'Published' : 'Unpublished'; ?></div>
    <div class='view'><a class='button' href='/entries/view/<?php echo str_replace(' ', '_', $entry['Entry']['name']); ?>'>View Entry</a></div>
    <?php echo $this->element('entry/publish_ui', array('table_name' => 'Entry', 't' => $entry)); ?>
    <div class='cf'></div>
</div>
<span class="required">* Required</span>