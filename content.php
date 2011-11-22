<?php
include_once("setup/conf.php"); 
include_once("includes/get_functions.php");

// vars
$color_class = array(
    "person" => "person",
    "project" => "project",
    "organization" => "organization",
    "event" => "event"
);

$category = isset($_GET["c"]) ? $_GET["c"] : null;
$q = isset($_GET["q"]) ? $_GET["q"] : null;

$data = array();

// data
if($category && $q) {
    mysql_connect($db["host"], $db["user"], $db["pass"]) or die ("Error: " . mysql_error());
    mysql_select_db($db["db"]);

    // fetch all relevant data
    $data['main'] = get_main($q, $category); 

    mysql_close();
}

include_once("includes/header.php");
include_once("includes/timeline.php");
?>
<!-- start of page content -->
    <section class="entryMast">
		<h1 class="entryTitle <?php echo $category; ?>"><?php echo $data['main']['name']; ?>filler title</h1>
        <ul class="catBar">
			<li class="catProject"><a href="#">Project</a></li>
			<li class="catPeople"><a href="#">People</a></li>
			<li class="catOrg"><a href="#">Organization</a></li>
			<li class="catEvent"><a href="#">Event</a></li>
			<li class="editEntry"><a href="<?php echo "entry.php?id={$data['main']['id']}&n={$data['main']['name']}&c={$category}"; ?>">Edit Entry</a></li>
			<div class="cf"></div>
		</ul>
	</section>
	<section class="mosaicBody">
        <ul class="mosaic-container">
            <li class="tile dynamic"><?php $data['main']['description']; ?></li>
        </ul>
	</section>

    <section class="entryInfo" style="display: none;">
        <input type="hidden" class="entryName" value="<?php echo $data['main']['name'];?>" />
        <input type="hidden" class="entryId" value="<?php echo $data['main']['id']; ?>" />
        <input type="hidden" class="entryCategory" value="<?php echo $category; ?>" />
    </section>
<?php 
    include_once("includes/footer.php");
?>
