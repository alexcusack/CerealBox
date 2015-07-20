
var sheetMap = (function() {

  var _gm = google.maps;
  // var mapDiv = document.querySelector('div.test');

  function getMapLocation() {
    var place = $('div#sheet-map').attr('data-location');
    return place;
  };

  function renderMap(location) {
    // original: var spot = new _gm.LatLng(40, 0);

    var mapOptions = {
      center: location,
      zoom: 6
      // mapTypeId: _gm.MapTypeId.ROADMAP
    };
    var map = new _gm.Map(document.querySelector('div#sheet-map'), mapOptions);

    var marker = new google.maps.Marker({
      position: location,
      animation: _gm.Animation.DROP
    });
    marker.setMap(map);
  };

  function makeMap() {
    var geocoder = new _gm.Geocoder();
    var place = getMapLocation();

    geocoder.geocode({ 'address': place }, function(results, status) {
      var location = results[0].geometry.location;
      renderMap(location);
    });
  };

  return {
    makeMap: makeMap
  };
}());

// $(function() {
//   sheetMap.makeMap();
// });
