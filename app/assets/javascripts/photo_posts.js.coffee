# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 jQuery ->
   $('#hiden_select_sub_photo').hide()
   subcategories = $('#photo_post_subcategory_id').html()
   $('#photo_post_category_id').change ->
     category = $('#photo_post_category_id :selected').text()
     options = $(subcategories).filter("optgroup[label='#{category}']").html()
     if options
       $('#photo_post_subcategory_id').html(options)
       $('#hiden_select_sub_photo').show()
     else
       $('#photo_post_subcategory_id').empty()
       $('#hiden_select_sub_photo').hide()    