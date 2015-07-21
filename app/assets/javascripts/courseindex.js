

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
    $('.radial-svg').width(150);
    $('.radial-svg').height(150);
    $('.radial-svg').css("margin-left", "0");
    $('.radial-svg').css("margin-right", "0");
    // $('#sheet-count-'+data).append(start(response));

    // $('.label').text(''+response+' / 7');
    // $('[data-id='+data+']').find('.sheet-count').append('<p>'+response+'</p>')
  })

  request.error(function(response){
    // debugger
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


