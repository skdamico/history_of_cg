<div class="stories-col section-in-form">
    <ul class="story-explanation">
        <li class="label-story-header labels"><h2>Add a Story or Media</h2></li>
        <li class="story-helpertext"><p>Did you contribute to the development of an innovative technology or project? Did you have a chance to work with someone brimming with amazing talent? Here is a chance to share them!</p></li>
        <li class="share"><button class="btn-story">Share Stories or Add Media</button></li>
    </ul>
    <div class="cf"></div>
    <?php
        echo $this->element('entry/story_template');
        if(isset($stories)) {
            echo $this->element('entry/stories', array('stories' => $stories));
        }
    ?>
</div>
<div class="right-column">
    <h2>Create connections</h2>
    <p>Think of some other topics, subjects or categories that this post relates to? Make the connections between entries here!</p>
    <div class="connections-col section-in-form">
        <?php
            echo $this->element('entry/connection_form');
            echo $this->element('entry/connection_template');
            if(isset($connections)) {
                echo $this->element('entry/connections', array('connections' => $connections));
            }
        ?>
    </div>
</div>