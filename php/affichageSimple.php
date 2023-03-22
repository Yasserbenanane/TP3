<html>
<head>
<?php
    mysql_connect ("sql211.epizy.com","epiz_33553022","6J01ufzoiYC");
    mysql_select_db ("epiz_33553022_scolarite");

$requete="select * from eleve";
$resultat= mysql_query($requete);

while($ligne=mysql_fetch_assoc($resultat)){
    echo $ligne["num_eleve"];echo ",";
    echo $ligne["nom_prenom"];echo ",";
}

echo '<h1><a href="project/project.html">RETOUR au menu</a></h1>';
mysql_close();
?>
</head>
</html>