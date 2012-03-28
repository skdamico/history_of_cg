<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>People Behind the Pixels</title>
  <link type="text/css" rel="stylesheet" media="screen" href="css/baseline.reset.css" />
  <link type='text/css' rel='stylesheet' media='screen' href='css/jquery-ui.css' />
  <link type="text/css" rel="stylesheet" media="screen" href="css/styles.css" />
  <link type="text/css" rel="stylesheet" media="screen" href="css/styles-home.css" />

    <?php
        echo $this->Html->script(array('libs/jquery', 'libs/jquery-ui', 'search',  'messages'), array('once' => true));
        echo $scripts_for_layout;
    ?>
</head>

<body id="homeWrapper" class="wrapper">
<div id="page">
  <header>
    <div class="topRight unitx2">
      <?php echo $this->element('top_menu'); ?>
    </div>
    <div id="homeBranding">
      <img src="img/logo.png" alt="People Behind the Pixels" />
    </div>
  </header>
  <div id="content">
    <div class='message' style='display: none;'></div>
    <?php echo $this->Session->flash(); ?>
    <?php echo $content_for_layout; ?>
  </div>
</body>
</html>
