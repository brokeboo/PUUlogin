<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Ülesanne 402</title>
</head>
<body>
<a href="../test.php">tagasi</a>;
<h1>Ülesanne 402</h1>
<h2>1. 20 Checkbox tsükliga</h2>
<?php
    $i=1;
    while($i<=20){
        echo "<input type='checkbox' id='$i' name='box[]' value='$i'>";
        echo "<label for='$i'>box'.$i.'</label><br>";
    $i++;
    }
?>
<h2>2.20 tekstkasti tsükliga</h2>
<?php




?>
<h2>3. 20 Radionupud tsükliga</h2>
<?php
    $u=2;
    while($u<=20){
        echo "<input type='radio' id='i.$u' name='rad' value='$u'>";
        echo "<label for='i.$u'>radio'.$u.'</label><br>";
    $u++;
    }
?>