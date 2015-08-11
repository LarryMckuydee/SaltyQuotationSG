# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# alert 'hello'

$(document).ready ->
  # c=0;
  # $("#AdditionalInfo").click ->
  #   textArea = $("<textarea id ='AddDesc"+c+"'rows='5' cols='20'></textarea>")
  #   textField = $("<input type='text' id='AddPrice"+c+"' value = '' >")
  #   $("#new_quotation").append textArea
  #   $("#new_quotation").append textField
  $("#quotation_back_print_method_id").change ->
    $("#quotation_back_block_size_id").empty()
    $("#quotation_back_block_size_id").append $('<option>',{
        text: "Select A Block Size"
      })
    print_method_name = $("#quotation_back_print_method_id option:selected").text()
    $.ajax
      url: "/print_methods.json"
      dataType: "json"
      success: (response) ->
        response.forEach (p) ->
          $test_html = $("<div></div>")
          # alert brand.brand
          # alert print_method_name
          if print_method_name.toString() == p.print_method_name.toString()
            p.block_sizes.forEach (b) ->
              $("#quotation_back_block_size_id").append $('<option>',{
                value: b.block_size_id,
                text: b.block_size_name
              })

  $("#quotation_front_print_method_id").change ->
    $("#quotation_front_block_size_id").empty()
    $("#quotation_front_block_size_id").append $('<option>',{
        text: "Select A Block Size"
      })
    print_method_name = $("#quotation_front_print_method_id option:selected").text()
    $.ajax
      url: "/print_methods.json"
      dataType: "json"
      success: (response) ->
        response.forEach (p) ->
          $test_html = $("<div></div>")
          # alert brand.brand
          # alert print_method_name
          if print_method_name.toString() == p.print_method_name.toString()
            p.block_sizes.forEach (b) ->
              $("#quotation_front_block_size_id").append $('<option>',{
                value: b.block_size_id,
                text: b.block_size_name
              })

  $('#quotation_customers_full_name').autocomplete
    source: $('#quotation_customers_full_name').data('clsource')

  $("#quotation_brand_id").change ->
    $("#quotation_fit_id").empty()
    $("#quotation_shirt_type_id").empty()
    $("#quotation_fit_id").append $('<option>',{
        text: "Select A Fit"
      })
    $("#quotation_shirt_type_id").append $('<option>',{
        text: "Select A Type"
      })
    brand_name = $("#quotation_brand_id option:selected").text()
    $.ajax
      url: "/brands.json"
      dataType: "json"
      success: (response) ->
        response.forEach (brand) ->
          $test_html = $("<div></div>")
          # alert brand.brand
          # alert brand_name
          if brand_name.toString() == brand.brand.toString()
            brand.fits.forEach (fit) ->
              $("#quotation_fit_id").append $('<option>',{
                value: fit.fit_id,
                text: fit.fit_name
              })
            brand.shirt_types.forEach (shirt_type) ->
              $('#quotation_shirt_type_id').append $('<option>',{
                value: shirt_type.shirt_type_id,
                text: shirt_type.shirt_type_name
                })
          #     $fit_html = $("<div class='fit'>"+fit.fit_name+"</div>")
          #     $test_html.append $fit_html
          # else
          #   alert "fuck"
          # $("#test").append $test_html

#
# $(document).ready ->
#    $("#quotation_brand_id").change ->
#     #  $.parseJSON(
#      $.ajax
#        url: "/brands"
#       #  type: "POST"
#        dataType: "json"
#
#        success: (response) ->
#         # $("#quotation_fit_id").val response
#         # json = $.parseJSON response
#         # alert(json.html)
#         console.log(typeof response)
        # response.each (res)->
        #   alert "a"
      # ).responseText

# ini boleh work
# $(document).ready ->
#    $.ajax
#      url: "/brands.json"
#      dataType: "json"
#      success: (response) ->
#       alert response[0].fits[0].fit
#       response.forEach (brand) ->
#         $brand_html = $("<div class='brand'> " + brand.brand+"</div>")
#         brand.fits.forEach (fit)->
#           $fit_html = $("<div class='fit'>"+fit.fit+"</div>")
#           $brand_html.append $fit_html
#         $("#test").append $brand_html
