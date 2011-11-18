<?php

$site = array(
    "title" => "People Behind the Pixels: History of Computer Graphics",
    "home_url" => "index.php",
    "about_page_name" => "About the Project",
    "about_page_url" => "about.php"
);

$page_name = basename($_SERVER["SCRIPT_NAME"]);
$page_name = preg_replace('/.php/', "", $page_name);

function include_custom_page_styles() {
    global $page_name;

    include_once("includes/page-$page_name-styles.php");
}

function include_custom_page_scripts() {
    global $page_name;

    include_once("includes/page-$page_name-scripts.php");
}
