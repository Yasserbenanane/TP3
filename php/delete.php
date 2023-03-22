<html>
<body>
<?php

    mysql_connect ("sql211.epizy.com","epiz_33553022","6J01ufzoiYC");
    mysql_select_db ("epiz_33553022_scolarite");

    $c=$_POST['Num'];

    $requete="DELETE FROM eleve WHERE num_eleve=$c";
    echo $requete;

    $resultat=mysql_query($requete);

    if(!$resultat){
        echo "<h1> echec de la requete $requete </h1>";
        echo mysql_error();
    }
    else{
        if(mysql_affected_rows()){
            echo "<h1> Suppression effectuer</h1>";
            echo '<h3> <a href="#"Retour au menu</a></h3>';
        }
    }
    mysql_close();
?>
</body>
</html>