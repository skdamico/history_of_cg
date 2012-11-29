<script>
    var $dialog = $('<div></div>')
            .html('')
            .dialog({
                autoOpen: false,
                modal: true,
                show: 'fadeIn',
                title: '',
                maxHeight : 1000,
                maxWidth : 2000,
                width: 600
            });


    $('[id=opener]').click(function() {
        console.log('clicked');
        var story = $(this)[0];
        var stories = eval('('+story.getAttribute('data-stories')+')');
        var index = story.getAttribute('data-index') - 1;
        if (stories[index]['Story']['StoryType'].name == 'Image') {
            $dialog.html('<div class="container"><img style="width:590px;" src='+stories[index]['Story']['url']+'></div>');
        }
        if (stories[index]['Story']['StoryType'].name == 'Video') {
            $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
        }
        if (stories[index]['Story']['StoryType'].name == 'Text') {
            $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
        }
        console.log('entry filled');
        //$dialog.html('<div>'+stories[index]["Story"]+'</div>');
        $dialog.dialog("option", "title", story.getAttribute('data-title'));
        $dialog.dialog("option", "buttons", {
            "<": function() {
                if (index <= stories.length-1 && index > 0) {
                    index--;
                    if (stories[index]['Story']['StoryType'].name == 'Image') {
                        $dialog.html('<img style="width:590px;" src='+stories[index]['Story']['url']+'>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Video') {
                        $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Text') {
                        $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
                    }
                    $dialog.dialog("option", "title", stories[index]['Story']['title']);
                }
                else {
                    index = stories.length-1;
                    $dialog.dialog("option", "title", stories[index]['Story']['title']);
                    if (stories[index]['Story']['StoryType'].name == 'Image') {
                        $dialog.html('<img style="width:590px;" src='+stories[index]['Story']['url']+'>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Video') {
                        $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Text') {
                        $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
                    }
                }
            },
            "X": function() {
                $dialog.dialog("close");
            },
            ">": function() {
                if (index < stories.length-1 && index >= 0) {
                    index++;
                    if (stories[index]['Story']['StoryType'].name == 'Image') {
                        $dialog.html('<img style="width:590px;" src='+stories[index]['Story']['url']+'>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Video') {
                        console.info(stories[index]['Story']);
                        $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Text') {
                        $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
                    }
                    $dialog.dialog("option", "title", stories[index]['Story']['title']);
                }
                else {
                    index = 0;
                    $dialog.dialog("option", "title", stories[index]['Story']['title']);
                    if (stories[index]['Story']['StoryType'].name == 'Image') {
                        $dialog.html('<img style="width:590px;" src='+stories[index]['Story']['url']+'>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Video') {
                        $dialog.html('<div class="container"><embed src="http://www.youtube.com/v/'+stories[index]['Story'].video+'" type="application/x-shockwave-flash" width="590px" height="443" allowscriptaccess="always"></div>');
                    }
                    if (stories[index]['Story']['StoryType'].name == 'Text') {
                        $dialog.html('<div class="container"><span>'+stories[index]['Story'].story+'</span></div>');
                    }
                }

            }
        });
        console.log('buttons drawn');
        $dialog.dialog('open');
        // prevent the default action, e.g., following a link
        return false;
    });
</script>

<?php

function limit_words($str, $word_limit) {
    $words = null;
    $words = explode(" ",$str);

    if(sizeof($words) >= $word_limit) {
        $words = array_splice($words,0,$word_limit);
        $words[] = '...';
    }
    return implode(" ", $words);
}
?>


<?php $this->Html->script(array('libs/jquery.lazyload.min', 'libs/lite-youtube-min', 'libs/jquery.isotope.min', 'content'), array( 'inline' => false, 'once' => true )); ?>
<?php $this->Html->css(array('styles-youtube', 'styles-content'), null, array( 'inline' => false, 'once' => true )); ?>

<?php echo $this->element('timeline_static'); ?>
<!-- start of page content -->
<section class="entryMast">
    <h1 class="entryTitle <?php echo $entry['Category']['category'];?>"><?php echo $entry['Entry']['name']; ?></h1>
    <div class="catBarContainer">
        <ul class="catBar">
            <li class="category project"><a href="#" data-filter=".project">Projects</a></li>
            <li class="category person"><a href="#" data-filter=".person">People</a></li>
            <li class="category organization"><a href="#" data-filter=".organization">Organizations</a></li>
            <li class="category event"><a href="#" data-filter=".event">Events</a></li>
            <li class="editEntry"><a href="/entries/edit/<?php echo $entry['Entry']['slug']; ?>">Edit Entry</a></li>
            <div class="cf"></div>
        </ul>
    </div>
</section>
<section class="tagLists">
    <div class='' style='display:none;'>
        <ul>
            <li class="all"><input type="checkbox" data-filter="*" checked="checked" />All</li>
            <?php foreach($tags as $t): ?>
            <li class='<?php echo $t['category']; ?>'><input type='checkbox' data-filter='.<?php echo str_replace(' ', '-', $t['name']); ?>' /><?php echo $t['name']; ?></li>
            <?php endforeach; ?>
        </ul>
    </div>
</section>
<section class="mosaicBody">
    <ul class="mosaicContainer loading cf">
        <li class="dynamic <?php echo $entry['Category']['category']; ?>"><p><?php echo limit_words($entry['Entry']['description'], 120); ?></p></li>
    <?php foreach($connections as $c): ?>
        <li class="tile connection <?php echo $c['Entry']['Category']['category']; echo " " . implode(' ', str_replace(' ', '-', $c['tags'])); ?>">
            <div class='container'>
                <?php if($c['connection_display_type'] == 'image'): ?>
                <img src='<?php echo $c['connection_display']; ?>' />
                <?php else: ?>
                <p><?php echo limit_words($c['connection_display'], 80); ?></p>
                <?php endif; ?>
            </div>
            <div class='bottom-link'>
                <span><?php echo $c['Entry']['name']; ?></span>
                <a class='link-button' href='/entries/view/<?php echo $c['Entry']['slug']; ?>'><span class='triangle'></span></a>
                <div class='cf'></div>
            </div>
        </li>
    <?php endforeach; ?>
    <?php $i = 1; foreach($stories as $s): ?>
        <?php if(!empty($s['Story']['id'])): ?>

            <?php if($s['Story']['StoryType']['name'] == 'Text'): ?>
            <li class="tile story story-text">
                <div class='container'>
                    <p><?php echo limit_words($s['Story']['story'], 80); ?></p>
                </div>
                <div class='bottom-link' id='opener'
                     data-title='<?php echo $s['Story']['title']; ?>'
                     data-story='<?php echo $s['Story']['story']; ?>'
                     data-stories='<?php echo json_encode($stories); ?>'
                     data-index='<?php echo $i; ?>'>
                    <span><?php echo $s['Story']['title']; ?></span>
					<span class='story-type story-type-icon-text'></span>
				</div>
            </li>
            <?php elseif($s['Story']['StoryType']['name'] == 'Video'): ?>
            <li class="tile story story-video">
                <div class='container'>
                    <!-- 
                      4:3 aspect ratio
                    -->
                    <div class='lite' style='width:478px; height:359px' id="<?php echo $s['Story']['video']; ?>"></div>
                </div>
                <div class='bottom-link' id='opener'
                     data-title='<?php echo $s['Story']['title']; ?>'
                     data-story='<?php echo $s['Story']['story']; ?>'
                     data-stories='<?php echo json_encode($stories); ?>'
                     data-index='<?php echo $i; ?>'>
                    <span><?php echo $s['Story']['title']?></span>
                    <span class='story-type story-type-icon-video'></span>
                </div>
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
                <div class='bottom-link' id='opener'
                     data-title='<?php echo $s['Story']['title']; ?>'
                     data-story='<?php echo $s['Story']['story']; ?>'
                     data-stories='<?php echo json_encode($stories); ?>'
                     data-index='<?php echo $i; ?>'>
                    <span><?php echo $s['Story']['title']?></span>
                    <span class='story-type story-type-icon-image'></span>
                </div>
            </li>
            <?php endif; ?>
        <?php endif; ?>
    <?php $i++; endforeach; ?>
    </ul>
</section>

<section class="entryInfo" style="display: none;">
    <input type="hidden" class="entryName" value="<?php echo $entry['Entry']['name'];?>" />
    <input type="hidden" class="entryId" value="<?php echo $entry['Entry']['id']; ?>" />
    <input type="hidden" class="entryCategory" value="<?php echo $entry['Category']['category']; ?>" />
    <div class="entryDescription"><p><?php echo $entry['Entry']['description']; ?></p></div>
</section>
