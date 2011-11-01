<?php 

$dbuser = "root";
$dbpass = "historyofcg";
$dbhost = "localhost";
$dbname = "historyofcg";

$table = $_GET["t"];
$query = $_GET["q"];

mysql_connect($dbhost, $dbuser, $dbpass) or die (mysql_error());
mysql_select_db($dbname);
if($table != '') {
    $arr = array();
    $result = '';

    if($table == "project" || $table == "person" || $table == "organization") {
        $query = sprintf("SELECT id, name FROM $table WHERE name LIKE '%%%s%%' LIMIT 10", mysql_real_escape_string($query));
        $result = mysql_query($query) or die(mysql_error());
    }
    else if($table == "tags") {
        $query = sprintf("SELECT id, name FROM tags WHERE approved = 1 and name LIKE '%%%s%%' LIMIT 10", mysql_real_escape_string($query));
        $result = mysql_query($query) or die(mysql_error()); 
    }

    $count = 0;
    while($obj = mysql_fetch_object($result)) {
        $arr[] = $obj;
    }

    $json_response = json_encode($arr);

    echo $json_response;
}
?>
