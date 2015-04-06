var directionsDisplay = new google.maps.DirectionsRenderer();
var directionsService = new google.maps.DirectionsService();
$(document).ready(function(){

    $("#map").height(gon.height)
    $("#map").width(gon.width)
    $("#map-container").width(gon.width)
    handler = Gmaps.build('Google')
    alert('')
    handler.buildMap({ provider: {}, internal: {id: 'map'} }, function(){
	markers = handler.addMarkers(jQuery.parseJSON(gon.gmap_data))
	handler.bounds.extendWith(markers)
	handler.fitMapToBounds()
    })
});

 
  
  
   
  
  
  

  
  
  
  
  
  
