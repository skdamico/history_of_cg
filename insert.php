<?php
    // use this for quick inserts of content not of the primary category type
    // ex: adding people on the project category page
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
                        $query = sprintf("INSERT INTO $secondary (name, approved) VALUES ('%s', 0)", mysql_real_escape_string($p));
                    }
                    mysql_query($query) or die(mysql_error());
                    $i = mysql_insert_id();
                }
                else {
                    $i = mysql_result($result, 0, "id");
                }
                $query = "INSERT INTO $table_name (". $tables[0] ."_id, ". $tables[1] ."_id) VALUES ($i, $primary_id)";
                mysql_query($query) or die(mysql_error());
            }
        }
        // add existing table_1
        foreach($arr_in_db as $p) {
            $query = "INSERT INTO $table_name (". $tables[0] ."_id, ". $tables[1] ."_id) VALUES ($p, $primary_id)";
            mysql_query($query) or die(mysql_error());
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
            if($category == "project") {
                $query = sprintf("INSERT INTO project (name, start_year, start_month, start_day, end_year, end_month, end_day, description) " .
                                 "VALUES ('%s', %d, %d, %d, %d, %d, %d, '%s')",
                              mysql_real_escape_string($name),
                              $_POST["year_created"],
                              $_POST["month_created"],
                              $_POST["day_created"],
                              $_POST["year_end"],
                              $_POST["month_end"],
                              $_POST["day_end"],
                              mysql_real_escape_string($_POST["description"]));  

                mysql_query($query) or die (mysql_error());
                $project_id = mysql_insert_id();

                // insert any people
                secondary_entry_insert("person", "project", $project_id, "person_project");

                // insert any organizations
                secondary_entry_insert("organization", "project", $project_id, "organization_project");
               

                // if everything was added, mark complete in project
                $narrative_arr = explode(",", $_POST["narrative"]);
                
                if($narrative_arr != '') {
                    foreach($narrative_arr as $narrative) {
                        $query = sprintf("INSERT INTO narrative (narrative) VALUES ('%s')", mysql_real_escape_string($narrative));
                        mysql_query($query) or die(mysql_error());
                        $query = "INSERT INTO narrative_project (narrative_id, project_id) VALUES (". mysql_insert_id() .", $project_id)";
                        mysql_query($query) or die(mysql_error());
                    }
                }
                // add tags
                secondary_entry_insert("tags", "project", $project_id, "project_tags");
            }
            else if($category == "person") {
            }
            else if($category == "event") {

            }
            else if($category == "organization") {
            }
            // add narratives
            
            // add tags

            
        }
        else {
            echo "Data already exists\n";
        }
    }
?>
