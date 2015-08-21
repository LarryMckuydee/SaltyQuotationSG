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
    //console.log($('nav').offset().left);

    $('#navbar').toggle();
    // $('#menu').toggle(function(){$(this).css('color','blue')},function(){$(this).css('color','black')});

  });


  $(function(){
      // alert(window.location);
      $('.navbar ul li a').each(function(i){
        // alert($(this).attr('href'))
         if($(this).attr('href')==window.location){
          $(this).parent().closest('li').prop('class','active');
         }
      });

  });

  $(function(){
    var window_width = $(window).width();
    if(window_width<750){
      $('nav').css('width',window_width+"px");

    }
  });
  //
  // $(window).scroll(function(){
  //     //$('nav').offset({top:0,left:$('nav').offset().left});
  //     //console.log('scroolling');
  //     // var window_width = $(window).width();
  //     // if(window_width<750){
  //     //   $('nav').css('width',window_width+"px");
  //     //
  //     // }
  //     var scrollVal = $(this).scrollTop();
  //       if ( scrollVal > 750 ) {
  //           $('nav').css({'position':'fixed','top' :'0px'});
  //     }
  // });
}

$(document).ready(ready);
$(document).on('page:load', ready);
