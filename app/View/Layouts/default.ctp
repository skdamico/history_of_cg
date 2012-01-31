<!DOCTYPE html>
<html lang="en">
<head>
    <?php echo $this->Html->charset(); ?>
    <title>People Behind the Pixels | <?php echo $title_for_layout; ?></title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <?php 
        echo $this->Html->meta('icon');
        echo $this->Html->css('styles'); 

        echo $scripts_for_layout;
    ?>
</head>
<body class="wrapper">
<div id="page">
  <header id="masthead">
    <div class="branding unitx2">
       <a href="/"><img src="images/logoSm.png" alt="People Behind the Pixels" /></a>
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
    <?php echo $this->Session->flash(); ?>
    <?php echo $content_for_layout; ?>
  </div>
  <footer>
  </footer>
</div>
</body>
</html>
