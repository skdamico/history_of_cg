<div id="homeSearch">
    <form id="searchForm">
        <fieldset class="search">
            <input type="text" class="searchBox" placeholder="Search" />
            <button class="searchBtn" title="Search">Search</button>
        </fieldset>
    </form>
</div>
<?php echo $this->element('timeline_static'); ?>
<?php foreach ($allEntries as $entry) : ?>
    <p>
    <?php echo $entry; ?> :
    <?php echo $entry; ?>
    </p>
<?php endforeach; ?>
<?php foreach ($allStories as $story) : ?>
    <p>
    <?php echo $story; ?> : <?php echo $story['text']; ?>
    </p>
<?php endforeach; ?>