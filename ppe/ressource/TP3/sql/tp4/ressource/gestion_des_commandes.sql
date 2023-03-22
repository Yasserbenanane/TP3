-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 11 Janvier 2023 à 16:59
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion des commandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `num_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(11) NOT NULL,
  `det_reference` int(11) NOT NULL,
  `cat_remise` int(11) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`num_categorie`, `nom_categorie`, `det_reference`, `cat_remise`) VALUES
(12, 'fruit', 5, 3),
(18, 'legume ', 8, 5);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL,
  `client_civilite` varchar(20) NOT NULL,
  `client_nom` varchar(20) NOT NULL,
  `client_prenom` varchar(20) NOT NULL,
  `client_dep` varchar(20) NOT NULL,
  `client_ville` varchar(20) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`client_id`, `client_civilite`, `client_nom`, `client_prenom`, `client_dep`, `client_ville`) VALUES
(77, 'homme', 'cabaret ', 'romain', '91300', 'Massy'),
(88, 'homme', 'benanane', 'yasser', '91940', 'Les Ulis');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `com_num` int(11) NOT NULL,
  `com_client` varchar(20) NOT NULL,
  `date_commande` date DEFAULT NULL,
  `com_montant` varchar(20) NOT NULL,
  `client_id` int(11) NOT NULL,
  `produit_ref` int(11) NOT NULL,
  PRIMARY KEY (`com_num`),
  KEY `client_id` (`client_id`,`produit_ref`),
  KEY `produit_ref` (`produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`com_num`, `com_client`, `date_commande`, `com_montant`, `client_id`, `produit_ref`) VALUES
(13, 'carotte', '2023-01-03', '30', 88, 13),
(60, 'Yasser', '2023-12-26', '80', 77, 99);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `produit_ref` int(11) NOT NULL,
  `produit_nom` varchar(20) NOT NULL,
  `produit_prix` int(11) NOT NULL,
  `produit_poids` varchar(20) NOT NULL,
  `produit_vues` varchar(20) NOT NULL,
  `produit_stock` varchar(20) NOT NULL,
  `produit_code` varchar(20) NOT NULL,
  `num_categorie` int(11) NOT NULL,
  PRIMARY KEY (`produit_ref`),
  KEY `produit_prix` (`produit_prix`,`num_categorie`),
  KEY `num_categorie` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`produit_ref`, `produit_nom`, `produit_prix`, `produit_poids`, `produit_vues`, `produit_stock`, `produit_code`, `num_categorie`) VALUES
(13, 'tomate', 20, '10kg', '5', '30', '11', 12),
(99, 'kiwi', 1000, '1Tone', '50', '9000', '30', 18);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`),
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`produit_ref`) REFERENCES `produits` (`produit_ref`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`num_categorie`) REFERENCES `categorie` (`num_categorie`);
