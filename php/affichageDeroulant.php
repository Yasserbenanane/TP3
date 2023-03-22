<?php 

    mysql_connect ("sql211.epizy.com","epiz_33553022","6J01ufzoiYC");
    mysql_select_db ("epiz_33553022_scolarite");

    echo '<form action"" methode="post">';
    echo '<h2>Selection</h2>';
    echo '<p> Selectionnez :</p>';
    echo '<select name"numero" size="5">';
    $requete="SELECT num_eleve, nom_prenom FROM eleve ORDER BY num_eleve;";
    $resultat= mysql_query($requete);

    while($row=mysql_fetch_assoc($resultat)){
        echo '<option value = "'. $row['num_eleve'] . '">'. $row["nom_prenom"] . '</option>'; 
    }
    echo "</select>";
    echo "</form>";
    echo '<h3><a href="project/project.html">Retour au Menu</a></h3>';

    mysql_close();

    ?>