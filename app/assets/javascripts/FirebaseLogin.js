var ref = new Firebase("https://learn-with-me.firebaseio.com");

$(function() {
  $("#googleLogin").click(function(){
    ref.authWithOAuthPopup("google", function(error, user) {
      if (error) {
        console.log('Authentication error: ', error);
      } else if (user) {
        console.log('User ' + user.id + ' authenticated via the ' + user.provider + ' provider!');
        var data = {userinfo: user['google']['cachedUserProfile'], token: user['token']}
        saveUserInfo(user)
      } else {
        console.log("User is logged out.")
      }
    },
    {
      scope: "email, https://www.googleapis.com/auth/plus.login"
    });
  });

  $("#facebookLogin").click(function(){
    ref.authWithOAuthPopup("facebook", function(error, user) {
      if (error) {
        console.log('Authentication error: ', error);
      } else if (user) {
        saveUserInfo(user)
      } else {
        console.log("User is logged out.")
      }
    });
  });


  var saveUserInfo = function(userInfo){
    var response = $.post('/users', userInfo)
    response.done(function(response){
      location.href = "/courses"
    })
    response.fail(function(error, xhr, status){
      console.log(error, xhr, status)
    })
  };


});


