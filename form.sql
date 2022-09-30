-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 30 sep. 2022 à 12:14
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `form`
--

-- --------------------------------------------------------

--
-- Structure de la table `Attestation`
--

CREATE TABLE `Attestation` (
  `Id_Attestation` int(10) NOT NULL,
  `message` text NOT NULL,
  `Id_Etudiant` int(10) NOT NULL,
  `Id_Convention` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Attestation`
--

INSERT INTO `Attestation` (`Id_Attestation`, `message`, `Id_Etudiant`, `Id_Convention`) VALUES
(712201, 'Bonjour Kaya Tony ,\r\n      \r\n vous avez suivi 356h de formation chez FormationPlus.\r\n  pouvez-vous nous retourner ce mail avec la pièce jointe signée.\r\n      \r\n  Cordialement,\r\n      \r\n  FormationPlus', 22016301, 10601),
(712202, 'Bonjour Ji Eun,\r\n vous avez suivi 420h de formation chez FormationPlus.  \r\nPouvez-vous nous retourner ce mail avec la pièce jointe signée.          Cordialement,         \r\n FormationPlus', 22016302, 10204),
(712203, 'Bonjour Melin chloe ,\r\n      \r\n vous avez suivi 356h de formation chez FormationPlus.\r\n  pouvez-vous nous retourner ce mail avec la pièce jointe signée.\r\n      \r\n  Cordialement,\r\n      \r\n  FormationPlus', 22016303, 10601),
(712204, 'Bonjour Id-belkhir Asma ,\r\n      \r\n vous avez suivi 420h de formation chez FormationPlus.\r\n  pouvez-vous nous retourner ce mail avec la pièce jointe signée.\r\n      \r\n  Cordialement,\r\n      \r\n  FormationPlus', 22016304, 10204);

-- --------------------------------------------------------

--
-- Structure de la table `Convention`
--

CREATE TABLE `Convention` (
  `Id_Convention` int(10) NOT NULL,
  `Nom_Convention` text NOT NULL,
  `NbHeur` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Convention`
--

INSERT INTO `Convention` (`Id_Convention`, `Nom_Convention`, `NbHeur`) VALUES
(10204, 'Bachelor Concepteur.trice de projets SI', 420),
(10601, 'Architecte logiciel, développeur d\'applications', 356);

-- --------------------------------------------------------

--
-- Structure de la table `Etudiant`
--

CREATE TABLE `Etudiant` (
  `Id_Etudiant` int(10) NOT NULL,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Id_Convention` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Etudiant`
--

INSERT INTO `Etudiant` (`Id_Etudiant`, `Nom`, `Prenom`, `Mail`, `Id_Convention`) VALUES
(22016301, 'kaya', 'Tony', 'Kayatony12@gmail.com', 10601),
(22016302, 'Ji', 'Eun', 'Eunji89@hotmail.com', 10204),
(22016303, 'melin', 'Chloe', 'Chloe1999@gmail.com', 10601),
(22016304, 'Id-belkhir', 'Asma', 'Asmaeidbelkhir@hotmail.com', 10204);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Attestation`
--
ALTER TABLE `Attestation`
  ADD PRIMARY KEY (`Id_Attestation`),
  ADD UNIQUE KEY `Id_Etudiant` (`Id_Etudiant`),
  ADD UNIQUE KEY `Id_Convention` (`Id_Convention`,`Id_Attestation`);

--
-- Index pour la table `Convention`
--
ALTER TABLE `Convention`
  ADD PRIMARY KEY (`Id_Convention`),
  ADD UNIQUE KEY `Id_Convention` (`Id_Convention`);

--
-- Index pour la table `Etudiant`
--
ALTER TABLE `Etudiant`
  ADD PRIMARY KEY (`Id_Etudiant`) USING BTREE,
  ADD UNIQUE KEY `Id_Convention` (`Id_Convention`,`Id_Etudiant`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Convention`
--
ALTER TABLE `Convention`
  MODIFY `Id_Convention` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10602;

--
-- AUTO_INCREMENT pour la table `Etudiant`
--
ALTER TABLE `Etudiant`
  MODIFY `Id_Etudiant` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22016305;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Attestation`
--
ALTER TABLE `Attestation`
  ADD CONSTRAINT `attestation_ibfk_1` FOREIGN KEY (`Id_Convention`) REFERENCES `Convention` (`Id_Convention`),
  ADD CONSTRAINT `attestation_ibfk_2` FOREIGN KEY (`Id_Etudiant`) REFERENCES `Etudiant` (`Id_Etudiant`);

--
-- Contraintes pour la table `Etudiant`
--
ALTER TABLE `Etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`Id_Convention`) REFERENCES `Convention` (`Id_Convention`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
