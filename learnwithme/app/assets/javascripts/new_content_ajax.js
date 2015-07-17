$(function() {
  $(document).on('ajax:success', 'form', function(event, newContent) {
    var contentType = $(this).attr('data-content');
    var destination = $('div.current-content').find('div.' + contentType);
    // this will become html
    destination.prepend(newContent.title);
  });
});
