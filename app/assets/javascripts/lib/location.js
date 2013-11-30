navigator.geolocation.getCurrentPosition(GetLocation);
alert('getting location');

function GetLocation(location) {
	$.get("../ajax/rooms?latitude=" + location.coords.latitude + "&longitude="+ location.coords.longitude, function(data,status){
	  var result;

	  $('#hotels_container').html(result);

	});
}