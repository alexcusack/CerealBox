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
          link.closest('div').append(userCoursesList);
          link.toggle();
        });

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
          $('div')
        });
    });

    $('div.add-sheet-to-course').on('click',
      'a.cancel', function(event) {
        event.preventDefault();
        var cancelButton = $(this);

        cancelButton.closest('a.get-courses').toggle();
        cancelButton.parent().remove();
    });
  }
};
