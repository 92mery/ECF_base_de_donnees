-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 21 oct. 2020 à 15:36
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dev_formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprentissage`
--

CREATE TABLE `apprentissage` (
  `id_dev` int(11) NOT NULL,
  `id_apprentissage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `developpeurs`
--

CREATE TABLE `developpeurs` (
  `id_dev` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_entree` date NOT NULL,
  `matricule` int(11) NOT NULL,
  `techno_predilection` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `developpeurs`
--

INSERT INTO `developpeurs` (`id_dev`, `nom`, `prenom`, `date_naissance`, `date_entree`, `matricule`, `techno_predilection`) VALUES
(1, 'Martin', 'Pierre', '2007-11-14', '2019-01-10', 20, 'React'),
(2, 'Dupond', 'Paul', '2000-01-11', '2019-03-10', 43, 'Angular'),
(3, 'Gauthier', 'Jacques', '1980-12-10', '2017-03-10', 2, 'Java'),
(4, 'Durand', 'Isabelle', '1980-04-10', '2017-03-10', 8, 'Vue.js');

-- --------------------------------------------------------

--
-- Structure de la table `techno_apprentissage`
--

CREATE TABLE `techno_apprentissage` (
  `id_apprentissage` int(11) NOT NULL,
  `nom_français` varchar(100) NOT NULL,
  `nom_anglais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `techno_apprentissage`
--

INSERT INTO `techno_apprentissage` (`id_apprentissage`, `nom_français`, `nom_anglais`) VALUES
(1, 'React', 'React'),
(2, 'Angular', 'Angular'),
(3, 'Java', 'Java'),
(4, 'PHP', 'PHP');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprentissage`
--
ALTER TABLE `apprentissage`
  ADD KEY `FK_id_apprentissage` (`id_apprentissage`),
  ADD KEY `FK_id_dev` (`id_dev`);

--
-- Index pour la table `developpeurs`
--
ALTER TABLE `developpeurs`
  ADD PRIMARY KEY (`id_dev`);

--
-- Index pour la table `techno_apprentissage`
--
ALTER TABLE `techno_apprentissage`
  ADD PRIMARY KEY (`id_apprentissage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `developpeurs`
--
ALTER TABLE `developpeurs`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `techno_apprentissage`
--
ALTER TABLE `techno_apprentissage`
  MODIFY `id_apprentissage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apprentissage`
--
ALTER TABLE `apprentissage`
  ADD CONSTRAINT `FK_id_apprentissage` FOREIGN KEY (`id_apprentissage`) REFERENCES `techno_apprentissage` (`id_apprentissage`),
  ADD CONSTRAINT `FK_id_dev` FOREIGN KEY (`id_dev`) REFERENCES `developpeurs` (`id_dev`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
