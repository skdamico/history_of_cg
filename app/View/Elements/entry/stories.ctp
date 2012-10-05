<?php foreach($stories as $story): ?>
  <div class='stories'>
    <p class="story-collapsed-heading">
        <span class='title'><?php echo $story['Story']['title']; ?> 1234 </span>
        <span class='delete ui-icon ui-icon-close'></span>
        <span class='story-type <?php 
            if( $story['Story']['StoryType']['name'] == 'Text' ) { 
                echo 'story-type-icon-text';
            } 
            else if( $story['Story']['StoryType']['name'] == 'Image' ) { 
                echo 'story-type-icon-image';
            } 
            else { 
                echo 'story-type-icon-video';
            } 
            ?>'></span>
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
