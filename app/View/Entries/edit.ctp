<?php $this->Html->script(array('libs/jquery-ui', 'libs/jquery.form', 'entry', 'entry-stories'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('jquery-ui', 'styles-form'), null, array( 'inline' => false, 'once' => true )); ?>

<div class="form-container">
    <?php
        echo $this->Form->create('Entry');
        echo $this->element('entry/stub');
        echo $this->element('entry/generic');
        echo $this->Form->end(__('Save'));
        echo $this->element('entry/extras', array('stories' => $stories));
    ?>
</div>
