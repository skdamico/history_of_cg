<?php $this->Html->script(array('libs/jquery.isotope.min', 'content'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('styles-content'), null, array( 'inline' => false, 'once' => true )); ?>

<!-- start of page content -->
<section class="entryMast">
    <h1 class="entryTitle <?php echo $entry['Category']['category'];?>"><?php echo $entry['Entry']['name']; ?></h1>
    <ul class="catBar">
        <li class="category project"><a href="#" data-filter=".project">Projects</a></li>
        <li class="category person"><a href="#" data-filter=".person">People</a></li>
        <li class="category organization"><a href="#" data-filter=".organization">Organizations</a></li>
        <li class="category event"><a href="#" data-filter=".event">Events</a></li>
        <li class="editEntry"><a href="/entries/edit/<?php echo $entry['Entry']['name']; ?>">Edit Entry</a></li>
        <div class="cf"></div>
    </ul>
</section>
<section class="tagLists">
</section>
<section class="mosaicBody">
    <ul class="mosaicContainer loading cf">
        <li class="dynamic <?php echo $entry['Category']['category']; ?>"><p><?php echo $entry['Entry']['description']; ?></p></li>
    <?php foreach($connections as $c): ?>
        <li class="tile connection <?php echo $c['Entry']['Category']['category']; ?>">
            <?php if($c['connection_display_type'] == 'image'): ?>
            <img style='width: 240px;' src='<?php echo $c['connection_display']; ?>' />
            <?php else: ?>
            <p><?php echo $c['connection_display']; ?></p>
            <?php endif; ?>
            <div class='bottom-link'>
                <span><?php echo $c['Entry']['name']; ?></span>
                <a class='link-button' href='/entries/view/<?php echo $c['Entry']['name']; ?>'><span class='triangle'></span></a>
                <div class='cf'></div>
            </div>
        </li>
    <?php endforeach; ?>
    <?php foreach($stories as $s): ?>
        <?php if(!empty($s['Story']['id'])): ?>
        
            <?php if($s['Story']['StoryType']['name'] == 'Text'): ?>
            <li class="tile story story-text">
                <p><?php echo $s['Story']['story']?></p>
                <div class='bottom-link'><span><?php echo $s['Story']['title']; ?></span><span class='story-type story-type-icon-text'><span></div>
            </li>
            <?php elseif($s['Story']['StoryType']['name'] == 'Video'): ?>
            <li class="tile story story-video">
                <iframe width="480" height="360" src="<?php echo $s['Story']['url']; ?>" frameborder="0" allowfullscreen></iframe>
                <div class='bottom-link'><span><?php echo $s['Story']['title']; ?></span><span class='story-type story-type-icon-video'></span></div>
            </li>
            <?php else: ?>
            <li class="tile story story-image">
                <img width='240' src='<?php echo $s['Story']['url']; ?>' />
                <div class='bottom-link'><span><?php echo $s['Story']['title']; ?></span><span class='story-type story-type-icon-image'></span></div>
            </li>
            <?php endif; ?>
        <?php endif; ?>
    <?php endforeach; ?>
    </ul>
</section>

<section class="entryInfo" style="display: none;">
    <input type="hidden" class="entryName" value="<?php echo $entry['Entry']['name'];?>" />
    <input type="hidden" class="entryId" value="<?php echo $entry['Entry']['id']; ?>" />
    <input type="hidden" class="entryCategory" value="<?php echo $entry['Category']['category']; ?>" />
    <div class="entryDescription"><p><?php echo $entry['Entry']['description']; ?></p></div>
</section>
