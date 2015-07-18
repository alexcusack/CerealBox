// var editContentForm = React.createClass

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
          var info = button.siblings('div.content-fields');
          info.toggle();
          button.parent().append(editContentForm);
        });

    });
  }
};

var editContentForm = {
  submitListen: function() {
    $(document).on('ajax:success', 'div.content form', function(event, updatedContent) {
      var form = $(this);
      form.closest('div.course-content').replaceWith(updatedContent);
      // form.siblings('div.content-fields').remove();
      // form.siblings('div.change-content-links').remove();
      // form.parent().prepend(updatedContent);
      // form.remove();
    });
  }
};
