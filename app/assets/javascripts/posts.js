var ready = function() {
  $("#new_post").validate({
    rules:{
      "post[description]":{required:true}
    },
    errorElement : 'div',
    errorPlacement: function(error, element) {
         var placement = $(element).data('error');
         if (placement) {
           $(placement).append(error)
         } else {
           error.insertAfter(element);
         }
    }

  })
}

$(document).ready(ready);
$(document).on('turbolinks:load', ready);
