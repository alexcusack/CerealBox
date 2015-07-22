var loginModal = {
  clickListen: function() {$('.modal-trigger').on("click", function(){
      $('#modal1').openModal();
      loginModal.submitListen();
    });
  },

  submitListen: function(){
    var form = $('#signup').find('form')
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
        console.log(response)
      })
    });
  }
};

























// $(document).ready(function(){
//   $('#modal1').leanModal({
//         dismissible: true, // Modal can be dismissed by clicking outside of the modal
//         opacity: .5, // Opacity of modal background
//         in_duration: 10000, // Transition in duration
//         out_duration: 200, // Transition out duration
//       }
//     );

//   $('ul.tabs').tabs();
// });





















// $(document).ready(function(){
