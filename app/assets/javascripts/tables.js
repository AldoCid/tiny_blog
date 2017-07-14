
var ready = function() {
  $("tr").click(function() {
    var link = $(this).children(".tr_link").first().val();
    if (link) {
      window.location.href = link;
    }
  });
}

$(document).ready(ready);
$(document).on('turbolinks:load', ready);
