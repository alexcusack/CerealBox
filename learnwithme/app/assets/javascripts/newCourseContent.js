var newCourseContent = {

  submitListen: function() {
    $(document).on('ajax:success', 'div.new-content form', function(event, newContent) {
      var contentType = $(this).attr('data-content');
      var destination = $('div.content').find('div.' + contentType);
      destination.prepend(newContent);
      $(this).find('input:text').val('');
    });
  }

};

