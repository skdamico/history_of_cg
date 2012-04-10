<form action='/stories/add_or_edit' method='post' accept-charset='utf-8'>
    <input type='hidden' class='story-type' name='data[Story][story_type_id]' value='<?php echo $story['Story']['story_type_id']; ?>' />
    <ul class="story-labels all-labels">
        <li class="label-story-title labels">Title</li>
        <li class="label-story-url labels">URL</li>
    </ul>
    <ul class="story-fields all-fields">
        <li class="story-title fields">
            <input type='text' name='data[Story][title]' class='need-helper' value='<?php echo $story['Story']['title'] ?>' />
            <span id="helper-story-title" class="helper-popups">What is this the story of?</span>
        </li>
        <li class="story-url fields">
            <input type='text' name='data[Story][url]' class='need-helper' value='<?php echo $story['Story']['url'] ?>' />
            
            <?php if($story['Story']['StoryType']['name'] == 'Video'): ?>
            <input type='hidden' name='data[Story][video]' class='video-id' value='<?php echo $story['Story']['video'] ?>' />
            <?php endif; ?>
            <span id="helper-story-date" class="helper-popups">Paste or type a URL to the media in here.</span>
        </li>
        <li class='story-preview'>
        <?php if($story['Story']['StoryType']['name'] == 'Image'): ?>
            <img width='400' src='<?php echo $story['Story']['url']; ?>' />
        <?php else: ?>
            <div class='lite' style='width:420px; height:300px' id="<?php echo $story['Story']['video']; ?>"></div>
        <?php endif; ?>
        </li>
        <li class='story-save save'>
            <button>Save Story</button>
            <button class='publish-button'><?php echo $story['Story']['published'] == 0 ? "Publish Story" : "Unpublish Story" ?></button>
            <input type='hidden' class='publish' name='data[Story][published]' value='<?php echo $story['Story']['published'] == 0 ? "1" : "0" ?>' />
        </li>
    </ul>
    <div class="cf"></div>
    <input type='hidden' class='story-id' name='data[Story][id]' value='<?php echo $story['Story']['id']; ?>' />
</form>
