// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require select2
//= require jquery_nested_form
//= require bootstrap-sprockets
//= require moment
//= require bootstrap-datetimepicker
//= require jquery_ujs
//= require turbolinks
$(function(){
  // Collapse the side menu when size is to small
  $(window).bind("load resize", function () {
    if ($(this).width() < 768) {
      $('div.sidebar-collapse').addClass('collapse')
    } else {
      $('div.sidebar-collapse').removeClass('collapse')
    }
  });

  // Hook up select2 for each new food added to a meal
  $(document).on('nested:fieldAdded:meal_items', function(event){
    //console.log(event.field);
    var field = event.field.find('.meal-item.food-name');
    field.select2({
      minimumInputLength: 3,
      ajax: {
        url: '/foods/search.json',
        dataType: 'json',
        delay: 200,
        data: function(params){
          return {
            q: params
          }
        },
        results: function(data) {
          var results = []
          $.each(data, function(idx, item){
            results.push({ id: item.id, text: item.name });
          });
          return { 
            results: results
          }
        }
      }
    });
    field.css({width: '80%'});
  });
});
