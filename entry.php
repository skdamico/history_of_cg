<?php 
$category = isset($_GET["c"]) ? $_GET["c"] : null;
$name = isset($_GET["n"]) ? $_GET["n"] : null;
$id = isset($_GET["id"]) ? $_GET["id"] : null;

$categories = array(
    array('value' => '', 'name' => ''),
    array('value' => 'person', 'name' => 'Person'),
    array('value' => 'project', 'name' => 'Project'),
    array('value' => 'organization', 'name' => 'Organization'),
    array('value' => 'event', 'name' => 'Event'),
);

include_once("includes/header.php");
?>

    <h1 class="entryTitle">Create an entry</h1>

    <section class="inputFormSections">
        <!-- Stefano's pretties -->
        <form id="inputform" method="post" action="insert.php">
            <div id="step-1" class="inputSection">
                <p> 
                    <label for="name">Name</label>
                    <input id="name" class="required" type="text"  name="name" value="<?php echo $name; ?>" />
                    <input id="name-id" type="hidden" name="name-id" value="<?php echo $id; ?>" />
                </p>
                <p>
                    <label for="categories">What is this?</label>
                    <select id="categories" name="categories">
                    <?php
                    foreach($categories as $c) {
                        echo "<option value='{$c['value']}'";
                        if($c['value'] == $category)
                            echo " selected='selected'";
                        echo ">{$c['name']}</option>";
                    } ?>
                    </select>
                </p>
                <p>
                    <label for="tags" class="tags">Tags</label>
                    <input id="tags" type="text" name="tags" />
                </p>
                <p>
                    <label for="suggested-tags">Suggested Tags</label>
                    <ul id="suggested-tags"></ul>
                    <div style="clear: both"></div>
                </p>
            </div>
            <div id="step-2">
                <div id="required-fields" class="inputSection"></div>
                <div id="optional-fields" class="inputSection"></div>
                <p>
                    <input type="submit" name="submit" value="Save" />
                </p>
            </div>
        </form>

        <div id="target"></div>
        <div id="loader" style="display: none;"></div>
        <div id="location-date-module" class="location-date-module" style="display: none;">
            <p>
                <label for="location">Location</label>
                <div style="float:left">
                    <select class="country" name="country[]">
                        <option value='' class="message">Country</option>
                    </select>
                    <select class="state" name="state[]">
                        <option value='' class="message">State</option>
                    </select><br/>
                    <input class="city" type="text" name="city[]" placeholder="City" />
                </div>
                <div style="clear: both"></div>
            </p>
            <p class="date">
                <label for="start-year">Date Started</label>
                <select class="start-year" class="required" name="start-year[]" style="float: left"></select>
                <select class="start-month" name="start-month[]" style="float: left;"></select>
                <select class="start-day" name="start-day[]" style="float:left;"></select>
                <span class="end-date-option" style="float:left; display:none;"><input type="checkbox" name="end-date-option[]" value="end-date" /><span></span></span>
                <div style="clear:both;"></div>
            </p>
            <p class="end-date" style="display: none;">
                <label for="end-year">Date Ended</label>
                <select class="end-year" class="required" name="end-year[]" style="float: left"></select>
                <select class="end-month" name="end-month[]" style="float: left"></select>
                <select class="end-day" name="end-day[]" style="float: left"></select>
                <div style="clear:both;"></div>
            </p>
            <p>
                <span class="add-location-date" style="display:none;">+ Multiple locations</span>
            </p>
        </div> 
        <div id="narrative-module" class="narrative-module" style="display: none;">
            <p>
                <label for="narrative">Tell A Story</label>
                <textarea rows="15" cols="40" class="narrative" name="narrative[]"></textarea>
            </p>
            <p>
                <label for="author">Author</label>
                <input name="author[]" class="author" type="text" />
                <input name="author-id[]" class="author-id" type="hidden" />
            </p>
            <p>
                <label for="citations">Citations</label>
                <input name="citations[]" class="citation" type="text" />
            </p>
            <p>
                <span class="add-narrative">+ Add another story</span>
            </p>
        </div>
        <div id="placeholder" style="display:none;"></div>
        <!--end of Stefano's pretties-->
    </section>
<?php include_once("includes/footer.php"); ?>
