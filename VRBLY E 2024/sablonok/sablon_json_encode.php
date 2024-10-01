<?php


http_response_code($resCode);
header('Content-Type: application/json; charset=utf-8');
print json_encode($data);
?>