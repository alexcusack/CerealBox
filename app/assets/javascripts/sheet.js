// $('div.new-sheet-area').on('blur', 'input', function(event) {
//   event.preventDefault();
//   var inputField = $(this);

//   // AJAX...
//   // ...HIDE SELF...
//   inputField.toggle();
//   // ...FIND SIBLING EMBED/IMG/P/MAP...
//   // and add our link/place

// })

// // on EDIT - CLICK
// .siblings('input').toggle();

// $('div.new-sheet-area').on('submit', 'form', function(event) {
//   event.preventDefault();
//   var form = $(this);

//   var request = $.ajax({
//     url: form.attr('action');
//     data: form.serialize();
//   })
// });


var sheetArea = {
  focusListen: function(){
    $('div.new-sheet-area').on('focus', 'input', function(event){
      event.preventDefault();
      $(this).fadeTo('fast', 1.0)
    })
  },

  blurListen: function(){
    $('div.new-sheet-area').on('blur', 'input', function(event){
      event.preventDefault();
      sheetArea['handle_' + this.id](this);
      $(this).fadeTo('fast', 0.2);
    })
  },

  handle_sheet_article: function(input) {
    request = $.ajax({
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
