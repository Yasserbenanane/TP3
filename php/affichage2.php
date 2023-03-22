<html>
<body>
<?php
mysql_connect ("sql211.epizy.com","epiz_33553022","6J01ufzoiYC");
mysql_select_db ("epiz_33553022_scolarite");

    echo '<from action="" method="post">';

    echo "<h2>Selection</h2>";

    echo "<p>Selection :</p>";

    echo '<select name="numero" size="5">';

    $requete="select Num_eleve, nom_prenom from eleve order by Num_eleve;";

    $resultat= mysql_query($requete);

    while ($ligne=mysql_fetch_assoc($resultat)){
        echo '<option value = "'. $row['Num_eleve'] . '">'. $row["nom_prenom"] . '</option>'; 
    }
    echo "</select>";

    echo "</form>";

    echo '<h3><a href="#">Retour au Menu</a></h3>';
    
mysql_close();
?>
</body>
</html>