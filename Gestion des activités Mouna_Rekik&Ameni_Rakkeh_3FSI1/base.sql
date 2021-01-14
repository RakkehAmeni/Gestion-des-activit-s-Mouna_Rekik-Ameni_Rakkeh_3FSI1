-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 15 déc. 2020 à 14:01
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `base`
--

-- --------------------------------------------------------

--
-- Structure de la table `activité`
--

DROP TABLE IF EXISTS `activité`;
CREATE TABLE IF NOT EXISTS `activité` (
  `Code_activité` int(11) NOT NULL AUTO_INCREMENT,
  `Année` year(4) NOT NULL,
  `intitulé` varchar(255) NOT NULL,
  `indicateur` int(11) NOT NULL,
  `Source_information` varchar(255) NOT NULL,
  `Période` varchar(255) NOT NULL,
  `Source_financière` varchar(255) NOT NULL,
  `Etat` enum('non réalisé','en cours','achevé','') NOT NULL,
  `direction` int(11) NOT NULL,
  `thème` int(11) NOT NULL,
  `partenaire` int(11) NOT NULL,
  PRIMARY KEY (`Code_activité`),
  KEY `activité_ibfk_1` (`direction`),
  KEY `activité_ibfk_2` (`thème`),
  KEY `activité_ibfk_3` (`partenaire`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `activité`
--

INSERT INTO `activité` (`Code_activité`, `Année`, `intitulé`, `indicateur`, `Source_information`, `Période`, `Source_financière`, `Etat`, `direction`, `thème`, `partenaire`) VALUES
(1, 2020, 'activté1', 20, 'si2', 'T1', 'sf1', 'en cours', 1, 1, 2),
(2, 2021, 'activté2', 50, 'si3', 'T3', 'sf2', 'non réalisé', 1, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `direction`
--

DROP TABLE IF EXISTS `direction`;
CREATE TABLE IF NOT EXISTS `direction` (
  `Code_direction` int(11) NOT NULL AUTO_INCREMENT,
  `nom_direction` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`Code_direction`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `direction`
--

INSERT INTO `direction` (`Code_direction`, `nom_direction`, `Email`) VALUES
(1, 'Direction1', 'direction1@gmail.com'),
(2, 'Direction2', 'direction2@gmail.com'),
(3, 'Direction3', 'direction3@gmail.com'),
(4, 'Direction4', 'direction4@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

DROP TABLE IF EXISTS `partenaire`;
CREATE TABLE IF NOT EXISTS `partenaire` (
  `Code_partenaire` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_partenaire` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`Code_partenaire`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `partenaire`
--

INSERT INTO `partenaire` (`Code_partenaire`, `Nom_partenaire`, `Email`) VALUES
(1, 'Partenaire1', 'partenaire1@gmail.com'),
(2, 'Partenaire2', 'partenaire2@gmail.com'),
(3, 'Partenaire3', 'partenaire3@gmail.com'),
(4, 'Partenaire4', 'partenaire4@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `thème`
--

DROP TABLE IF EXISTS `thème`;
CREATE TABLE IF NOT EXISTS `thème` (
  `Code_thème` int(11) NOT NULL AUTO_INCREMENT,
  `nom_thème` varchar(255) NOT NULL,
  PRIMARY KEY (`Code_thème`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `thème`
--

INSERT INTO `thème` (`Code_thème`, `nom_thème`) VALUES
(1, 'Thème1'),
(2, 'Thème2\r\n'),
(3, 'Thème3'),
(4, 'Thème4');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Code_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`Code_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Code_utilisateur`, `login`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'directeur', 'directeur'),
(3, 'responsable1', 'responsable1'),
(4, 'responsable2', 'responsable2');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `activité`
--
ALTER TABLE `activité`
  ADD CONSTRAINT `activité_ibfk_1` FOREIGN KEY (`direction`) REFERENCES `direction` (`Code_direction`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activité_ibfk_2` FOREIGN KEY (`thème`) REFERENCES `direction` (`Code_direction`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activité_ibfk_3` FOREIGN KEY (`partenaire`) REFERENCES `partenaire` (`Code_partenaire`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
