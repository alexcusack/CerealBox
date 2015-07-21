
var getCourses = function(){
  var array = $('.course-item');
  for(var i = 0; i < array.length; i ++){
    getSheetCount(array[i]);
  }
};


var getSheetCount = function(object){
  var data = object.dataset.id
  var request = $.ajax({
    url: 'courses/data',
    data: {course_id: data},
    dataType: 'json'
  })

  request.done(function(response){
    start(response, data);
    // $('#sheet-count-'+data).append(start(response));

    // $('.label').text(''+response+' / 7');
    // $('[data-id='+data+']').find('.sheet-count').append('<p>'+response+'</p>')
  })

  request.error(function(response){
<<<<<<< HEAD
=======
    // debugger
>>>>>>> development
  })
};

function start(response, data) {
  // console.log(document.getElementById('sheet-count-'+data))
  var rp1 = radialProgress(document.getElementById('sheet-count-'+data))
  .diameter(150)
  .value((response/7)*100)
  .render();
  // $('text:not([transform])').text('7');
}

