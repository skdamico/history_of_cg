<?php $this->Html->script(array('libs/jquery.lazyload.min', 'libs/lite-youtube-min', 'libs/jquery.isotope.min', 'content'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('styles-youtube', 'styles-content'), null, array( 'inline' => false, 'once' => true )); ?>

<?php echo $this->element('timeline_static'); ?>
<!-- start of page content -->
<section class="entryMast">
    <h1 class="entryTitle <?php echo $entry['Category']['category'];?>"><?php echo $entry['Entry']['name']; ?></h1>
    <ul class="catBar">
        <li class="category project"><a href="#" data-filter=".project">Projects</a></li>
        <li class="category person"><a href="#" data-filter=".person">People</a></li>
        <li class="category organization"><a href="#" data-filter=".organization">Organizations</a></li>
        <li class="category event"><a href="#" data-filter=".event">Events</a></li>
        <li class="editEntry"><a href="/entries/edit/<?php echo str_replace(' ', '_', $entry['Entry']['name']); ?>">Edit Entry</a></li>
        <div class="cf"></div>
    </ul>
</section>
<section class="tagLists">
    <div class='' style='display:none;'>
        <ul>
            <li class="all"><input type="checkbox" data-filter="*" checked="checked" />All</li>
            <?php foreach($tags as $t): ?>
            <li class='<?php echo $t['category']; ?>'><input type='checkbox' data-filter='.<?php echo $t['name']; ?>' /><?php echo $t['name']; ?></li>
            <?php endforeach; ?>
        </ul>
    </div>
</section>
<section class="mosaicBody">
    <ul class="mosaicContainer loading cf">
        <li class="dynamic <?php echo $entry['Category']['category']; ?>"><p><?php echo $entry['Entry']['description']; ?></p></li>
    <?php foreach($connections as $c): ?>
        <li class="tile connection <?php echo $c['Entry']['Category']['category']; echo " " . implode(' ', $c['tags']); ?>">
            <div class='container'>
                <?php if($c['connection_display_type'] == 'image'): ?>
                <img src='<?php echo $c['connection_display']; ?>' />
                <?php else: ?>
                <p><?php echo $c['connection_display']; ?></p>
                <?php endif; ?>
            </div>
            <div class='bottom-link'>
                <span><?php echo $c['Entry']['name']; ?></span>
                <a class='link-button' href='/entries/view/<?php echo str_replace(" ", "_", $c['Entry']['name']); ?>'><span class='triangle'></span></a>
                <div class='cf'></div>
            </div>
        </li>
    <?php endforeach; ?>
    <?php foreach($stories as $s): ?>
        <?php if(!empty($s['Story']['id'])): ?>
        
            <?php if($s['Story']['StoryType']['name'] == 'Text'): ?>
            <li class="tile story story-text">
                <div class='container'>
                    <p><?php echo $s['Story']['story']?></p>
                </div>
                <div class='bottom-link'><span><?php echo $s['Story']['title']; ?></span><span class='story-type story-type-icon-text'><span></div>
            </li>
            <?php elseif($s['Story']['StoryType']['name'] == 'Video'): ?>
            <li class="tile story story-video">
                <div class='container'>
                    <!-- 
                      4:3 aspect ratio
                    -->
                    <div class='lite' style='width:478px; height:359px' id="<?php echo $s['Story']['video']; ?>"></div>
                </div>
                <div class='bottom-link'><span><?php echo $s['Story']['title']; ?></span><span class='story-type story-type-icon-video'></span></div>
            </li>
            <?php else: ?>

            <?php
                $img = null;
                $doubleSize = false;
                $img = getimagesize($s['Story']['url']);
                if($img[0] >= 478) {
                    $doubleSize = true;
                }
            ?>
            <li class="tile story story-image<?php echo $doubleSize ? ' double-size' : ''; ?>">
                <div class='container'>
                    <img src='<?php echo $s['Story']['url']; ?>' />
                </div>
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
