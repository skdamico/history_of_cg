<?php $this->Html->script(array('libs/jquery-tokeninput', 'entry-stub'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('token-input', 'token-input-hcg'), null, array( 'inline' => false, 'once' => true )); ?>

<div id='main-stub' class="stub section-in-form">
    <ul class="required-labels all-labels">
        <li class="label-entry-type labels">Type of entry <span class="required">*</span></li>
        <li class="label-entry-name labels">Entry name <span class="required">*</span></li>
        <li class="label-entry-tags labels">Tags <span class="required">*</span></li>
    </ul>
    <ul class="required-fields all-fields">
        <li class="entry-type fields">
            <?php echo $this->Form->select('category_id',
                array(
                    '1' => 'A Person',
                    '2' => 'A Project',
                    '3' => 'An Organization',
                    '4' => 'An Event'
                ),
                array(
                    'class' => 'entry-type-select',
                    'value' => $entry['Entry']['category_id']
                )
            ); ?>
        </li>
        <li class="entry-name fields">
            <input type='hidden' class='entry-id' name='data[Entry][id]' value='<?php echo $entry['Entry']['id']; ?>' />
            <?php echo $this->Form->input('name', array(
                'div' => false,
                'label' => false,
                'id' => 'entryName',
                'value' => $entry['Entry']['name'])); ?>
        </li>
        <li class="entry-tags fields">
            <input type='text' name='data[tags]' class='tags' />
        </li>
    </ul>
    <div class="cf"></div>
</div>
