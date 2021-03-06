<?php $this->Html->script(array('entry'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('styles-form'), null, array( 'inline' => false, 'once' => true )); ?>

<div class="form-container">
    <div id='toolbar'>
      <h1>Add Entry</h1>
      <span class="required">* Required</span>
    </div>
    <?php
        echo $this->Form->create('Entry');
        echo $this->element('entry/stub');
        echo $this->element('entry/generic');
        echo $this->element('entry/publish_ui', array('table_name' => 'Entry', 't' => $entry));
        echo $this->Form->end();
    ?>
</div>
