<div class="basics section-in-form">
    <ul class="basic-labels all-labels">
        <li class="label-entry-description labels">Description <span class="required">*</span></li>
        <li class="label-entry-date labels">Date <span class="required">*</span></li>
    </ul>
    <ul class="basic-fields all-fields">
        <li class="entry-description fields">
            <?php echo $this->Form->input('description', array(
                'type' => 'textarea',
                'id' => 'entry-description-box',
                'rows' => 10,
                'cols' => 30,
                'div' => false,
                'label' => false,
                'value' => $entry['Entry']['description']
            )); ?>
            <span id="helper-descript" class="helper-popups">
                Tell us some details about this <i><?php echo $entry['Category']['category']; ?></i>. Don't worry about too much technical data, just give us an idea of what this entry is about. This description will be displayed on the entries page.
            </span>
        </li>
        <li class="entry-source fields"><input type="checkbox" id="entry-source" name="source" value="yes" /><label for="entry-source">I got this description from somewhere else</label></li>
        <li class="source-title">
            <label>Title:</label><input type="text" name="source-name">
        </li>
        <li class="source-url">
            <label>URL:</label><input type="text" name="source-url">
        </li>
        <li class="entry-date fields">
            <input type='text' id='entry-date-box-1' class='datepicker' value='<?php
                    if (!empty($entry['Entry']['date_1'])) {
                        echo date('m/d/Y', strtotime($entry['Entry']['date_1'])); }?>' />
            <?php echo $this->Form->input('date_1', array('type' => 'hidden', 'id' => 'entry-date-box-1-helper', 'value' => $entry['Entry']['date_1'])); ?>
            <span id="helper-date" class="helper-popups">When did this <i>Project/Event</i> take place? This will define where your entry goes on the timeline.</span>
        </li>
    </ul>
    <div class="cf"></div>
</div>
