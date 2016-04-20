<?php
$header = "Content-Type: application/json";
header($header);
 
$dbLink = mysqli_connect('musicdex.paulsindex.com','musicdex_admin','bar_chord','musicdex');
 
if (!$dbLink) {
    $row = array("siteStatus" => "Database Error");
    print json_encode($row);
} else {
    $query = "SELECT id, title, url_location FROM song where id = 14";
 
    if ($result = mysqli_query($dbLink,$query)) {
        $row = $result->fetch_array(MYSQLI_ASSOC);
        if (is_null($row)) {
            $row = array("siteStatus" => "Error - Song Not Found");
        }
    } else {
        $row = array("siteStatus" => "General Error");
    }
 
    print json_encode($row);
    mysqli_close($dbLink);
} // End else condition (for database connection)
 
?>