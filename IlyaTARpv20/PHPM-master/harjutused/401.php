<?php
//andmed massiivis
$data=[
    "nimi"=> "Ilya Antonov",
    "aadress"=> "Sõpruse pst 184, Tallinn",
    "pilt"=> "tthk.jpg",
    "koduleht"=> "https://antonov20.thkit.ee/"
];
?>
<h1>Ülesanne 401</h1>
<p> <b>
        <?=$data["nimi"]?>
    </b></p>
<p><i>
        <?=$data["aadress"]?>
    </i></p>
<img src="<?=$data["pilt"]?>" alt="pildike">
<a href="<?=$data["koduleht"]?>" target="_blank">Minu koduleht</a>
<!--massiv array funktsiooniga-->
<h1>Ülesanne 401/var 2 - array()</h1>
<?php
$array=array("Ilya Antonov","Tallinn, Sõpruse pst 184","tthk.jpg","antonov20.thkit.ee");
echo "<b>Nimi: ".$array[0]."</b><br>";
echo "<i>Aadress: ".$array[1]."</i><br>";
echo "<img src='$array[2]' alt='pildike'>";
echo "<br><a href='https://$array[3]'>Koduleht</a>";
?>
<a href="../test.php">tagasi</a>;
