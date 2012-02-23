<div class='stories new' id='story-template' style='display: none;'>
  <p class="story-collapsed-heading"><span class='title'>New Story</span><span class='info'>(Click to toggle)</span></p>
  <div class="story-collapsed">
    <form action='/stories/add_or_edit' method='post' accept-charset='utf-8'>
    <ul class="story-labels all-labels">
        <li class="label-story-title labels">Title</li>
        <li class="label-story-date labels">Date</li>
        <li class="label-story-story labels">Story</li>
        <li class="label-story-media labels">Rich Media</li>
        <li class="label-story-author labels">Author</li>
    </ul>
    <ul class="story-fields all-fields">
        <li class="story-title fields">
            <input type='text' name='data[Story][title]' class='need-helper' value='' placeholder='New Story' />
            <span id="helper-story-title" class="helper-popups">What is this the story of?</span>
        </li>
        <li class="story-date fields">
            <input type='text' class='datepicker need-helper' value='' />
            <input name='data[Story][date]' type='hidden' value='' />
            <span id="helper-story-date" class="helper-popups">When did this story take place?</span>
        </li>
        <li class="story-body fields">
            <textarea class='need-helper' name='data[Story][story]' rows='10' cols='30'></textarea>
            <span id="helper-story-story" class="helper-popups">What happened? Who was involved? Remember, this is isn't an encyclopedia entry, give us the inside story!</span>
        </li>
        <li class="story-media fields">
            <input type="file">
        </li>
        <li class="story-author fields">
            <input type='text' name='data[Story][author_id]' class='need-helper' value='' />
            <span id="helper-story-author" class="helper-popups need-helper">If this is a first hand account, give yourself credit! If not that's ok, tell us whose story it is.</span>
        </li>
        <li class="story-source fields">
            <input type="checkbox" class='story-source-checkbox' name="source" value="yes" />
            <label for="story-source">I got this description from somewhere else</label>
        </li>
        <li class="source-title">
            <label>Source:</label><input type="text" name="source-name">
        </li>
        <li class="source-url">
            <label>URL (if applicable):</label><input type="text" name="source-url">
        </li>
        <li class='story-save save'>
            <button>Save Draft</button>
            <button class='publish-button'>Publish</button>
            <input type='hidden' class='publish' name='data[Story][published]' value='1' />
        </li>
    </ul>
    <div class="cf"></div>
    <input type='hidden' class='story-id' name='data[Story][id]' value='' />
    </form>
  </div>
</div>
