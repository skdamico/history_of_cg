<?php

    /*
     *  Help routines
     */


    // use this for quick inserts of content not of the primary category type
    function secondary_entry_insert($secondary, $primary, $primary_id, $table_name) {
        $arr = explode(",", $_POST[$secondary]);
        $arr_in_db = array_filter($arr, "is_numeric");
        $arr_insert = array_diff($arr, $arr_in_db);

        $tables = explode("_", $table_name);
        // insert new secondary types and add to primary
        if(count($arr_insert) > 0) {
            foreach($arr_insert as $p) {
                $p = preg_replace("/(^\'|\'\z)/", "", $p);
                $p = trim($p);
                //test if in db
                $result = mysql_query(sprintf("SELECT id FROM $secondary WHERE name = '%s'",mysql_real_escape_string($p)));

                $i = "";
                if(mysql_num_rows($result) == 0) {
                    if($secondary != "tags") {
                        $query = sprintf("INSERT INTO $secondary (name) VALUES ('%s')", mysql_real_escape_string($p));
                    }
                    else {
                        $query = sprintf("INSERT INTO $secondary (name, approved, category) VALUES ('%s', 0, '%s')", mysql_real_escape_string($p), $primary);
                    }
                    mysql_query($query) or die(mysql_error());
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
                mysql_query($query) or die(mysql_error());
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
            mysql_query($query) or die(mysql_error());
        }
    }

    function insert_location_dates() {
        $loc_date_id = array();
        for ($i=0; $i<sizeof($_POST["country"]); $i++) {
            $loc_date_id[] = insert_location_date($i);
        }
        return $loc_date_id;
    }

    function insert_location_date($i) {
        $city = $_POST["city"][$i];
        $state = $_POST["state"][$i];
        $country = $_POST["country"][$i];
        
        //geocode location
        $loc_str = '';
        if($city != null && $city != '') {
            $loc_str .= $city . ', ';
        }
        if($state != null && $state != '') {
            $loc_str .= $state . ', ';
        }
        $loc_str .= $country;

        $result = file_get_contents("http://tinygeocoder.com/create-api.php?q=$loc_str") or die("file_get_contents");

        $result_arr = explode(",", $result);
        $lat = $result_arr[0];
        $lon = $result_arr[1];

        // insert location
        $query = sprintf("INSERT INTO location (city, state, country, latitude, longitude) ".
                         "VALUES ('%s', '%s', '%s', %.6f, %.6f)",
                         mysql_real_escape_string($city),
                         $state,
                         $country,
                         $lat,
                         $lon);
        mysql_query($query) or die (mysql_error());
        $loc_id = mysql_insert_id();

        // insert date
        // test for date range


        $query = "";
        if($_POST["end-year"] != null && $_POST["end-year"] != '') {
            $query = sprintf("INSERT INTO date (start_year, start_month, start_day, end_year, end_month, end_day, is_end_date) ".
                             "VALUES (%d,%d,%d,%d,%d,%d,%d)",
                             $_POST["start-year"][$i],
                             $_POST["start-month"][$i],
                             $_POST["start-day"][$i],
                             $_POST["end-year"][$i],
                             $_POST["end-month"][$i],
                             $_POST["end-day"][$i],
                             1);
        }
        else {
            $query = sprintf("INSERT INTO date (start_year, start_month, start_day) ".
                             "VALUES (%d,%d,%d)",
                             $_POST["start-year"][$i],
                             $_POST["start-month"][$i],
                             $_POST["start-day"][$i]);
        }

        mysql_query($query) or die(mysql_error());
        $date_id = mysql_insert_id();

        // insert location/date pair
        $query = sprintf("INSERT INTO location_date (location_id, date_id) VALUES ($loc_id, $date_id)");
        mysql_query($query) or die(mysql_error());

        return mysql_insert_id();
    }

    function insert_narratives($table, $table_id) {
        if($_POST["narrative"] != null && $_POST["narrative"] != '') {
            for ($i=0; $i<sizeof($_POST["narrative"]); $i++) {
                $narrative = $_POST["narrative"][$i];
                $narrative = trim($narrative);
                
                $author = $_POST["author"][$i];
                $author = trim($author);

                if($narrative != null && $narrative != '' && $author != null && $author != '') {
                    $query = sprintf("INSERT INTO narrative (narrative, person_id) ".
                                     "SELECT '%s', person.id ".
                                     "FROM person WHERE person.name = '%s'",
                                     mysql_real_escape_string($narrative),
                                     mysql_real_escape_string($author)); 
                    mysql_query($query) or die(mysql_error());
                    $narrative_id = mysql_insert_id();

                    $query = "INSERT INTO narrative_$table (narrative_id, ". $table ."_id) VALUES (". $narrative_id .", $table_id)";
                    mysql_query($query) or die(mysql_error());
                    
                    $citation = $_POST["citations"][$i];
                    $citation = trim($citation);
                    if($citation != null && $citation != '') {
                        $citation_arr = explode(",", $citation);
                        
                        foreach($citation_arr as $c) {
                            $c = trim($c);
                            $query = sprintf("INSERT INTO citations (narrative_id, citation) ".
                                             "VALUES ($narrative_id, '%s')",
                                             mysql_real_escape_string($c));
                            mysql_query($query) or die(mysql_error());
                        }
                    }
                }

            }
        }
    }

    mysql_connect("localhost", "root", "historyofcg") or die ("Error: " . mysql_error());
    mysql_select_db ("historyofcg");
   
    $category = $_POST["categories"];
    $name = trim($_POST["name"]);
    
    if($name != '') {
        // check before adding
        $query = "SELECT name FROM $category WHERE name = '$name'";
        $result = mysql_query($query) or die (mysql_error());

        if(mysql_num_rows($result) == 0) {
            
            $category_id = null;

            if($category == "project") {
                $query = sprintf("INSERT INTO project (name, description) " .
                                 "VALUES ('%s', '%s')",
                              mysql_real_escape_string($name),
                              mysql_real_escape_string($_POST["description"]));

                mysql_query($query) or die (mysql_error());
                $category_id = mysql_insert_id();
                
                // insert locations
                $loc_date_ids = insert_location_dates();
                foreach ($loc_date_ids as $i) {
                    $query = sprintf("INSERT INTO location_date_project (location_date_id, project_id) " .
                                     "VALUES ($i, $category_id)");
                    mysql_query($query) or die(mysql_error());
                }
                
                // insert any people
                secondary_entry_insert("person", "project", $category_id, "person_project");

                // insert any organizations
                secondary_entry_insert("organization", "project", $category_id, "organization_project");
                
                // insert events
                secondary_entry_insert("event", "project", $category_id, "event_project");
            }
            else if($category == "person") {
            }
            else if($category == "event") {
            }
            else if($category == "organization") {
            }
            // add narratives
            insert_narratives($category, $category_id);

            // add tags
            secondary_entry_insert("tags", $category, $category_id, $category."_tags");
            
        }
        else {
            echo "Data already exists\n";
        }
    }
