

  var getCourses = function(){
   var array = $('.course-item');
   for(var i = 0; i < array.length; i ++){
    getSheetCount(array[i]);
   }
  };


var getSheetCount = function(object){
  data = object.dataset.id
  var request = $.ajax({
    url: 'courses/data',
    data: {course_id: data},
    dataType: 'json'
  })

  request.done(function(response){
    $('[data-id='+data+']').find('.sheet-count').append('<p>'+response+'</p>')
  })

  request.error(function(response){
    debugger
  })
};


