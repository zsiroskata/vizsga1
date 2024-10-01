<?php
function getApi($url) {
	$json=file_get_contents($url);
	if (http_response_code()==200) return json_decode($json,true);
	else return false;
}

?>