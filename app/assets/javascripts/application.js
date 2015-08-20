// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .
//= require jquery_nested_form
//= require bootstrap-sprockets

//set class="active"
function ready(){
  $('#menu').click(function(){
    $('#navbar').toggle();
      if($('a').css('color','blue'))
        $('a').css('color','black');
      else
        $('a').css('color','black');
  });


  $(function(){
      // alert(window.location);
      $('.navbar ul li a').each(function(i){
        // alert($(this).attr('href'))
         if($(this).attr('href')==window.location){
          $(this).parent().closest('li').prop('class','active')
         }
      });

  });
}

$(document).ready(ready);
$(document).on('page:load', ready);
