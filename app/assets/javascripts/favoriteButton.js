// var favoriteButton = {

//   clickListen: function() {
//     $('body').on('click', 'button.favorite-button', function(event) {
//       event.preventDefault();
//       var button = $(this);
//       if (button.hasClass('favorited')) {
//         favoriteButton.deleteFavorite(button)
//       } else {
//         favoriteButton.addFavorite(button);
//       };
//     })
//   },

//   addFavorite: function(button) {
//     var request = $.post(button.attr('id'));
//     button.addClass('favorited');
//     button.text('Unfavorite');
//   },

//   deleteFavorite: function(button) {

//     var request = $.ajax({
//       type: 'DELETE',
//       url: button.attr('id')
//     });
//     button.removeClass('favorited');
//     button.text('Favorite this!');
//   }
// }
