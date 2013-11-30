navigator.geolocation.getCurrentPosition(GetLocation);

function GetLocation(location) {
	$.get("../ajax/rooms?latitude=" + location.coords.latitude + "&longitude="+ location.coords.longitude, function(data,status){

	  $('#hotels_container').html(data);

	});
}