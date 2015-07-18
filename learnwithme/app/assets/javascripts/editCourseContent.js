
var editContentButton = {
  clickListen: function() {
    $('div.current-content').on('click', 'a.edit-content', function(event) {
      event.preventDefault();
      var button = $(this);

      var action = $(this).attr('href') + '/edit';
      var request = $.ajax({
        url: action
      });
      request.done(function(editContentForm) {
        button.parent().append(editContentForm);
        button.siblings('a.cancel').toggle();
        button.remove();
      });

    });
  }
};

var cancelButton = {
  clickListen: function() {
    $('div.current-content').on('click', 'a.cancel', function(event) {
      event.preventDefault();
      var button = $(this);

      button.siblings('form').toggle();
      button.text(function(idx, text) {
        return text == 'cancel' ? 'edit' : 'cancel'
      });
    })
  }
}

var deleteButton = {
  clickListen: function() {
    $('div.current-content').on('click', 'a.delete-content', function(event) {
      event.preventDefault();
      var button = $(this);

      var request = $.ajax({
        type: 'DELETE',
        url: button.attr('href')
      });
      request.done(function(_null) {
        button.closest('div.course-content').remove();
      });
      request.fail(function(error) {
        alert('fail');
      });

    });
  }
};

var editContentForm = {
  submitListen: function() {
    $(document).on('ajax:success', 'div.content form', function(event, updatedContent) {
      var form = $(this);
      form.closest('div.course-content').replaceWith(updatedContent);
    });
  }
};



