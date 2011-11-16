<?php include_once("setup/conf.php"); ?>
<?php include_once("includes/get_functions.php"); ?>
<?php

$color_class = array(
    "person" => "person",
    "project" => "project",
    "organization" => "organization",
    "event" => "event"
);

$q = $_GET["q"];
$category = $_GET["c"];

$data = array();

if($q != null && $category != null) {

    mysql_connect($db["host"], $db["user"], $db["pass"]) or die ("Error: " . mysql_error());
    mysql_select_db($db["db"]);

    // fetch all relevant data
    $data['main'] = get_main($q, $category); 

    mysql_close();
}
else {
    // redirect to error page
}
?>


<!-- start of page content -->
<?php include_once("includes/header.php"); ?>
<?php include_once("includes/timeline.php"); ?>

    <section class="entryMast">
		<h1 class="entryTitle <?php echo $color_class[$category]; ?>"><?php echo $data['main']['name']; ?></h1>
		<ul class="catBar">
			<li class="catProject"><a href="#">Project</a></li>
			<li class="catPeople"><a href="#">People</a></li>
			<li class="catOrg"><a href="#">Organization</a></li>
			<li class="catEvent"><a href="#">Event</a></li>
			<li class="editEntry"><a href="#">Edit Entry</a></li>
			<div class="cf"></div>
		</ul>
	</section>
	<section class="mosaicBody">
		<p>i still have to extend category bar bg and this mosaic shade bg across page width</p>
		<p>also gotta make Gotham web-friendly</p>
	</section>

<?php include_once("includes/footer.php"); ?>
