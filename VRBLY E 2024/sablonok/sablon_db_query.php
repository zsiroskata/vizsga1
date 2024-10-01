<?php
function defaultQuery($sql) {
	$array=false;
	$con=connect();
	$e=$con->query($sql);
	if ($e && $e->num_rows>0) {
		$n=0;
		while ($row=$e->fetch_assoc()) {
			$array[$n]=$row;
			$n++;
		}
	}
	$con->close();
	return $array;
}

function queryAll($table) {
	$sql= "SELECT * FROM ".$table;
	return defaultRequest($sql);
}

?>