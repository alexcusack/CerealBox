console.log('asdf')
// var newCourseContent = {

//   submitListen: function() {
//     // $(document).on('ajax:success', 'div.new-content form', function(event, newContent) {
//     $(document).on('ajax:success', 'form', function(event, newContent) {
//       console.log('adding article worked...');
//       var contentType = $(this).attr('data-content');
//       var destination = $('div.content').find('div.' + contentType);
//       destination.prepend(newContent);
//       $(this).find('input:text').val('');
//     });
//   }

// };

$(function() {
  $('div.new-content').on('submit', 'form', function(event) {
    event.preventDefault();
    var form = $(this);

    var method = $(this).attr('method');
    var action = $(this).attr('action');

    var request = $.ajax({
      type: method,
      url: action,
      data: form.serialize()
    });
    request.done(function(newContent) {
      console.log(newContent);
    });
    request.fail(function(error) {
      alert('fail.');
    });

  });

});
