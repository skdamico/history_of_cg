<?php $this->Html->script(array('libs/jquery.form', 'entry', 'entry-stories'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('styles-form'), null, array( 'inline' => false, 'once' => true )); ?>

<div class="form-container">
    <?php
        echo $this->Form->create('Entry');
        echo $this->element('entry/stub');
        echo $this->element('entry/generic');
        echo $this->element('entry/publish_ui', array('table_name' => 'Entry', 't' => $entry));
        echo $this->Form->end();
        echo $this->element('entry/extras', array('stories' => $stories));
    ?>
</div>
