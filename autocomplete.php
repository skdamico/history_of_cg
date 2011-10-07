<?php 

$dbuser = "root";
$dbpass = "historyofcg";
$dbhost = "localhost";
$dbname = "historyofcg";

$table = $_GET["t"];
$col   = $_GET["c"];
$term  = $_GET["term"];

mysql_connect($dbhost, $dbuser, $dbpass) or die (mysql_error());
mysql_select_db($dbname);

if($table == "project" || $table == "person" || $table == "organization") {
    $query = sprintf("SELECT %s FROM $table WHERE %s ",
                   mysql_real_escape_string($col),
                   mysql_real_escape_string($col));
    $query .= sprintf("LIKE '%s%%'",
                  mysql_real_escape_string($term));
    $result = mysql_query($query) or die(mysql_error());

    echo ("[");

    $count = 0;
    while($row = mysql_fetch_array($result)) {
       if($count != 0) {
         echo (", ");
       }
       echo ("\"" . $row["name"] . "\"");

       $count++;
    }
    echo ("]");
    }

?>
