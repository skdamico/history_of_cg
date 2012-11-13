<?php foreach ($stories as $story) : ?>
    <p class="recent_story">
    <br>
    <?php echo $story['Story']['created']; ?>
    <br>
    <?php echo $story['Story']['title'];?>
    <br>
    <?php if ($story['Story']['StoryType']['name'] == 'Image') :?>
        <img src="<?php echo $story['Story']['url'] ?>" width="200">
    <?php endif; ?>
    <?php if ($story['Story']['StoryType']['name'] == 'Text') :?>
        <?php echo $story['Story']['story']; ?>
    <?php endif; ?>
    <br>
    thumbs up: <?php echo $story['Story']['thumbsUp']; ?>
    <br>
    thumbs down: <?php echo $story['Story']['thumbsDown']; ?>
    </p>
    <br>
<?php endforeach; ?>