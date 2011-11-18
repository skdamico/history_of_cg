<?php
error_reporting(E_ALL);

// Globals
$page = "";
$page_name = null;
$args = array();

$url = explode('/', trim($_SERVER["REQUEST_URI"], '/'));
array_shift($url);

// get page name
$page = !empty($url[0]) ? $url[0] . '.php' : "index.php";
echo $page;

$page_name = preg_replace('/.php/', '', $page);
echo $page_name;

if($page != "index.php") {
    // append all args to GET
    for($i=1; $i<sizeof($url); $i++) {
        echo "arg$i: " . $url[$i];
        $args[] = !empty($url[$i]) ? $url[$i] : null;
    }
    // show page
    include_once($page);
}
else {
    // home stuff
    echo "Im index.php $page";
}
