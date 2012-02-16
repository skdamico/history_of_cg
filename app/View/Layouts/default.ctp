<!DOCTYPE html>
<html lang="en">
<head>
    <?php echo $this->Html->charset(); ?>
    <title>People Behind the Pixels | <?php echo $title_for_layout; ?></title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <?php 
        echo $this->Html->css('styles');

        echo $this->Html->script(array('libs/jquery', 'messages'), array('once' => true));
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
    <div class="topRight unitx2">
      <?php echo $this->element('top_menu'); ?>
      <form id="searchForm" class="search unitx2 cf">
        <input type="text" class="searchBox" placeholder="Start searching!" />
        <button class="searchBtn" title="Search">Search</button>
      </form>
    </div>
    <div class="cf"></div>
  </header>
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
