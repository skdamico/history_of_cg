<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>People Behind the Pixels | Home</title>
  <link type="text/css" rel="stylesheet" media="screen" href="css/baseline.reset.css">
  <link type="text/css" rel="stylesheet" media="screen" href="css/styles.css">
  <link type="text/css" rel="stylesheet" media="screen" href="css/styles-home.css" />
</head>

<body id="homeWrapper" class="wrapper">
<div id="page">
  <header>
    <div class="topRight unitx2">
      <?php echo $this->element('top_menu'); ?>
    </div>
    <div id="homeBranding">
      <img src="images/logo.png" alt="People Behind the Pixels" />
    </div>
  </header>
  <div id="content">
    <?php echo $this->Session->flash(); ?>
    <?php echo $content_for_layout; ?>
  </div>
</body>
</html>
