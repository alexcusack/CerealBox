var facebookShare = {
  clickListen: function() {
    $('.facebook-share').on('click', function(event) {
      event.preventDefault();
      shareOnFacebook(this.href);
    });
  }
};


var shareOnFacebook = function(url){
  FB.ui(
   {
    method: 'share',
    href: url
  }, function(response){});
};



// Add one of these button anywhere you want to share something to facebook
// Course
// <a class="waves-effect waves-light btn facebook-share" href="<%= @course.id %>">Share on Facebook</a>

// Sheet
// <a class="waves-effect waves-light btn facebook-share" href="<%= @sheet.id %>">Share on Facebook</a>
