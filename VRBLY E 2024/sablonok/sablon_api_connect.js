
function ajax(url,fvg) {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
		if (this.status==200) {
			myObj = JSON.parse(this.responseText);
			fvg(myObj);
		}
		else {
			
		}
    }
    xhttp.open("GET",url);
    xhttp.send();
}
