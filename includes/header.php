<?php include_once("functions.php"); ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo $site["title"]; ?></title>

    <link type="text/css" rel="stylesheet" media="screen" href="css/baseline.reset.css" />
    <link type="text/css" rel="stylesheet" media="screen" href="css/styles.css" />
    
    <?php include_custom_page_styles(); ?>
</head>
<body onunload="" class="<?php echo $page_name."Wrapper"; ?> wrapper">
    <div id="page">
        
        <header id="masthead">
            <div class="branding unitx2">
                <a href="<?php echo $site["home_url"]; ?>"><img src="images/logoSm.png" alt="People Behind the Pixels" /></a>
            </div>
            <div class="topRight unitx2">
                <a href="<?php echo $site["about_page_url"]; ?>"><?php echo $site["about_page_name"]; ?></a>
                <a href="entry.php">Add an Entry</a>
                <form id="searchForm">
                    <fieldset class="search unitx2">
                        <input type="text" class="searchBox" placeholder="Start searching!" />
                        <button class="searchBtn" title="Search">Search</button>
                    </fieldset>
                </form>
            </div>
            <div class="cf"></div>
        </header>
