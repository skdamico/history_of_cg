<?php foreach ($stories as $story) : ?>
    <p class="recent_story">
    <?php echo print_r($story['Story']['created']); ?>
    <br>
    <?php echo print_r($story['Story']['title'])?>
    </p>
    <br>
<?php endforeach; ?>