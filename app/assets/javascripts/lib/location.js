navigator.geolocation.getCurrentPosition(GetLocation);
alert('getting location');

function GetLocation(location) {
	$.get("../ajax/?latitude=" + location.coords.latitude + "&longitude="+ location.coords.longitude, function(data,status){
	  var result;
	  switch(parseInt(data))
	  {
	    case 0:
	    result="no-one"
	    break;
	  case 1:
	    result="1 person"
	    break;
	  default:
	    result=data + " people"
	  };

	$('#body').html(result);

	});
}