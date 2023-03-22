#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Pays
#------------------------------------------------------------

CREATE TABLE Pays(
        Id_pays           Varchar (50) NOT NULL ,
        Nom               Varchar (50) NOT NULL ,
        Nombre_d_habitant Varchar (50) NOT NULL ,
        Superfice         Varchar (50) NOT NULL
	,CONSTRAINT Pays_PK PRIMARY KEY (Id_pays)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Agence
#------------------------------------------------------------

CREATE TABLE Agence(
        Id_agence   Varchar (50) NOT NULL ,
        Nom         Varchar (50) NOT NULL ,
        Nb_employes Varchar (50) NOT NULL ,
        Id_pays     Varchar (50) NOT NULL
	,CONSTRAINT Agence_PK PRIMARY KEY (Id_agence)

	,CONSTRAINT Agence_Pays_FK FOREIGN KEY (Id_pays) REFERENCES Pays(Id_pays)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Modèle
#------------------------------------------------------------

CREATE TABLE Modele(
        Id_modele    Varchar (50) NOT NULL ,
        Denomination Varchar (50) NOT NULL ,
        Puissance    Varchar (50) NOT NULL
	,CONSTRAINT Modele_PK PRIMARY KEY (Id_modele)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Client
#------------------------------------------------------------

CREATE TABLE Client(
        Id_client   Varchar (50) NOT NULL ,
        Nom         Varchar (50) NOT NULL ,
        Adresse     Varchar (50) NOT NULL ,
        Code_postal Varchar (50) NOT NULL ,
        Ville       Varchar (50) NOT NULL
	,CONSTRAINT Client_PK PRIMARY KEY (Id_client)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Type
#------------------------------------------------------------

CREATE TABLE Type(
        Id_type Varchar (50) NOT NULL ,
        Libelle Varchar (50) NOT NULL
	,CONSTRAINT Type_PK PRIMARY KEY (Id_type)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Catégorie
#------------------------------------------------------------

CREATE TABLE Categorie(
        Id_categorie Varchar (50) NOT NULL ,
        Libelle      Varchar (50) NOT NULL
	,CONSTRAINT Categorie_PK PRIMARY KEY (Id_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Véhicule
#------------------------------------------------------------

CREATE TABLE Vehicule(
        Id_vehicule     Varchar (50) NOT NULL ,
        Immatriculation Varchar (50) NOT NULL ,
        Age             Varchar (50) NOT NULL ,
        Etat            Varchar (50) NOT NULL ,
        Type            Varchar (50) NOT NULL ,
        Id_agence       Varchar (50) NOT NULL ,
        Id_modele       Varchar (50) NOT NULL ,
        Id_type         Varchar (50) NOT NULL ,
        Id_categorie    Varchar (50) NOT NULL
	,CONSTRAINT Vehicule_PK PRIMARY KEY (Id_vehicule)

	,CONSTRAINT Vehicule_Agence_FK FOREIGN KEY (Id_agence) REFERENCES Agence(Id_agence)
	,CONSTRAINT Vehicule_Modele0_FK FOREIGN KEY (Id_modele) REFERENCES Modele(Id_modele)
	,CONSTRAINT Vehicule_Type1_FK FOREIGN KEY (Id_type) REFERENCES Type(Id_type)
	,CONSTRAINT Vehicule_Categorie2_FK FOREIGN KEY (Id_categorie) REFERENCES Categorie(Id_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Marque
#------------------------------------------------------------

CREATE TABLE Marque(
        Id_marque Varchar (10) NOT NULL ,
        Nom       Varchar (10) NOT NULL
	,CONSTRAINT Marque_PK PRIMARY KEY (Id_marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: est un
#------------------------------------------------------------

CREATE TABLE est_un(
        Id_marque    Varchar (10) NOT NULL ,
        Id_vehicule  Varchar (50) NOT NULL
	,CONSTRAINT est_un_PK PRIMARY KEY (Id_marque,Id_vehicule)

	,CONSTRAINT est_un_Marque_FK FOREIGN KEY (Id_marque) REFERENCES Marque(Id_marque)
	,CONSTRAINT est_un_Vehicule0_FK FOREIGN KEY (Id_vehicule) REFERENCES Vehicule(Id_vehicule)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: a loué
#------------------------------------------------------------

CREATE TABLE a_loue(
        Id_client       Varchar (50) NOT NULL ,
        Id_vehicule     Varchar (50) NOT NULL ,
        Date_de_retrait Date NOT NULL ,
        Date_de_retour  Date NOT NULL
	,CONSTRAINT a_loue_PK PRIMARY KEY (Id_client,Id_vehicule)

	,CONSTRAINT a_loue_Client_FK FOREIGN KEY (Id_client) REFERENCES Client(Id_client)
	,CONSTRAINT a_loue_Vehicule0_FK FOREIGN KEY (Id_vehicule) REFERENCES Vehicule(Id_vehicule)
)ENGINE=InnoDB;

