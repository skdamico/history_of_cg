<?php include_once("functions.php"); ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo $site["title"]; ?></title>

    <link type="text/css" rel="stylesheet" media="screen" href="css/baseline.reset.css" />
    <link type="text/css" rel="stylesheet" media="screen" href="css/baseline.type.css" />
    <link type="text/css" rel="stylesheet" media="screen" href="css/baseline.grid.css" />
    <link type="text/css" rel="stylesheet" href="css/styles.css" />
    
    <?php include_custom_page_styles(); ?>
</head>
<body class="wrapper">
    <div id="page">
        
        <header id="masthead">
            <div class="branding unitx2">
                <a href="<?php echo $site["home_url"]; ?>"><img src="images/logoSm.png" alt="People Behind the Pixels" /></a>
            </div>
            <div class="topRight unitx2">
                <a href="<?php echo $site["about_page_url"]; ?>" target="_new"><?php echo $site["about_page_name"]; ?></a>
                <form id="searchBoxUniversal">
                    <fieldset class="search unitx2">
                        <input type="text" class="searchBox" placeholder="Start searching!" />
                        <button class="searchBtn" title="Search">Search</button>
                    </fieldset>
                </form>
            </div>
            <div class="cf"></div>
        </header>
