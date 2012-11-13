<div id="homeSearch">
    <form id="searchForm">
        <fieldset class="search">
            <input type="text" class="searchBox" placeholder="Search" />
            <button class="searchBtn" title="Search">Search</button>
        </fieldset>
    </form>
</div>
<?php echo $this->element('timeline_static'); ?>
<?php echo $this->element('entry/stories'); ?>
/*<?php foreach ($entries as $entry) : ?>
    <p>
    <?php echo $entry; ?> : <?php echo print_r($entry); ?>
    </p>
<?php endforeach; ?>
<?php foreach ($stories as $story) : ?>
    <p>
    <?php echo print_r($story['Story']['created']); ?>
    <br>
    <?php echo print_r($story['Story']['title'])?>
    </p>
    <br>
    <br>
<?php endforeach; ?>*/