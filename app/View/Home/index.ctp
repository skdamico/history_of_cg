<div id="homeSearch">
    <form id="searchForm">
        <fieldset class="search">
            <input type="text" class="searchBox" placeholder="Search" />
            <button class="searchBtn" title="Search">Search</button>
        </fieldset>
    </form>
</div>
<?php echo $this->element('timeline_static'); ?>
<?php foreach ($entry in $allEntries) : ?>
    <span><?php echo $entry['created']; ?></span>
<?php endforeach; ?>