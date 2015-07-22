// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
// require turbolinks
//= require react
//= require react_ujs
//= require d3
//= require components
//= require_tree .

  // OLD JQUERY
  // newCourseContent.submitListen();
  // editContentButton.clickListen();
  // editContentForm.submitListen();
  // cancelButton.clickListen();
  // deleteButton.clickListen();

$(function() {
  // favoriteButton.clickListen();
  enroll.clickListen();
  sheetMap.makeMap();
  getCourses();
  facebookShare.clickListen();
  sheetArea.init();
  loginModal.clickListen();
});

$(document).ready(function(){
//   // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
//   $('.modal-trigger').on("click", function(){
//     $('#modal1').openModal();
//   });
  $('#modal1').leanModal({
        dismissible: true, // Modal can be dismissed by clicking outside of the modal
        opacity: .5, // Opacity of modal background
        in_duration: 300, // Transition in duration
        out_duration: 200, // Transition out duration
      }
    );

//   $('ul.tabs').tabs();
});
