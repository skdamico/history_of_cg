<?php foreach ($stories as $story) : ?>
    <p>
    <?php echo print_r($story['Story']['created']); ?>
    <br>
    <?php echo print_r($story['Story']['title'])?>
    </p>
    <br>
    <br>
<?php endforeach; ?>