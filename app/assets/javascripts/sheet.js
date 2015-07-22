var sheetArea = {
  init: function(){
    $('div.new-sheet-area').on('focus', 'input', function(event){
      event.preventDefault();
      $(this).fadeTo('fast', 1.0)
    })

    $('div.new-sheet-area').on('blur', 'input', function(event){
      event.preventDefault();
      if (this.value.length) sheetArea['handle_' + this.id](this);
      $(this).fadeTo('fast', 0.2);
    })
  },

  handle_sheet_article: function(input) {
    var request = $.ajax({
      url: "/fetch-element",
      data: {url: input.value},
      method: 'post',
      dataType: 'html',
    });

    request.done(function(response){
      $(input).siblings('.content').html(response)
    });
    request.error(function(response){
      console.log(response)
    });
  },


  handle_sheet_image: function(input) {
    $(input).siblings('img').attr('src', input.value)
  },

  handle_sheet_video: function(input) {
    videoTag = input.value.split('=')[1]
    videoArea = $(input).siblings('iframe');
    videoArea.attr('src', "https://www.youtube.com/embed/" + videoTag);
    videoArea.toggle();
  },

  handle_sheet_map: function() {
    // alert('Good map.')
  },

};
