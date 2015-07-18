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

var submitEditsButton = {

}
