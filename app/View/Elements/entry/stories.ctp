<?php foreach($stories as $story): ?>
  <div class='stories'>
    <p class="story-collapsed-heading">
        <span class='title'><?php echo $story['Story']['title']; ?></span>
        <span class='delete ui-icon ui-icon-close'></span>
        <span class='info'><?php echo $story['Story']['published'] ? "Published" : "Unpublished"; ?></span>
    </p>
    <div class="story-collapsed">
        <?php 
        if ($story['Story']['story_type_id'] == 3) {
            echo $this->element('entry/story_form', array('story' => $story));
        }
        else {
            echo $this->element('entry/story_media_form', array('story' => $story));
        }
        ?>
    </div>
  </div>
<?php endforeach; ?>
