
var editContentButton = {
  clickListen: function() {
    $('div.content').on('click', 'a.edit-content', function(event) {
        event.preventDefault();
        var button = $(this);

        var action = $(this).attr('href') + '/edit';
        var request = $.ajax({
          url: action
        });
        request.done(function(editContentForm) {
          // var info = button.siblings('div.content-fields');
          // info.toggle();
          button.parent().append(editContentForm);
          button.addClass('cancel').text('cancel');
        });

    });
  }
};

var cancelButton = {
  clickListen: function() {
    $('div.content').on('click', 'a.cancel', function(event) {
      event.preventDefault();
      alert('Yeahhh');
    })
  }
}

var editContentForm = {
  submitListen: function() {
    $(document).on('ajax:success', 'div.content form', function(event, updatedContent) {
      var form = $(this);
      form.closest('div.course-content').replaceWith(updatedContent);
    });
  }
};



