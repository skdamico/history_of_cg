<?php 
    mysql_connect("localhost", "root", "historyofcg") or die ("Error: " . mysql_error());
    mysql_select_db ("historyofcg");

    $person_name = $_POST["person_name"];
    $project_name = $_POST["project_name"];
    $date_created = $_POST["date_alternative"];
    $location = $_POST["location"];
    $organization = $_POST["organization"];
    $description = $_POST["description"];
    


    // get location
    $lat = null;
    $lon = null;
    
    $location = trim($location);
    if($location != null || $location != '') {
        $result = file_get_contents("http://tinygeocoder.com/create-api.php?q=$location");
        $location = file_get_contents("http://tinygeocoder.com/create-api.php?g=$result");

        // separate lat and long
        $result_array = explode(",", $result);
        $lat = $result_array[0];
        $lon = $result_array[1];
    }

    // initial insert
    // Add a conditional for double entry for updating
    $project_name = trim($project_name);

    // check for project before adding
    $query = "SELECT name FROM project WHERE name = '$project_name'";
    $result = mysql_query($query) or die (mysql_error());

    if(mysql_num_rows($result) == 0 && $project_name != null) {
        $query = sprintf("INSERT INTO project (name, date, location, latitude, longitude, description) " .
                            "VALUES ('%s', '%s', '%s', %.6f, %.6f, '%s')",
                          mysql_real_escape_string($project_name),
                          $date_created,
                          $location,
                          $lat,
                          $lon,
                          mysql_real_escape_string($description));  

        mysql_query($query) or die (mysql_error());
    }
    else {
        echo "Project already exists\n";
    }

    // separate multiple people and orgs into multiple queries
    $query = "SELECT name FROM person WHERE name = '$person_name'";
    $result = mysql_query($query) or die (mysql_error());

    if(mysql_num_rows($result) == 0) {
        $query = "INSERT INTO person (name) VALUES ('$person_name')";
        mysql_query($query) or die (mysql_error());
    }
    else {
        echo "Person already exists\n";
    }

    if($organization != '') {
        $query = "SELECT name FROM organization WHERE name = '$organization'";
        $result = mysql_query($query) or die (mysql_error());

        if(mysql_num_rows($result) == 0) {
             $query = "INSERT INTO organization (name) VALUES ('$organization')";
             mysql_query($query) or die (mysql_error());
        }
        else {
            echo "Organization already exists\n";
        }
    }
?>
