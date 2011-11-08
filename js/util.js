// Gets locations from the table matching name
function getLocation(table, name, callback) {
    $.get("getlocations.php?t="+table+"&q="+name, function(data) {
        callback(data);
    });
}
