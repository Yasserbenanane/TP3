-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 04 Janvier 2023 à 17:39
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pays_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `table communes`
--

CREATE TABLE IF NOT EXISTS `table communes` (
  `code_commune` varchar(20) NOT NULL,
  `nom_commune` varchar(20) NOT NULL,
  `population_VF` int(11) DEFAULT NULL,
  `surface` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `num_departement` varchar(20) NOT NULL,
  PRIMARY KEY (`code_commune`),
  KEY `num_departement` (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table communes`
--

INSERT INTO `table communes` (`code_commune`, `nom_commune`, `population_VF`, `surface`, `longitude`, `latitude`, `num_departement`) VALUES
('78000', 'Versailles', 8000, '77.18 km²', '22.6793', '79.5986', '78'),
('91021', 'Arpajon', 2000, '25.18 km²', '24.8947', '33.3897', '91'),
('91940', 'Les Ulis', 1000, '5.18 km²', '48.6793', '2.1665', '91'),
('95011', 'Ambleville', 6000, '3.185 km²', '10.6725', '20.7322', '95'),
('95014', 'Arouville', 4000, '4.176 km²', '13.7836', '3.2776', '95');

-- --------------------------------------------------------

--
-- Structure de la table `table departement`
--

CREATE TABLE IF NOT EXISTS `table departement` (
  `num_departements` varchar(20) NOT NULL,
  `nom_departement` varchar(20) NOT NULL,
  `code_region` varchar(20) NOT NULL,
  PRIMARY KEY (`num_departements`),
  KEY `code_region` (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table departement`
--

INSERT INTO `table departement` (`num_departements`, `nom_departement`, `code_region`) VALUES
('78', 'val de marne', '11'),
('91', 'Essonne', '11'),
('95', 'Val d''Oise', '11');

-- --------------------------------------------------------

--
-- Structure de la table `table regions`
--

CREATE TABLE IF NOT EXISTS `table regions` (
  `code_region` varchar(11) NOT NULL,
  `nom_region` int(11) NOT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table regions`
--

INSERT INTO `table regions` (`code_region`, `nom_region`) VALUES
('', 0),
('11', 0);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `table communes`
--
ALTER TABLE `table communes`
  ADD CONSTRAINT `table@0020communes_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `table departement` (`num_departements`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `table departement`
--
ALTER TABLE `table departement`
  ADD CONSTRAINT `table@0020departement_ibfk_1` FOREIGN KEY (`code_region`) REFERENCES `table regions` (`code_region`) ON DELETE CASCADE ON UPDATE CASCADE;
