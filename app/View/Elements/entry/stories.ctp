<?php foreach($stories as $story): ?>
  <div class='stories'>
    <p class="story-collapsed-heading"><span class='title'><?php echo $story['Story']['title']; ?></span><span class='info'>(Click to toggle)</span></p>
    <div class="story-collapsed">
        <?php echo $this->element('entry/story_form', array('story' => $story)); ?>
    </div>
  </div>
<?php endforeach; ?>
