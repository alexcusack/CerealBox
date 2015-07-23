var addSheetToCourse = {
  init: function() {
    $('div.add-sheet-to-course').on('click',
      'a.get-courses', function(event) {

        event.preventDefault();
        var link = $(this);
        var request = $.ajax({
          url: link.attr('href'),
          dataType: 'html'
        })
        request.done(function(userCoursesList) {

          // link.closest('div').append(userCoursesList);
          // link.closest('div').find('ul').append(userCoursesList);
          $('ul#dropdown1').append(userCoursesList);
        });

        request.fail(function(userCoursesList){
          console.error(userCoursesList);
        })

    });

    $('div.add-sheet-to-course').on('click',
      'a.add-sheet', function(event) {
        event.preventDefault();
        var link = $(this);

        var request = $.ajax({
          type: 'POST',
          url: link.attr('href'),
          dataType: 'text'
        })
        request.done(function(confirmation) {
          alert(confirmation);
          // $('a.get-courses').toggle();
          link.closest('div').remove();
        });
    });

    $('div.add-sheet-to-course').on('click',
      'a.cancel', function(event) {
        event.preventDefault();
        var cancelButton = $(this);

        $('a.get-courses').toggle();
        cancelButton.parent().remove();
    });
  }
};
