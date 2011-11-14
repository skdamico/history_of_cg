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
