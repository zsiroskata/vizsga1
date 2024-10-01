<?php
function connect()
{	
    $host = '';
		$user = '';
    $pass = '';
    $dbname = '';
    
		$connect = new mysqli($host,$user,$pass,$dbname);
		if ($connect->connect_error)
		{
			die("Sikertelen kapcsolódás!");
    }
	$connect->query("SET NAMES 'utf8'");
	$connect->query("SET CHARACTER SET 'utf8'");
	return $connect;
}
?>

