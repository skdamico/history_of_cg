<!DOCTYPE html>
<html lang="en">
<head>
    <?php echo $this->Html->charset(); ?>
    <title>People Behind the Pixels | <?php echo $title_for_layout; ?></title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <?php 
        echo $this->Html->css(array('jquery-ui', 'styles'));

        echo $this->Html->script(array('libs/jquery', 'libs/jquery-ui', 'search', 'messages', 'libs/URI.min'), array('once' => true));
        echo $scripts_for_layout;
    ?>
</head>
<body class="wrapper">
<div id="page">
  <header id="masthead">
    <div class="branding unitx2">
        <?php echo $this->Html->image('logoSm.png', array(
            'url' => array('controller' => 'home', 'action' => 'index'),
            'alt' => 'People Behind the Pixels')); ?>
    </div>
    <div class="topRight internal">
      <?php echo $this->element('top_menu'); ?>
    </div>
    <div class="topSearch">
      <form id="searchForm" class="search unitx2 cf">
        <input type="text" class="searchBox" placeholder="Start searching!" />
        <button class="searchBtn" title="Search">Search</button>
      </form>
    </div>
    <div class="cf"></div>
  </header>
  <div class="timeline">
      <img src="../../img/timeline/timeline.png" />
  </div>
  <div id='content'>
    <div class='message' style='display: none;'></div>
    <?php echo $this->Session->flash(); ?>
    <?php echo $content_for_layout; ?>
  </div>
  <footer>
  </footer>
</div>
</body>
</html>
