// Gets locations from the table matching name
function getLocation(table, name, callback) {
    $.getJSON("get.php?action=location&t="+table+"&q="+name, function(data) {
        callback(data);
    });
}

// Returns the given string with its first letter upper cased
function upperCaseWord(str) {
    return (str + '').replace(/^([a-z])|\s+([a-z])/g, function ($1) {
        return $1.toUpperCase();
    });
}

function changeEntryHairline(category) {
    var categories = "person project organization event";
    $("#step-1").removeClass(categories).addClass(category);
    $("#required-fields").removeClass(categories).addClass(category);
    $("#optional-fields").removeClass(categories).addClass(category);
}
