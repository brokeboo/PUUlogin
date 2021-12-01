<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>PHP algus</title>
</head>
<body>
<?php
echo "<h1>Tere hommikust!</h1>";
$tekst="Täna on esimene PHP tund";
echo $tekst;
echo "<br>";
echo "<h2>Matemaatika tehed. Mõistatus.</h2>";
echo "<h3>Arva ära kaks arvu!</h3>";
$arv1=5;
$arv2=10;
//kahe arvude liitmine(+)
echo "Kui liidame kokku, vastus on ".($arv1+$arv2);
echo "<br>";
//jagamine
echo "Kui esimene arv jagame teise arvuga, siis vastuseks on ".($arv1/$arv2);
?>
<footer>
    <?php
    echo "Tänane kuupäaev ".date("d.m.Y");
    echo "<br>";
    echo "Kell on ".date("H: i: s");
    ?>
</footer>
</body>
</html>