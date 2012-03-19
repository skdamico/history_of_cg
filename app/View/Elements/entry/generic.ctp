<h2>Required information</h2>
<div class="basics section-in-form">
    <ul class="basic-labels all-labels">
        <li class="label-entry-description labels">Description<span class="required"> *</span></li>
        <li class="label-entry-date labels"><span class='label'>Date</span><span class="required"> *</span></li>
        <li class="label-entry-date-2 labels"><span class='label'>Date 2</span></li>
    </ul>
    <ul class="basic-fields all-fields">
        <li class="entry-description fields">
            <?php echo $this->Form->input('description', array(
                'type' => 'textarea',
                'id' => 'entry-description-box',
                'class' => 'need-helper',
                'rows' => 10,
                'cols' => 30,
                'div' => false,
                'label' => false,
                'value' => $entry['Entry']['description']
            )); ?>
            <span id="helper-descript" class="helper-popups">
                Tell us some details about this entry. Don't worry about too much technical data, just give us an idea of what this entry is about. This description will be displayed on the entries page.
            </span>
        </li>
        <li class="entry-source fields"><input type="checkbox" id="entry-source" name="data[source_selected]"<?php if( !empty($entry['Entry']['source_name']) || !empty($entry['Entry']['source_url']) ) { echo ' checked="checked"'; } ?>/>
            <label for="entry-source">I got this description from somewhere else</label>
        </li>
        <li class="source-title">
            <label>Source:</label><input type="text" name="data[Entry][source_name]" value='<?php echo $entry['Entry']['source_name']; ?>' />
        </li>
        <li class="source-url">
            <label>URL (if applicable):</label><input type="text" name="data[Entry][source_url]" value='<?php echo $entry['Entry']['source_url']; ?>' />
        </li>
        <li class="entry-date fields">
            <input type='text' id='entry-date-box-1' class='datepicker need-helper' value='<?php
                    if (!empty($entry['Entry']['date_1'])) {
                        echo date('m/d/Y', strtotime($entry['Entry']['date_1'])); }?>' placeholder='MM/DD/YYYY' />
            <?php echo $this->Form->input('date_1', array('type' => 'hidden', 'id' => 'entry-date-box-1-helper', 'value' => $entry['Entry']['date_1'])); ?>
            <span id="helper-date" class="helper-popups">When did this <i>Project/Event</i> take place? This will define where your entry goes on the timeline.</span>
        </li>
        <li class="entry-date-2-selected fields"><input type="checkbox" id="entry-date-selected" name="data[date_selected]"<?php if( !empty($entry['Entry']['date_2']) ) { echo ' checked="checked"'; } ?> />
            <label for="entry-date-selected">I have a second date</label>
        </li>
        <li class='entry-date-2 fields'>
            <input type='text' id='entry-date-box-2' class='datepicker need-helper' value='<?php
                    if (!empty($entry['Entry']['date_2'])) {
                        echo date('m/d/Y', strtotime($entry['Entry']['date_2'])); }?>' placeholder='MM/DD/YYYY' />
            <?php echo $this->Form->input('date_2', array('type' => 'hidden', 'id' => 'entry-date-box-2-helper', 'value' => $entry['Entry']['date_2'])); ?>
            <span id="helper-date" class="helper-popups">When did this <i>Project/Event</i> take place? This will define where your entry goes on the timeline.</span>
        </li>
    </ul>
    <div class="cf"></div>
</div>
