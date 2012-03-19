<?php $this->Html->script(array('libs/jquery.isotope.min', 'content'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('styles-content'), null, array( 'inline' => false, 'once' => true )); ?>

<!-- start of page content -->
<section class="entryMast">
    <h1 class="entryTitle <?php echo $entry['Category']['category'];?>"><?php echo $entry['Entry']['name']; ?></h1>
    <ul class="catBar">
        <li class="category project"><a href="#" data-filter=".project">Project</a></li>
        <li class="category person"><a href="#" data-filter=".person">People</a></li>
        <li class="category organization"><a href="#" data-filter=".organization">Organization</a></li>
        <li class="category event"><a href="#" data-filter=".event">Event</a></li>
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
        <li class="tile connection <?php echo $c['Entry']['Category']['category']; ?>">
            <a href='/entries/view/<?php echo $c['Entry']['name']; ?>'><span><?php echo $c['Entry']['name']; ?></span></a>
        </li>
    <?php endforeach; ?>
    <?php foreach($stories as $s): ?>
        <?php if(!empty($s['Story']['id'])): ?>
        
        <li class="tile story">
        <?php if($s['Story']['StoryType']['name'] == 'Text'): ?>
            <p><?php echo $s['Story']['story']?></p>
        <?php else: ?>
            <img src='<?php echo $s['Story']['url']; ?>' />
        <?php endif; ?>
            <span><?php echo $s['Story']['title']; ?></span></a>
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