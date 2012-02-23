<?php $this->Html->script(array('libs/jquery-ui', 'entry'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('jquery-ui', 'styles-form'), null, array( 'inline' => false, 'once' => true )); ?>

<div class="form-container">
    <?php
        echo $this->Form->create('Entry');
        echo $this->element('entry/stub');
        echo $this->element('entry/generic');
        echo $this->element('entry/publish_ui', array('table_name' => 'Entry', 't' => $entry));
        echo $this->Form->end();
    ?>
</div>
