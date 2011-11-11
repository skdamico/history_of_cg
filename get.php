<?php
/******** includes ***********/
include_once("setup/conf.php");


/******** functions **********/

function select_location($city, $state, $country) {
    $query = "SELECT id FROM location WHERE ";

    if($city != null && $city != '') {
        $query .= "city = '$city' AND ";
    }
    if($state != null && $state != '') {
        $query .= "state = '$state' AND ";
    }
    if($country != null && $country != '') {
        $query .= "country = '$country' AND ";
    }
    $query = rtrim($query, " AND ");

    $r = mysql_query($query) or error(mysql_error());
    
    if(mysql_num_rows($r) == 0)
        return 0;
    else
        return mysql_result($r, 0, 'id');
}

mysql_connect($db["host"], $db["user"], $db["pass"]) or die ("Error: " . mysql_error());
mysql_select_db($db["db"]);

$t = $_GET["t"];
$q = $_GET["q"];


if($t != null and $t != '' and $q != null and $q != '') {
    $arr = array();

    $query = "SELECT * FROM $t WHERE id = $q";
    $result = mysql_query($query) or die(mysql_error());

    if(mysql_num_rows($result) != 0) {
        $main_row = mysql_fetch_assoc($result);

        $arr["main"] = $main_row;


        // get location
        if($t == "organization" or $t == "event") {
            $query = "SELECT location.*, date.* FROM location_date, location, date ".
                     "WHERE (location_date.id = ". $main_row['location_date_id']. ") AND ".
                     "(location_date.location_id = location.id) AND ".
                     "(location_date.date_id = date.id)";
            $result = mysql_query($query) or die(mysql_error());

            if(mysql_num_rows($result) != 0) {
                $loc_date_row = mysql_fetch_assoc($result);

                $arr["location"] = $loc_date_row;
            }
        }
        else if($t == "person" or $t == "project") {
            $query = "SELECT location.*, date.* FROM location_date ".
                     "LEFT JOIN location ON location_date.location_id = location.id ".
                     "LEFT JOIN date ON location_date.date_id = date.id ".
                     "LEFT JOIN location_date_$t ON location_date_$t.location_date_id = location_date.id ".
                     "WHERE location_date_$t." . $t . "_id = $q";
            $result = mysql_query($query) or die(mysql_error());

            $tmp = array();
            while($row = mysql_fetch_assoc($result)) {
                $tmp[] = $row;
            }

            $arr["location"] = $tmp;
        }

        // get narratives
        $query = "SELECT narrative.id, narrative.narrative, person.name FROM narrative ".
                 "LEFT JOIN person ON person.id = narrative.person_id ".
                 "LEFT JOIN narrative_$t as n ON narrative.id = n.narrative_id ".
                 "WHERE n.". $t ."_id = ". $main_row['id'];
        $result = mysql_query($query) or die(mysql_error());

        if(mysql_num_rows($result) != 0) {
            $tmp = array();
            
            while($row = mysql_fetch_assoc($result)) {
                // get any citations
                $query = "SELECT citation FROM citations WHERE narrative_id = ".$row['id'];
                $c = mysql_query($query) or die(mysql_error());
                
                $c_arr = array();
                while($c_row = mysql_fetch_assoc($c)) {
                    $c_arr[] = $c_row;
                }
                $row["citations"] = $c_arr;

                $tmp[] = $row;
            }

            $arr["narratives"] = $tmp;
        }

        // get associations
        
        // get tags
    }

    $json_response = json_encode($arr);

    echo $json_response;
}
