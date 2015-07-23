
var sheetMap = (function() {

  var _gm = google.maps;
  // var mapDiv = document.querySelector('div.test');
  var mapDiv;

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

    // console.log("Truth?", !!mapDiv);
    if (mapDiv) {
      var map = new _gm.Map(mapDiv, mapOptions);
    };
    var panoramaOptions = {
        position: location,
        pov: {
          heading: 34,
          pitch: 10
        }
      };
      var streetViewDiv = document.querySelector('div#sheet-street-view')
      var panorama = new google.maps.StreetViewPanorama(streetViewDiv, panoramaOptions);
      map.setStreetView(panorama);
    // var marker = new google.maps.Marker({
    //   position: location,
    //   animation: _gm.Animation.DROP
    // });
    // marker.setMap(map);
  };

  function initialize() {
    var geocoder = new _gm.Geocoder();
    var place = getMapLocation();

    geocoder.geocode({ 'address': place }, function(results, status) {
      var location = results[0].geometry.location;
      renderMap(location);
    });
  };

  function makeMap() {
    mapDiv = document.querySelector('div#sheet-map');
    if (mapDiv) {
      initialize();
    };
  };

  return {
    makeMap: makeMap
  };
}());

// $(function() {
//   sheetMap.makeMap();
// });
