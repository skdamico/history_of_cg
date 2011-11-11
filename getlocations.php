<?php 
include_once("setup/conf.php");

$table = $_GET["t"];
$q = $_GET["q"];

mysql_connect($db["host"], $db["user"], $db["pass"]) or die (mysql_error());
mysql_select_db($db["db"]);
if($table != '' and $q != '') {
    $arr = array();
    $result = '';

    if($table == "organization") {

        $query = sprintf("SELECT location.*, date.* FROM organization, location_date, location, date ");
        if(is_numeric($q)) {
            $query .= sprintf("WHERE (organization.id = %d) AND ", $q);
        }
        else {
            $query .= sprintf("WHERE (organization.name = '%s') AND ", mysql_real_escape_string($q));
        }
        $query .= sprintf("(organization.location_date_id = location_date.id) AND " .
                          "(location_date.location_id = location.id) AND " .
                          "(location_date.date_id = date.id)");
        $result = mysql_query($query) or die(mysql_error());
    }

    $count = 0;
    while($obj = mysql_fetch_object($result)) {
        $arr[] = $obj;
    }

    $json_response = json_encode($arr);

    echo $json_response;
}
