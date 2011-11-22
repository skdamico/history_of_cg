<?php
include_once("setup/conf.php"); 
include_once("includes/get_functions.php");

// vars

$category = isset($_GET["c"]) ? $_GET["c"] : null;
$q = isset($_GET["q"]) ? $_GET["q"] : null;
$for = isset($_GET["for"]) ? $_GET["for"] : null;

$data = array();

// data
if($category && $q && $for) {
    mysql_connect($db["host"], $db["user"], $db["pass"]) or die ("Error: " . mysql_error());
    mysql_select_db($db["db"]);

    if($q == "all") {
        // fetch all associations data
        $data["associations"] = get_all_associations($for, $category, true); 

        // fetch all narratives
        $data['narratives'] = get_narratives($for, $category);
    }
    
    mysql_close();

    $json = json_encode($data);
    echo $json;
}
