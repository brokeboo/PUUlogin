<?php
$servernimi='localhost';
$kasutajanimi='ilya1';
$parool='Ilyuxa2005';
$andmebaasinimi='antonov20';
$yhendus=new mysqli($servernimi, $kasutajanimi, $parool, $andmebaasinimi);
$yhendus->set_charset('UTF8');
?>