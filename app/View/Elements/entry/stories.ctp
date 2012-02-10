<?php foreach($stories as $story): ?>
    <p class="story-collapsed-heading"><?php echo $story['title']; ?><span>(Click to toggle)</span></p>
    <div class="story-collapsed">
        <?php echo $this->element('entry/story_form', array('story' => $story)); ?>
    </div>
<?php endforeach; ?>
