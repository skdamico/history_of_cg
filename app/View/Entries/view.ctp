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
    <ul class="mosaicContainer cf">
        <li class="dynamic <?php echo $entry['Category']['category']; ?>"><p><?php echo $entry['Entry']['description']; ?></p></li>
    <?php foreach($connections as $c): ?>
        <li class="tile connection <?php echo $c['Entry']['Category']['category']; ?>" style='height: <?php if(rand()%2==1) { echo "300px"; } ?>'>
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
            <?php else: ?>
            <li class="tile story story-image">
                <a class='img-link' href=''><img width='240' src='<?php echo $s['Story']['url']; ?>' /></a>
            <?php endif; ?>
                <div class='bottom-link'><span><?php echo $s['Story']['title']; ?></span></div>
            </li>
            
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