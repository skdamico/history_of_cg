<?php include_once("functions.php"); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo $site["title"]; ?></title>
	<link type="text/css" rel="stylesheet" media="screen" href="css/baseline.reset.css">
	<link type="text/css" rel="stylesheet" media="screen" href="css/styles.css">

    <?php include_custom_page_styles(); ?>
</head>

<body id="homeWrapper" class="wrapper">
<div id="page">
	<header>
		<div class="aboutProj">
			<a href="<?php echo $site["about_page_url"]; ?>" target="new"><?php echo $site["about_page_name"]; ?></a>
		</div>
		<div id="homeBranding">
			<img src="images/logo.png" alt="People Behind the Pixels" />
		</div>
	</header>
	<div id="homeSearch">
		<form id="searchForm">
			<fieldset class="search">
				<input type="text" class="searchBox" placeholder="Start searching!" />
				<button class="searchBtn" title="Search">Search</button>
			</fieldset>
		</form>
	</div>
