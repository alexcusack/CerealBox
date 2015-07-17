$(function() {
  $(document).on('ajax:success', 'form', function(event, newContent) {
    var contentType = $(this).attr('data-content');
    var destination = $('div.current-content').find('div.' + contentType);
    destination.prepend(newContent);
    // form.parent().prepend(newContent);
  });
});
