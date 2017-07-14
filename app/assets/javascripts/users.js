// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var ready = function() {
  $(".edit_user").validate({
    rules:{
      "user[current_password]":{required:true}
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

  });

  $("#new_user").validate({
    rules:{
      "user[name]":{required:true},
      "user[email]":{required:true},
      "user[password]":{required:true,minlength:6},
      "user[password_confirmation]":{required:true}

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
