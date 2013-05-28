<?php
$lat=$_GET["lat"];
$lon=$_GET["lon"];
// echo $lon;
// echo $lat;
$dbconn = pg_connect("host=127.0.0.1 dbname=gis user=www-data password=??")
	or die('Could not connect: ' . pg_last_error());
$query = "SELECT planet_osm_polygon.\"KNKOD\" FROM public.planet_osm_polygon WHERE \"admin_level\"='7' AND ST_Within(ST_Transform(SETSRID(ST_MakePoint($lon, $lat),4326),900913),planet_osm_polygon.way);";
$result1 = pg_query($dbconn, $query) or die('Query failed: ' . pg_last_error());
$row1 = pg_fetch_row($result1);
$knkod = $row1[0];

$query = "SELECT planet_osm_polygon.name FROM public.planet_osm_polygon WHERE planet_osm_polygon.\"KNKOD\"='$knkod';";
$result1 = pg_query($dbconn, $query) or die('Query failed: ' . pg_last_error());
$row1 = pg_fetch_row($result1);
$kommunnamn = $row1[0];

$query = "SELECT orter.ortkod,orter.ortnamn, orter.population, orter.kommumkod FROM public.orter WHERE orter.inlagdiosm = false AND orter.kommumkod='$knkod' ORDER BY orter.population DESC;";
$result = pg_query($dbconn, $query) or die('Query failed: ' . pg_last_error());
$endstring = '';
if (!$result) {
  $endstring = "An error occurred.";
}
$display_string .="<h2>$kommunnamn</h2>";
$display_string .="Kommunkod=$knkod";
$display_string .="<table>";
$display_string .= "<tr>";
$display_string .= "<th>Ortkod</th>";
$display_string .= "<th>Ortnamn</th>";
$display_string .= "<th>Population</th>";
$display_string .= "</tr>";
while ($row = pg_fetch_row($result)) {
	$display_string .= "<tr>";
	$display_string .= "<td>$row[0]</td>";
	$display_string .= "<td>$row[1]</td>";
	$display_string .= "<td>$row[2]</td>";
	$display_string .= "</tr>";
}
pg_close($dbconn);
$display_string .= "</table>";
echo $display_string;
?>
