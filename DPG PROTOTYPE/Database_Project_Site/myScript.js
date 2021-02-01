function myFunction () {
document.getElementById("demo").innerHTML = "Changie";
}

function mysFunction () {
document.getElementById("demo").innerHTML = "good";
}


window.onbeforeunload = function (e)
{
var e = e || window.event,
message = 'are you sure you want to leave page?';

if (e)                                  //using if statement to aak user if user wants to leave page
{
	e.returnValue = message;
}
return message;
}
