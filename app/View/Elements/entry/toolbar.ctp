<div id='toolbar'>
    <span class='title'><h1><?php echo $title; ?></h1></span>
    <span class='publish-status'><?php echo $entry['Entry']['published'] == 1 ? 'Published' : 'Unpublished'; ?></span>
    <span class='view'><a class='button' href='/entries/view/<?php echo $entry['Entry']['name']; ?>'>View Entry</a></span>
    <div class='cf'></div>
</div>
