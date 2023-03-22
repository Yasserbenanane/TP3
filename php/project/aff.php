<html>
    <head>
        <title>La gestion d'une base de données MySQL en PHP</title>
    </head>
    <body>
        <?php
           mysql_connect ("sql211.epizy.com","epiz_33553022","6J01ufzoiYC");
           mysql_select_db ("epiz_33553022_scolarite");
            $requete="select * from eleve";
            $resultat=mysql_query($requete);
            echo mysql_num_rows($resultat);
        ?>
        <table border=1>
            <tr>
                <td>code_eleve</td>
                <td>nom_eleve</td>
                <td>num tel</td>
                <td>adresse</td>
            </tr>
        <?php while($enreg=mysql_fetch_array($resultat))
        {
        ?>
        <tr>
            <td><?php echo $enreg["num_eleve"];?></td>
            <td><?php echo $enreg["nom_prenom"];?></td>
            <td><?php echo $enreg["num_tel_eleve"];?></td>
            <td><?php echo $enreg["adresse_eleve"];?></td>
        </tr>
        <?php } ?>
        </table>
        <?php
        mysql_close();
        ?>
    </body>
</html>