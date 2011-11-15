<?php
    include_once("stripmagicquotes.php");
    
    include_once("setup/conf.php");
    include_once("get.php");

    /*
     *  Globals
     */
    $category = $_POST["categories"];
    $name = trim($_POST["name"]);
    $name_id = $_POST["name-id"];
    $description = $_POST["description"];
    $updating = false;
    
    /*
     *  Help routines
     */

    function error($e) {
        // rollback transaction
        mysql_query("ROLLBACK");
        
        die($e);
    }

    // use this for quick inserts of content not of the primary category type
    function secondary_entry_insert($secondary, $primary, $primary_id, $table_name) {
        global $updating;

        $arr = explode(",", $_POST[$secondary]);

        $arr_in_db = array_filter($arr, "is_numeric");
        $arr_insert = array_diff($arr, $arr_in_db);

        $tables = explode("_", $table_name);

        // Delete all references in relational table before inserts
        if($updating) {
            $query = "DELETE FROM $table_name WHERE {$primary}_id = $primary_id";
            mysql_query($query) or error(mysql_error());
        }

        // insert new secondary types and add to primary
        if(count($arr_insert) > 0) {
            foreach($arr_insert as $p) {
                $p = preg_replace("/(^\'|\'\z)/", "", $p);
                $p = trim($p);
                
                //test if in db
                if($p != "") { 
                    $result = null;
                    if($secondary != "tags") {
                        $result = mysql_query(sprintf("SELECT id FROM $secondary WHERE BINARY name = '%s'",mysql_real_escape_string($p)));
                    }
                    else {
                        $result = mysql_query(sprintf("SELECT id FROM $secondary WHERE BINARY name = '%s' AND category = '%s'",mysql_real_escape_string($p), $primary));
                    }
                    
                    // if not in db add
                    $i = "";
                    if(mysql_num_rows($result) == 0) {
                        if($secondary != "tags") {
                            $query = sprintf("INSERT INTO $secondary (name) VALUES ('%s')", mysql_real_escape_string($p));
                        }
                        else {
                            $query = sprintf("INSERT INTO $secondary (name, approved, category) VALUES ('%s', 0, '%s')", mysql_real_escape_string($p), $primary);
                        }
                        mysql_query($query) or error(mysql_error());
                        $i = mysql_insert_id();
                    }
                    else {
                        $i = mysql_result($result, 0, "id");
                    }

                    // add to relational table
                    $query = "INSERT INTO $table_name (". $tables[0] ."_id, ". $tables[1] ."_id) VALUES (";
                    if($secondary == $tables[0]) {
                        $query .= "$i, $primary_id)";
                    }
                    else {
                        $query .= "$primary_id, $i)";
                    }
                    mysql_query($query) or error(mysql_error());
                }
            }
        }
        // add existing to relational table
        foreach($arr_in_db as $p) {
            $query = "INSERT INTO $table_name (". $tables[0] ."_id, ". $tables[1] ."_id) VALUES (";
            if($secondary == $tables[0]) {
                $query .= "$p, $primary_id)";
            }
            else {
                $query .= "$primary_id, $p)";
            }
            mysql_query($query) or error(mysql_error());
        }
    }


    function insert_location_dates() {
        $loc_date_id = array();
        for ($i=0; $i<sizeof($_POST["country"]); $i++) {
            $loc_date_id[] = insert_location_date($i, null);
        }
        return $loc_date_id;
    }

    function insert_location_date($i, $prefix) {
        if(!$prefix) {
            $prefix = '';
        }

        $city = null;
        $state = null;
        $country = null;

        if(!is_numeric($i)) {
            $city = $_POST[$prefix."city"];
            $state = $_POST[$prefix."state"];
            $country = $_POST[$prefix."country"];
        }
        else {
            $city = $_POST[$prefix."city"][$i];
            $state = $_POST[$prefix."state"][$i];
            $country = $_POST[$prefix."country"][$i];
        }

        if($country != '' && $country != null) {

            // check for location in the db
            $loc_id = select_location($city, $state, $country);

            if($loc_id == 0) {
                //geocode location
                $loc_str = '';
                if($city != null && $city != '') {
                    $loc_str .= $city . ', ';
                }
                if($state != null && $state != '') {
                    $loc_str .= $state . ', ';
                }
                $loc_str .= $country;

                $result = file_get_contents("http://tinygeocoder.com/create-api.php?q=$loc_str");

                $lat = "0.000000";
                $lon = "0.000000";
                if($result != null) {
                    $result_arr = explode(",", $result);
                    $lat = $result_arr[0];
                    $lon = $result_arr[1];
                }
                // insert location
                $query = sprintf("INSERT INTO location (city, state, country, latitude, longitude) ".
                                 "VALUES ('%s', '%s', '%s', %.6f, %.6f)",
                                 mysql_real_escape_string($city),
                                 $state,
                                 $country,
                                 $lat,
                                 $lon);
                mysql_query($query) or error (mysql_error());
                $loc_id = mysql_insert_id();
            }
            // insert date
            // test for date range
            $query = "";

            if($prefix == '')
                $prefix = 'start-';

            $year = null;
            $month = null;
            $day = null;
            $end_date_option = null;

            if(!is_numeric($i)) {
                $year = $_POST[$prefix."year"];
                $month = $_POST[$prefix."month"];
                $day = $_POST[$prefix."day"];
                $end_date_option = $_POST["end-date-option"];
            }
            else {
                $year = $_POST[$prefix."year"][$i];
                $month = $_POST[$prefix."month"][$i];
                $day = $_POST[$prefix."day"][$i];
                $end_date_option = $_POST["end-date-option"][$i];
            }


            # bad fix for event end date problem.
            if(($end_date_option != null && $end_date_option == "end-date") || $_POST["categories"] == "event") {
                if($prefix == "start-")
                    $prefix = 'end-';

                $end_year = null;
                $end_month = null;
                $end_day = null;

                if(!is_numeric($i)) {
                    $end_year = $_POST[$prefix."year"];
                    $end_month = $_POST[$prefix."month"];
                    $end_day = $_POST[$prefix."day"];
                }
                else {
                    $end_year = $_POST[$prefix."year"][$i];
                    $end_month = $_POST[$prefix."month"][$i];
                    $end_day = $_POST[$prefix."day"][$i];
                }
                $date_id = select_date($year, $month, $day, $end_year, $end_month, $end_day);

                if($date_id == 0) {
                    $query = sprintf("INSERT INTO date (start_year, start_month, start_day, end_year, end_month, end_day, is_end_date) ".
                                     "VALUES (%d,%d,%d,%d,%d,%d,%d)",
                                  $year,
                                  $month,
                                  $day,
                                  $end_year,
                                  $end_month,
                                  $end_day,
                                  1);
                    mysql_query($query) or error(mysql_error());
                    $date_id = mysql_insert_id();
                }
            }
            else {
                $date_id = select_date($year, $month, $day);

                if($date_id == 0) {
                    $query = sprintf("INSERT INTO date (start_year, start_month, start_day) ".
                                     "VALUES (%d,%d,%d)",
                                     $year,
                                     $month,
                                     $day);
                    mysql_query($query) or error(mysql_error());
                    $date_id = mysql_insert_id();
                }
            }

            $loc_date = select_loc_date($loc_id, $date_id);

            if($loc_date == 0) {
                // insert location/date pair
                $query = sprintf("INSERT INTO location_date (location_id, date_id) VALUES ($loc_id, $date_id)");
                mysql_query($query) or error(mysql_error());
            
                $loc_date_id = mysql_insert_id();
                return $loc_date_id;
            }
            else {
                return $loc_date;
            }
        }
        else {
            return null;
        }
    }

    function insert_citations($narrative_id, $index) {
        $citation = $_POST["citations"][$index];
        $citation = trim($citation);
        if($citation != null && $citation != '') {
            $citation_arr = explode(",", $citation);
            
            foreach($citation_arr as $c) {
                $c = trim($c);
                $query = sprintf("SELECT id FROM citations WHERE narrative_id = %d AND citation = '%s'",
                                 $narrative_id,
                                 mysql_real_escape_string($c));
                $result = mysql_query($query) or error(mysql_error());

                if(mysql_num_rows($result) == 0) {
                    // Insert citation
                    $query = sprintf("INSERT INTO citations (narrative_id, citation) ".
                                     "VALUES ($narrative_id, '%s')",
                                     mysql_real_escape_string($c));
                    mysql_query($query) or error(mysql_error());
                }
                else {
                    $c_id = mysql_result($result, 0, "id");
                    $query = sprintf("UPDATE citations SET citation = '%s' WHERE id = %d",
                                     mysql_real_escape_string($c),
                                     $c_id);
                    mysql_query($query) or error(mysql_error());
                }
            }
        }
    }

    function insert_narratives($table, $table_id) {
        if($_POST["narrative"] != null && $_POST["narrative"] != '') {
            for ($i=0; $i<sizeof($_POST["narrative"]); $i++) {
                $narrative = $_POST["narrative"][$i];
                $narrative = trim($narrative);
                
                $author = $_POST["author"][$i];
                $author = trim($author);
                

                // if author is not in db, insert new person
                $person_id = $_POST["author-id"][$i];
                if($author != null && $author != '') {
                    if($person_id == null || $person_id == '') {
                        $query = "SELECT id FROM person WHERE BINARY name = '$author'";
                        $result = mysql_query($query) or die(mysql_error());
                        
                        if(mysql_num_rows($result) == 0) {
                            $query = sprintf("INSERT INTO person (name) VALUES ('%s')",
                                             mysql_real_escape_string($author));
                            mysql_query($query) or error(mysql_error());
                            $person_id = mysql_insert_id();
                        }
                        else {
                            $person_id = mysql_result($result, 0, "id");
                        }
                    }

                    $narrative_id = $_POST["narrative-id"][$i];
                    if($narrative_id == null || $narrative_id == '') {
                        // test if narrative in db
                        $query = sprintf("SELECT id FROM narrative WHERE BINARY narrative = '%s'",
                                         mysql_real_escape_string($narrative));
                        $result = mysql_query($query) or error(mysql_error());

                        if(mysql_num_rows($result) != 0) {
                            $narrative_id = mysql_result($result, 0, "id");
                            
                            $query = sprintf("UPDATE narrative SET narrative = '%s', person_id = %d WHERE id = $narrative_id",
                                   mysql_real_escape_string($narrative),
                                   $person_id);
                            mysql_query($query) or error(mysql_error());
                        }
                        else {
                            // insert new narrative
                            if($narrative != null && $narrative != '' && $author != null && $author != '') {
                                // insert narrative
                                $query = sprintf("INSERT INTO narrative (narrative, person_id) ".
                                                 "VALUES ('%s', %d)",
                                                 mysql_real_escape_string($narrative),
                                                 $person_id); 
                                mysql_query($query) or error(mysql_error());
                                $narrative_id = mysql_insert_id();

                                $query = "INSERT INTO narrative_$table (narrative_id, ". $table ."_id) VALUES (". $narrative_id .", $table_id)";
                                mysql_query($query) or error(mysql_error());
                            }
                        }
                    }
                    else {
                        //update  
                        $query = sprintf("UPDATE narrative SET narrative = '%s', person_id = %d WHERE id = $narrative_id",
                                         mysql_real_escape_string($narrative),
                                         $person_id);
                        mysql_query($query) or error(mysql_error());
                    }
                       
                    insert_citations($narrative_id, $i);
                }
            }
        }
    }

    function update_locations($table, $id) {
        global $updating;

        $loc_date_ids = insert_location_dates();

        if($updating) {
            $query = "DELETE FROM location_date_$table WHERE {$table}_id = $id";
            mysql_query($query) or error(mysql_error());
        }
        foreach ($loc_date_ids as $i) {
            if($i != null) {
                $query = sprintf("INSERT INTO location_date_$table (location_date_id, {$table}_id) " .
                                 "VALUES ($i, $id)");
                mysql_query($query) or error(mysql_error());
            }
        }
    }

    function update_main_table($table, $loc_date) {
        global $updating, $name, $description, $name_id;

        if(!$updating) {
            $query = "INSERT INTO $table (name, description, complete";
            if($loc_date) {
                $query .= sprintf(", location_date_id) VALUES ('%s', '%s', 1, %d)",
                                 mysql_real_escape_string($name),
                                 mysql_real_escape_string($description),
                                 $loc_date);
            }
            else {
                $query .= sprintf(") VALUES ('%s', '%s', 1)",
                                  mysql_real_escape_string($name),
                                  mysql_real_escape_string($description));
            }

            mysql_query($query) or error (mysql_error());
            return mysql_insert_id();
        }
        else {
            $query = sprintf("UPDATE $table SET description = '%s'",
                             mysql_real_escape_string($description));
            if($loc_date) {
                $query .= ", location_date_id = $loc_date";
            }
            $query .= ", complete = 1 WHERE id = $name_id";

            mysql_query($query) or error (mysql_error());
            return $name_id;
        }
    }

    mysql_connect($db["host"], $db["user"], $db["pass"]) or die ("Error: " . mysql_error());
    mysql_select_db ($db["db"]);
   
    // Test if updating or inserting
    if($name_id != null && $name_id != '' && is_numeric($name_id)) {
        $updating = true;
    }

    if(!$updating && $name != '') {
        // check before adding
        $query = "SELECT id FROM $category WHERE BINARY name = '$name'";
        $result = mysql_query($query) or error (mysql_error());

        if(mysql_num_rows($result) != 0) {
            $updating = true;
            $name_id = mysql_result($result, 0, "id");
        }
    }
    
    $description = trim($description);

    mysql_query("START TRANSACTION;"); 
            
    $category_id = null;

    // Insert or update the data
    if($category == "project") {
        $category_id = update_main_table("project", null);

        //insert locations
        update_locations("project", $category_id);
        
        // insert any people
        secondary_entry_insert("person", "project", $category_id, "person_project");

        // insert any organizations
        secondary_entry_insert("organization", "project", $category_id, "organization_project");
        
        // insert events
        secondary_entry_insert("event", "project", $category_id, "event_project");
    }
    else if($category == "person") {
        $category_id = update_main_table("person", null);

        // insert locations
        update_locations("person", $category_id);

        // insert birth and death locations
        $birth_loc_date_id = insert_location_date(null, "birth-");

        $death_loc_date_id = null;
        if($_POST["deceased"] != null && $_POST["deceased"] == "deceased") {
            $death_loc_date_id = insert_location_date(null, "death-");
        }
        
        if($birth_loc_date_id != null) {
            $query = "UPDATE person SET birth_location_date_id = $birth_loc_date_id";
            
            if($death_loc_date_id != null) {
                $query .= ", death_location_date_id = $death_loc_date_id, deceased = 1";
            }
            else {
                $query .= ", death_location_date_id = NULL, deceased = 0";
            }
            $query .= " WHERE id = $category_id";

            mysql_query($query) or error(mysql_error());
        }

        // insert any organizations
        secondary_entry_insert("organization", "person", $category_id, "organization_person");
        
        // insert events
        secondary_entry_insert("project", "person", $category_id, "person_project");
    }
    else if($category == "event") {
        // insert locations
        $loc_date_id = insert_location_date(0, null);
        
        $category_id = update_main_table("event", $loc_date_id);

        // insert any people
        secondary_entry_insert("person", "event", $category_id, "event_person");

        // insert any organizations
        secondary_entry_insert("organization", "event", $category_id, "event_organization");
        
        // insert events
        secondary_entry_insert("project", "event", $category_id, "event_project");
    }
    else if($category == "organization") {
        // insert locations
        $loc_date_id = insert_location_date(0, null);

        $category_id = update_main_table("organization", $loc_date_id);
        
        // insert any people
        secondary_entry_insert("person", "organization", $category_id, "organization_person");

        // insert any organizations
        secondary_entry_insert("event", "organization", $category_id, "event_organization");
        
        // insert events
        secondary_entry_insert("project", "organization", $category_id, "organization_project");

    }

    if($category_id != null) {
        // add narratives
        insert_narratives($category, $category_id);

        // add tags
        secondary_entry_insert("tags", $category, $category_id, $category."_tags");
        
        mysql_query("COMMIT");
        
        if(!$updating)
            echo "Successfully added new entry";
        else
            echo "Successfully updated entry";
    }
    else {
        echo "A category must be selected";
    }
