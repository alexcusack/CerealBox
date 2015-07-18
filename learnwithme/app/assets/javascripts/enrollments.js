$( document ).ready(function() {

  $('a').on('click', function(event){
    event.preventDefault();
    var url = event.target.href;

    var request = $.post(url, {option: event.target.text});
    origin = $(this);
    request.done(function(response){
      if (response.course === 'course joined'){
        origin.text("Joined")
      }else{
        origin.text("Join Course")
      }
    });

    request.fail(function(error, xhr, status){
      location.href = "/users"
    })

  });

});
