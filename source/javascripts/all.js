//= require jquery
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
    $(".trigger").click(function() {
        $(".overlay").toggle();
    });
});
