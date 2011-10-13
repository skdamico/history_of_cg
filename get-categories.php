<?php 

$dbuser = "root";
$dbpass = "historyofcg";
$dbhost = "localhost";
$dbname = "historyofcg";

mysql_connect($dbhost, $dbuser, $dbpass) or die (mysql_error());
mysql_select_db($dbname);

$query = "SELECT id, main FROM categories";

$result = mysql_query($query) or die(mysql_error());

$count = 0;
echo "{ \"categories\": [";
while($row = mysql_fetch_array($result)) {
   $count++;

   echo "{ \"id\": " . $row["id"] . ", ";
   echo "\"main\": \"" . $row["main"] . "\"";
  
   if($count == mysql_num_rows($result)) {
     echo " }";
   }
   else {
     echo " },";
   }
}
echo "] }";

?>
