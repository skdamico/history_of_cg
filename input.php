<!DOCTYPE html>
<html>
<head>
    <title>History of CG - Entry</title>
    <link type="text/css" rel="stylesheet" href="css/input.css" />
    <link type="text/css" rel="stylesheet" href="css/token-input.css" />
    <link type="text/css" rel="stylesheet" href="css/token-input-hcg.css" />

    <script type="text/javascript" src="js/jquery-latest.js"></script>
    <script type="text/javascript" src="js/jquery-ui-latest.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/jquery.tokeninput.js"></script>
    <script type="text/javascript" src="js/countries.js"></script>
    <script type="text/javascript" src="js/util.js"></script>
    <script type="text/javascript" src="js/input.js"></script>
</head>
<body>
    <div id="target" style="display: none"></div>
    <form id="inputform" method="post" action="insert.php">
        <div id="step-1">
            <p> 
               <label for="name">Name</label>
               <input id="name" class="required" type="text"  name="name" />
               <input id="name-id" type="hidden" name="name-id" value="" />
            </p>
            <p>
               <label for="categories">What is this?</label>
               <select id="categories" name="categories">
                   <option value=""></option>
                   <option value="person">Person</option>
                   <option value="project">Project</option>
                   <option value="organization">Organization</option>
                   <option value="event">Event</option>
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
            <div id="required-fields"></div>
            <div id="optional-fields"></div>
            <p>
                <input type="submit" name="submit" value="Save" />
            </p>
        </div>
    </form>

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
            <input type="hidden" class="narrative-id" name="narrative-id[]" value="" />
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
</body>
</html>
