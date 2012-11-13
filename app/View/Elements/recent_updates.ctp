<?php foreach ($stories as $story) : ?>
    <p class="recent_story">
    <?php echo print_r($story); ?>
    <br>
    <?php echo print_r($story['Story']['created']); ?>
    <br>
    <?php echo print_r($story['Story']['title'])?>
    <br>
    <?php if ($story['StoryType'] == 'Image') :?>
        <img src="<?php echo $story['Story']['url'] ?>" width="200">
    </p>
    <br>
<?php endforeach; ?>