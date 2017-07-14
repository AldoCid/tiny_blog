


var ready = function() {

  var followed = false;
  $("#follow_link").unbind().click(function(){
    followed = !followed;
    if(!followed){
        $("#follow_icon").text("done");
        $("#follow_link").removeClass("light-blue accent-3 ");
        $("#follow_link").addClass(" light-green darken-1");
        $("#follow_span").text("Seguindo");

        Materialize.toast('Função drag an drop desativada.', 2000)
    }else{
        $("#follow_icon").text("add");
        $("#follow_link").removeClass("light-green darken-1");
        $("#follow_link").addClass("light-blue accent-3 btn");
        $("#follow_span").text("Seguir");

        Materialize.toast('Função drag an drop desativada.', 2000)
    }

  });
}


$(document).ready(ready);
$(document).on('turbolinks:load', ready);
