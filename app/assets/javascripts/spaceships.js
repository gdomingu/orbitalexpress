var map = L.mapbox.map('map_complete', '');

map.setView([30, -0], 1);
var d = [];

$('.flight').each(function(){
  var latRand1 = Math.floor(Math.random()*91);
  var longRand1 = Math.floor(Math.random()*181);
  var latRand2 = Math.floor(Math.random()*91);
  var longRand2 = Math.floor(Math.random()*181);
  d.push({
    type: 'Feature',
    'properties': {
      'title': $(this).data('docking-title'),
      'marker-size': 'small',
      'marker-symbol': 'embassy',
      'marker-color': '#77C99B'
      },
      geometry: {
          type: 'Point',
          coordinates:
            [longRand1, latRand1]
      }
  });
  d.push({
    type: 'Feature',
    'properties': {
      'title': $(this).data('launching-title'),
      'marker-size': 'small',
      'marker-symbol': 'embassy',
      'marker-color': '#77C99B'
      },
      geometry: {
          type: 'Point',
          coordinates:
            [longRand2, latRand2]
      }
  });
});

var geoJson = {
    type: 'FeatureCollection',
    features: d

};


map.markerLayer.setGeoJSON(geoJson);

L.imageOverlay('https://s3-us-west-2.amazonaws.com/gabe-random/pinwheel-galaxy.jpg').addTo(map);

// / var markers = $('.leaflet-marker-pane img')
// / var delay = 0;
// / $.each(markers, function(k,v) {
// /   var marker = $(v);
// /   delay += 50;
// /   setTimeout(function() {
// /     marker.show();
// /   }, delay);
// / });

// / map.markerLayer.on('mouseover', function(e) {
// /     e.layer.openPopup();
// / });
// / map.markerLayer.on('mouseout', function(e) {
// /     e.layer.closePopup();
// / });
// / map.markerLayer.on('click', function(e) {
// /     e.layer.unbindPopup();
// /     window.open(e.layer.feature.properties.url,"_parent");
// / });