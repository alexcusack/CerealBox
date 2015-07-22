var facebookShare = {
  clickListen: function() {
    $('.facebook-share').on('click', function(event) {
      event.preventDefault();
      shareOnFacebook(this.id);
    });
  }
};


var shareOnFacebook = function(url){
  FB.ui(
   {
    method: 'share',

    href: 'http://www.pageresource.com/wallpapers/79910/cats-cute-cat-animal-cute-grass-photo-hd-wallpaper.html'
  }, function(response){});
};

 // href: 'http://localhost:3000/'+url  #doesn't work on localhost
