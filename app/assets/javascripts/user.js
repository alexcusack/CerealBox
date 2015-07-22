var loginModal = {
  clickListen: function() {$('.modal-trigger').on("click", function(){
      $('#modal1').openModal();
      loginModal.submitListen();
      oAuth();
    });
  },

  submitListen: function(){
    var form_signin = $('#signin').find('form')
    var form_signup = $('#signup').find('form')

    loginModal.login(form_signup);
    loginModal.login(form_signin);

  },

  login: function(form){
    form.on('submit', function(event){
      event.preventDefault();
      var request = $.ajax({
        url: "/users",
        method: 'post',
        data: form.serialize(),
      });

      request.done(function(response){
        location.href = "/courses"
      })

      request.fail(function(response){
        alert("user sign in failed, please try again")
      })
    });
  }
};


// var login = function(form) = form.on('submit', function(event){
    //   event.preventDefault();
    //   var request = $.ajax({
    //     url: "/users",
    //     method: 'post',
    //     data: form.serialize(),
    //   });

    //   request.done(function(response){
    //     location.href = "/courses"
    //   })

    //   request.fail(function(response){
    //     alert("user sign in failed, please try again")
    //   })
    // });

    // login()
// };
