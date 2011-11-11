<?php 

include_once("setup/conf.php");

$table = $_GET["t"];
$query = $_GET["q"];

mysql_connect($db["host"], $db["user"], $db["pass"]) or die (mysql_error());
mysql_select_db($db["db"]);

if($table != '') {
    $arr = array();
    $result = '';

    if($table == "project" || $table == "person" || $table == "organization" || $table == "event") {
        $query = sprintf("SELECT id, name FROM $table WHERE name LIKE '%%%s%%' LIMIT 10", mysql_real_escape_string($query));
        $result = mysql_query($query) or die(mysql_error());
    }
    else if($table == "tags") {
        $query = sprintf("SELECT id, name FROM tags WHERE approved = 1 and name LIKE '%%%s%%' LIMIT 10", mysql_real_escape_string($query));
        $result = mysql_query($query) or die(mysql_error()); 
    }
    else if($table == "all") {
        $query = sprintf("SELECT id, name, 'person' FROM person WHERE name LIKE '%%%s%%' LIMIT 10 ".
                         "UNION ".
                         "SELECT id, name, 'project' FROM project WHERE name LIKE '%%%s%%' LIMIT 10 ".
                         "UNION ".
                         "SELECT id, name, 'organization' FROM organization WHERE name LIKE '%%%s%%' LIMIT 10 ".
                         "UNION ".
                         "SELECT id, name, 'event' FROM event WHERE name LIKE '%%%s%%' LIMIT 10",
                         mysql_real_escape_string($query),
                         mysql_real_escape_string($query),
                         mysql_real_escape_string($query),
                         mysql_real_escape_string($query));
        $result = mysql_query($query) or die (mysql_error());
    }

    $count = 0;
    while($row = mysql_fetch_assoc($result)) {
        if($table == "all") {
            $arr[] = array('id' => $row["id"], 'name' => $row["name"], 'category' => $row["person"]);
        }
        else {
            $arr[] = array('id' => $row["id"], 'name' => $row["name"]);
        }
    }

    $json_response = json_encode($arr);

    echo $json_response;
}
