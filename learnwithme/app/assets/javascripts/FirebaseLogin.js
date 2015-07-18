var ref = new Firebase("https://learn-with-me.firebaseio.com");

$(function() {
    $("#googleLogin").click(function(){
      ref.authWithOAuthPopup("google", function(error, user) {
        if (error) {
          console.log('Authentication error: ', error);
        } else if (user) {
          console.log('User ' + user.id + ' authenticated via the ' + user.provider + ' provider!');
          debugger;
        } else {
          console.log("User is logged out.")
        }
      });
    });

    $("#facebookLogin").click(function(){
      ref.authWithOAuthPopup("facebook", function(error, user) {
        if (error) {
          console.log('Authentication error: ', error);
        } else if (user) {
          console.log('User ' + user.id + ' authenticated via the ' + user.provider + ' provider!');
          debugger;
        } else {
          console.log("User is logged out.")
        }
      });
    });
});


