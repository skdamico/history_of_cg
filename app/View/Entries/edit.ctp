<?php $this->Html->script(array('libs/jquery.lazyload.min', 'libs/lite-youtube-min', 'libs/jquery.form', 'entry', 'entry-extras'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('styles-youtube', 'styles-form'), null, array( 'inline' => false, 'once' => true )); ?>

<div class="form-container">
    <?php
        echo $this->Form->create('Entry');
        echo $this->element('entry/toolbar', array('title' => 'Edit Entry', 'entry' => $entry));
        echo $this->element('entry/stub');
        echo $this->element('entry/generic');
        echo $this->element('entry/publish_ui', array('table_name' => 'Entry', 't' => $entry));
        echo $this->Form->end();
        echo $this->element('entry/extras', array('stories' => $stories, 'connections' => $connections));
    ?>
</div>
