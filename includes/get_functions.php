<?php

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

function select_date($year, $month, $day, $end_year, $end_month, $end_day) {
    $query = "SELECT id FROM date WHERE ";

    if(is_numeric($year)) {
        $query .= "start_year = $year AND ";
    }
    else {
        $query .= "start_year IS NULL AND ";
    }
    if(is_numeric($month)) {
        $query .= "start_month = $month AND ";
    }
    else {
        $query .= "start_month IS NULL AND ";
    }
    if(is_numeric($day)) {
        $query .= "start_day = $day AND ";
    }
    else {
        $query .= "start_day IS NULL AND ";
    }
    if(is_numeric($end_year)) {
        $query .= "end_year = $end_year AND ";
    }
    else {
        $query .= "end_year IS NULL AND ";
    }
    if(is_numeric($end_month)) {
        $query .= "end_month = $end_month AND ";
    }
    else {
        $query .= "end_month IS NULL AND ";
    }
    if(is_numeric($end_day)) {
        $query .= "end_day = $end_day AND ";
    }
    else {
        $query .= "end_day IS NULL AND ";
    }
    $query = rtrim($query, " AND ");

    $r = mysql_query($query) or error(mysql_error());

    if(mysql_num_rows($r) == 0)
        return 0;
    else
        return mysql_result($r, 0, 'id');
}

function select_loc_date($loc_id, $date_id) {
    $query = "SELECT id FROM location_date WHERE ";

    if($loc_id != null && $loc_id != '') {
        $query .= "location_id = $loc_id AND ";
    }
    if($date_id != null && $date_id != '') {
        $query .= "date_id = $date_id AND "; 
    }

    $query = rtrim($query, " AND ");

    $r = mysql_query($query) or error(mysql_error());

    if(mysql_num_rows($r) == 0)
        return 0;
    else 
        return mysql_result($r, 0, 'id');
}

function get_location_by_relation_id($table, $id) {
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

function get_location_by_relation_name($table, $name) {
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
                     "WHERE BINARY $table.name = '$name'";
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

function get_all_associations($id, $category) {
    if($id != null && $category != null) {
        $tmp = array("person" => null, "project" => null, "organization" => null, "event" => null);

        if($category == "person") {
            $tmp["organization"] = get_association("organization", $category, $id, "organization_person");
            $tmp["project"] = get_association("project", $category, $id, "person_project");
        }
        else if($category == "project") {
            $tmp["person"] = get_association("person", $category, $id, "person_project");
            $tmp["organization"] = get_association("organization", $category, $id, "organization_project");
            $tmp["event"] = get_association("event", $category, $id, "event_project");
        }
        else if($category == "organization") {
            $tmp["person"] = get_association("person", $category, $id, "organization_person");
            $tmp["project"] = get_association("project", $category, $id, "organization_project");
            $tmp["event"] = get_association("event", $category, $id, "event_organization");
        }
        else if($category == "event") {
            $tmp["person"] = get_association("person", $category, $id, "event_person");
            $tmp["project"] = get_association("project", $category, $id, "event_project");
            $tmp["organization"] = get_association("organization", $category, $id, "event_organization");
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

function get_narratives($id, $category) {
    if($id != null && $category != null) {
        $query = "SELECT narrative.id, narrative.narrative, narrative.person_id as author_id, person.name as author FROM narrative ".
                 "LEFT JOIN person ON person.id = narrative.person_id ".
                 "LEFT JOIN narrative_$category as n ON narrative.id = n.narrative_id ".
                 "WHERE n.". $category ."_id = ". $id;
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

            return $tmp;
        }
    }
    else {
        return null;
    }
}

function get_main($q, $category) {
    $query = null;
    if($q != null && is_numeric($q)) {
        $query = "SELECT * FROM $category WHERE id = $q";
    }
    else if($q != null && $q != '') {
        $query = sprintf("SELECT * FROM $category WHERE BINARY name = '%s'",
                        mysql_real_escape_string($q));
    }
    
    if($query != null) {
        $result = mysql_query($query) or die(mysql_error());
        if(mysql_num_rows($result) != 0) {
            $row = mysql_fetch_assoc($result);

            return $row;
        }
    }
    else {
        return null;
    }
}
