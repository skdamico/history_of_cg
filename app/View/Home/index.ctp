<div id="homeSearch">
    <form id="searchForm">
        <fieldset class="search">
            <input type="text" class="searchBox" placeholder="Search" />
            <button class="searchBtn" title="Search">Search</button>
        </fieldset>
    </form>
</div>
<?php echo $this->element('timeline_static'); ?>
<div id="recentlyUpdated">
    <span id="stories">
        <?php echo $this->element('recent_updates'); ?>
    </span>
</div>