<?php
/******** includes ***********/
include_once("setup/conf.php");


/******** functions **********/
include_once("includes/get_functions.php");

mysql_connect($db["host"], $db["user"], $db["pass"]) or die ("Error: " . mysql_error());
mysql_select_db($db["db"]);

$action = $_GET["action"];
$t = $_GET["t"];
$q = $_GET["q"];

if($t != null and $t != '' and $q != null and $q != '') {
    $arr = array();

    if($action == null || $action == "all") {
        $main_row = get_main($q, $t);

        if($main_row != null) {

            if($t == "person") {
                $birth_loc = get_location($main_row["birth_location_date_id"]);
                if($birth_loc != null) {
                    $main_row["birth_location_date"] = $birth_loc[0];
                }

                if($main_row["deceased"]) {
                    $death_loc = get_location($main_row["death_location_date_id"]);
                    if($death_loc != null) {
                        $main_row["death_location_date"] = $death_loc[0];
                    }
                }
            }

            $arr["main"] = $main_row;
            
            // get location
            $arr["location"] = get_location_by_relation_id($t, $q);

            // get narratives
            $arr["narratives"] = get_narratives($main_row['id'], $t);

            // get sources
            $arr["sources"] = get_sources($main_row['id'], $t);

            // get associations
            $arr["associations"] = get_all_associations($q, $t);

            // get tags
            $arr["tags"] = get_tags($q, $t);
        }
    }
    else if($action != null && $action == "location") {
        if(is_numeric($q)) {
            $arr["location"] = get_location_by_relation_id($t, $q);
        }
        else {
            $arr["location"] = get_location_by_relation_name($t, $q);
        }
    }

    $json_response = json_encode($arr);

    echo $json_response;

    mysql_close();
}
