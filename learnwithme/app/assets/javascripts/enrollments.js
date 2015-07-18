$( document ).ready(function() {

  $('a').on('click', function(event){
    event.preventDefault();
    var url = event.target.href
    var request = $.post(url)

    request.done = function(response){
      console.log('win')
    },

    request.fail = function(response){
      location.href = "/users"
    };

  });

});
