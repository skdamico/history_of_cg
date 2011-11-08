<?php 

$dbuser = "root";
$dbpass = "historyofcg";
$dbhost = "localhost";
$dbname = "historyofcg";

$table = $_GET["t"];
$q = $_GET["q"];

mysql_connect($dbhost, $dbuser, $dbpass) or die (mysql_error());
mysql_select_db($dbname);
if($table != '') {
    $arr = array();
    $result = '';

    if($table == "organization") {
        $col = "";
        if(is_numeric($q)) {
            $col = "org.id";
        }
        else {
            $col = "org.name";
        }
        $query = sprintf("SELECT loc.* FROM organization as org, location as loc WHERE $col = '%s' AND (org.location_id = loc.id)", mysql_real_escape_string($q));
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
