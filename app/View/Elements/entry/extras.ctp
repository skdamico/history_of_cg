<div class="buttons section-in-form">
    <ul class="story-or-connection">
        <li class="share-helpertext"><p>The most compelling element of this site has everything to do with what you, the contributor, puts into it! The history, the images, and the connections within this field are a complex web of amazing, intertwined stories just needing a place to converge. Make a mark on the history of computer graphics by including your share!</p></li>
        <li class="share"><a class="btn-story"><p>Share Stories</p></a></li>
        <li class="connect"><a class="btn-connect"><p>Create Connections</p></a></li>
    </ul>
    <div class="cf"></div>
</div>
<div class="stories-col section-in-form">
    <ul class="story-explanation">
        <li class="label-story-header labels"><p class="section-header">Add a Story</p></li>
        <li class="story-helpertext"><p>We want to hear your stories about your experiences in the computer graphics industry. Did you contribute to the development of an innovative technology or project? Did you have a chance to work with someone brimming with amazing talent? These kinds of archives are for the most part uncelebrated and unknown, but here is a chance to share them!</p></li>
    </ul>
    <div class="cf"></div>
    <?php
        echo $this->element('entry/story_template');
        if(isset($stories)) {
            echo $this->element('entry/stories', array('stories' => $stories));
        }
    ?>
</div>
<div class="connections-col section-in-form">
    <div class="connection-1">
        <!-- same contents as div.stubs -->
    </div>
</div>
