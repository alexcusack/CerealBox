var favoriteButton = {

  clickListen: function() {
    $('body').on('click', 'button.favorite', function(event) {
      event.preventDefault();
      var button = $(this);
      if (button.text() === 'Unfavorite') {
        favoriteButton.deleteFavorite(button)
      } else {
        favoriteButton.addFavorite(button);
      };
    })
  },

  addFavorite: function(button) {
    var request = $.post(button.attr('id'));
    button.text('Unfavorite');
  },

  deleteFavorite: function(button) {

    var request = $.ajax({
      type: 'DELETE',
      url: button.attr('id')
    });
    button.text('Favorite this!');
  }
}
