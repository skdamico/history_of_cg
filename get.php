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

function get_location_by_id($table, $id) {
    $return = null;
   
    if($id != null && is_numeric($id)) {
        if($table == "organization" or $table == "event") {
            $query = "SELECT location.*, date.* FROM $table, location_date, location, date ".
                     "WHERE ($table.id = $id) AND ".
                     "(location_date.id = $table.location_date_id) AND ".
                     "(location_date.location_id = location.id) AND ".
                     "(location_date.date_id = date.id)";
            $result = mysql_query($query) or die(mysql_error());

            if(mysql_num_rows($result) != 0) {
                $loc_date_row = mysql_fetch_assoc($result);

                $return = array($loc_date_row);
            }
        }
        else if($table == "person" or $table == "project") {
            $query = "SELECT location.*, date.* FROM location_date ".
                     "LEFT JOIN location ON location_date.location_id = location.id ".
                     "LEFT JOIN date ON location_date.date_id = date.id ".
                     "LEFT JOIN location_date_$table ON location_date_$table.location_date_id = location_date.id ".
                     "WHERE location_date_$table." . $table . "_id = $id";
            $result = mysql_query($query) or die(mysql_error());

            if(mysql_num_rows($result) != 0) {
                $tmp = array();
                while($row = mysql_fetch_assoc($result)) {
                    $tmp[] = $row;
                }
                $return = $tmp;
            }
        }
    }
    return $return;
}

function get_location_by_name($table, $name) {
    $return = null;

    if($name != null) {
        if($table == "organization" or $table == "event") {
            $query = "SELECT location.*, date.* FROM $table, location_date, location, date ".
                     "WHERE ($table.name = '$name') AND ".
                     "(location_date.id = $table.location_date_id) AND ".
                     "(location_date.location_id = location.id) AND ".
                     "(location_date.date_id = date.id)";
            $result = mysql_query($query) or die(mysql_error());

            if(mysql_num_rows($result) != 0) {
                $loc_date_row = mysql_fetch_assoc($result);

                $return = array($loc_date_row);
            }
        }
        else if($table == "person" or $table == "project") {
            $query = "SELECT location.*, date.* FROM location_date ".
                     "LEFT JOIN location ON location_date.location_id = location.id ".
                     "LEFT JOIN date ON location_date.date_id = date.id ".
                     "LEFT JOIN location_date_$table ON location_date_$table.location_date_id = location_date.id ".
                     "LEFT JOIN $table ON $table.id = location_date_$table.".$table."_id ".
                     "WHERE $table.name = '$name'";
            $result = mysql_query($query) or die(mysql_error());

            if(mysql_num_rows($result) != 0) {
                $tmp = array();
                while($row = mysql_fetch_assoc($result)) {
                    $tmp[] = $row;
                }
                $return = $tmp;
            }
        }
    }
    return $return;
}

function get_location($id) {
    $return = null;

    if($id != null && is_numeric($id)) {
        $query = "SELECT location.*, date.* FROM location_date ".
                 "LEFT JOIN location ON location_date.location_id = location.id ".
                 "LEFT JOIN date ON location_date.date_id = date.id ".
                 "WHERE location_date.id = $id";
        $result = mysql_query($query) or die(mysql_error());

        if(mysql_num_rows($result) != 0) {
            $row = mysql_fetch_assoc($result);
            $return = array($row);
        }
    }
    return $return;
}


function get_association($assoc, $to, $what, $table_name) {
    $query = "SELECT $assoc.id, $assoc.name FROM $table_name ".
             "LEFT JOIN $assoc ON $assoc.id = $table_name.". $assoc ."_id ".
             "WHERE $table_name.".$to."_id = $what";

    $result = mysql_query($query) or die(mysql_error());

    if(mysql_num_rows($result) != 0) {
        $tmp = array();
        
        while($r = mysql_fetch_assoc($result)) {
            $tmp[] = $r;
        }

        return $tmp;
    }
    else {
        return null;
    }
}

function get_tags($id, $category) {
    $query = "SELECT tags.id, tags.name FROM tags ".
             "LEFT JOIN ".$category."_tags ON ".$category."_tags.tags_id = tags.id ".
             "WHERE ".$category."_tags.".$category."_id = $id";
    $result = mysql_query($query) or die(mysql_error());

    $tmp = array();
    while($r = mysql_fetch_assoc($result)) {
        $tmp[] = $r;
    }

    return $tmp;
}

mysql_connect($db["host"], $db["user"], $db["pass"]) or die ("Error: " . mysql_error());
mysql_select_db($db["db"]);

$action = $_GET["action"];
$t = $_GET["t"];
$q = $_GET["q"];

if($t != null and $t != '' and $q != null and $q != '') {
    $arr = array();

    if($action == null || $action == "all") {
        $query = "SELECT * FROM $t WHERE id = $q";
        $result = mysql_query($query) or die(mysql_error());

        if(mysql_num_rows($result) != 0) {
            $main_row = mysql_fetch_assoc($result);

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
            $arr["location"] = get_location_by_id($t, $q);

            // get narratives
            $query = "SELECT narrative.id, narrative.narrative, narrative.person_id as author_id, person.name as author FROM narrative ".
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
            $tmp = array("person" => null, "project" => null, "organization" => null, "event" => null);

            if($t == "person") {
                $tmp["organization"] = get_association("organization", $t, $q, "organization_person");
                $tmp["project"] = get_association("project", $t, $q, "person_project");
            }
            else if($t == "project") {
                $tmp["person"] = get_association("person", $t, $q, "person_project");
                $tmp["organization"] = get_association("organization", $t, $q, "organization_project");
                $tmp["event"] = get_association("event", $t, $q, "event_project");
            }
            else if($t == "organization") {
                $tmp["person"] = get_association("person", $t, $q, "organization_person");
                $tmp["project"] = get_association("project", $t, $q, "organization_project");
                $tmp["event"] = get_association("event", $t, $q, "event_organization");
            }
            else if($t == "event") {
                $tmp["person"] = get_association("person", $t, $q, "event_person");
                $tmp["project"] = get_association("project", $t, $q, "event_project");
                $tmp["organization"] = get_association("organization", $t, $q, "event_organization");
            }

            $arr["associations"] = $tmp;

            // get tags
            $arr["tags"] = get_tags($q, $t);
        }
    }
    else if($action != null && $action == "location") {
        if(is_numeric($q)) {
            $arr["location"] = get_location_by_id($t, $q);
        }
        else {
            $arr["location"] = get_location_by_name($t, $q);
        }
    }

    $json_response = json_encode($arr);

    echo $json_response;
}
