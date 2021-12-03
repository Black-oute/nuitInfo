-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 03, 2021 at 12:28 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nuit_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `aCarriere`
--

CREATE TABLE `aCarriere` (
  `idPersonne` int(11) NOT NULL,
  `idCarriere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aDit`
--

CREATE TABLE `aDit` (
  `idPersonne` int(11) NOT NULL,
  `idParole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Ajout`
--

CREATE TABLE `Ajout` (
  `idAJout` int(11) NOT NULL,
  `dateAjout` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bateauEchoue`
--

CREATE TABLE `bateauEchoue` (
  `idBateauEchoue` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `idType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bateauSauvetage`
--

CREATE TABLE `bateauSauvetage` (
  `idBateauSauvetage` varchar(50) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Carriere`
--

CREATE TABLE `Carriere` (
  `idCarriere` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `duree` varchar(50) DEFAULT NULL,
  `dateDebut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Decoration`
--

CREATE TABLE `Decoration` (
  `idDeco` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `dateObtention` date DEFAULT NULL,
  `idPersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Departement`
--

CREATE TABLE `Departement` (
  `numDept` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `idPays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Distinction`
--

CREATE TABLE `Distinction` (
  `idDistinction` int(11) NOT NULL,
  `nomDistinction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `effectue`
--

CREATE TABLE `effectue` (
  `idPersonne` int(11) NOT NULL,
  `idSauvetage` int(11) NOT NULL,
  `idBateauEchoue` int(11) NOT NULL,
  `idBateauSauvetage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estAjoute`
--

CREATE TABLE `estAjoute` (
  `idPersonne` int(11) NOT NULL,
  `idAJout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estEnfant`
--

CREATE TABLE `estEnfant` (
  `idPersonne` int(11) NOT NULL,
  `idPersonne_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estMarié`
--

CREATE TABLE `estMarié` (
  `idPersonne` int(11) NOT NULL,
  `idPersonne_1` int(11) NOT NULL,
  `dateMariage` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estModifie`
--

CREATE TABLE `estModifie` (
  `idPersonne` int(11) NOT NULL,
  `idModification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estSauve`
--

CREATE TABLE `estSauve` (
  `idPersonne` int(11) NOT NULL,
  `idPersonne_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE `Image` (
  `idImage` int(11) NOT NULL,
  `cheminImage` varchar(50) DEFAULT NULL,
  `idSauvetage` int(11) NOT NULL,
  `idBateauSauvetage` varchar(50) NOT NULL,
  `idPersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `imageDecoration`
--

CREATE TABLE `imageDecoration` (
  `idDeco` int(11) NOT NULL,
  `idImage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lieuCarriere`
--

CREATE TABLE `lieuCarriere` (
  `idCarriere` int(11) NOT NULL,
  `idVille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Modification`
--

CREATE TABLE `Modification` (
  `idModification` int(11) NOT NULL,
  `dateModification` date DEFAULT NULL,
  `idAJout` int(11) DEFAULT NULL,
  `idUtilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Parole`
--

CREATE TABLE `Parole` (
  `idParole` int(11) NOT NULL,
  `discours` varchar(1000) DEFAULT NULL,
  `idTypeParole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Pays`
--

CREATE TABLE `Pays` (
  `idPays` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Personne`
--

CREATE TABLE `Personne` (
  `idPersonne` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `dateDeces` date DEFAULT NULL,
  `infoComplementaire` varchar(1000) DEFAULT NULL,
  `estValide` tinyint(1) DEFAULT NULL,
  `sauveteur` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recompense`
--

CREATE TABLE `recompense` (
  `idPersonne` int(11) NOT NULL,
  `idSauvetage` int(11) NOT NULL,
  `idDistinction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Sauvetage`
--

CREATE TABLE `Sauvetage` (
  `idSauvetage` int(11) NOT NULL,
  `dateSauvetage` date DEFAULT NULL,
  `nombreDePersonne` int(11) NOT NULL,
  `descriptif` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Source`
--

CREATE TABLE `Source` (
  `idSource` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `idSauvetage` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TypeBateau`
--

CREATE TABLE `TypeBateau` (
  `idType` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `typeParole`
--

CREATE TABLE `typeParole` (
  `idTypeParole` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `mot_de_passe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Ville`
--

CREATE TABLE `Ville` (
  `idVille` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `idDepartement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aCarriere`
--
ALTER TABLE `aCarriere`
  ADD PRIMARY KEY (`idPersonne`,`idCarriere`),
  ADD KEY `idCarriere` (`idCarriere`);

--
-- Indexes for table `aDit`
--
ALTER TABLE `aDit`
  ADD PRIMARY KEY (`idPersonne`,`idParole`),
  ADD KEY `idParole` (`idParole`);

--
-- Indexes for table `Ajout`
--
ALTER TABLE `Ajout`
  ADD PRIMARY KEY (`idAJout`);

--
-- Indexes for table `bateauEchoue`
--
ALTER TABLE `bateauEchoue`
  ADD PRIMARY KEY (`idBateauEchoue`),
  ADD KEY `idType` (`idType`);

--
-- Indexes for table `bateauSauvetage`
--
ALTER TABLE `bateauSauvetage`
  ADD PRIMARY KEY (`idBateauSauvetage`);

--
-- Indexes for table `Carriere`
--
ALTER TABLE `Carriere`
  ADD PRIMARY KEY (`idCarriere`);

--
-- Indexes for table `Decoration`
--
ALTER TABLE `Decoration`
  ADD PRIMARY KEY (`idDeco`),
  ADD KEY `idPersonne` (`idPersonne`);

--
-- Indexes for table `Departement`
--
ALTER TABLE `Departement`
  ADD PRIMARY KEY (`numDept`),
  ADD KEY `idPays` (`idPays`);

--
-- Indexes for table `Distinction`
--
ALTER TABLE `Distinction`
  ADD PRIMARY KEY (`idDistinction`);

--
-- Indexes for table `effectue`
--
ALTER TABLE `effectue`
  ADD PRIMARY KEY (`idPersonne`,`idSauvetage`,`idBateauEchoue`,`idBateauSauvetage`),
  ADD KEY `idSauvetage` (`idSauvetage`),
  ADD KEY `idBateauEchoue` (`idBateauEchoue`),
  ADD KEY `idBateauSauvetage` (`idBateauSauvetage`);

--
-- Indexes for table `estAjoute`
--
ALTER TABLE `estAjoute`
  ADD PRIMARY KEY (`idPersonne`,`idAJout`),
  ADD KEY `idAJout` (`idAJout`);

--
-- Indexes for table `estEnfant`
--
ALTER TABLE `estEnfant`
  ADD PRIMARY KEY (`idPersonne`,`idPersonne_1`),
  ADD KEY `idPersonne_1` (`idPersonne_1`);

--
-- Indexes for table `estMarié`
--
ALTER TABLE `estMarié`
  ADD PRIMARY KEY (`idPersonne`,`idPersonne_1`),
  ADD KEY `idPersonne_1` (`idPersonne_1`);

--
-- Indexes for table `estModifie`
--
ALTER TABLE `estModifie`
  ADD PRIMARY KEY (`idPersonne`,`idModification`),
  ADD KEY `idModification` (`idModification`);

--
-- Indexes for table `estSauve`
--
ALTER TABLE `estSauve`
  ADD PRIMARY KEY (`idPersonne`,`idPersonne_1`),
  ADD KEY `idPersonne_1` (`idPersonne_1`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`idImage`),
  ADD KEY `idSauvetage` (`idSauvetage`),
  ADD KEY `idBateauSauvetage` (`idBateauSauvetage`),
  ADD KEY `idPersonne` (`idPersonne`);

--
-- Indexes for table `imageDecoration`
--
ALTER TABLE `imageDecoration`
  ADD PRIMARY KEY (`idDeco`,`idImage`),
  ADD KEY `idImage` (`idImage`);

--
-- Indexes for table `lieuCarriere`
--
ALTER TABLE `lieuCarriere`
  ADD PRIMARY KEY (`idCarriere`,`idVille`),
  ADD KEY `idVille` (`idVille`);

--
-- Indexes for table `Modification`
--
ALTER TABLE `Modification`
  ADD PRIMARY KEY (`idModification`),
  ADD UNIQUE KEY `idAJout` (`idAJout`),
  ADD KEY `modification_ibfk_2` (`idUtilisateur`);

--
-- Indexes for table `Parole`
--
ALTER TABLE `Parole`
  ADD PRIMARY KEY (`idParole`),
  ADD KEY `idTypeParole` (`idTypeParole`);

--
-- Indexes for table `Pays`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`idPays`);

--
-- Indexes for table `Personne`
--
ALTER TABLE `Personne`
  ADD PRIMARY KEY (`idPersonne`);

--
-- Indexes for table `recompense`
--
ALTER TABLE `recompense`
  ADD PRIMARY KEY (`idPersonne`,`idSauvetage`,`idDistinction`),
  ADD KEY `idSauvetage` (`idSauvetage`),
  ADD KEY `idDistinction` (`idDistinction`);

--
-- Indexes for table `Sauvetage`
--
ALTER TABLE `Sauvetage`
  ADD PRIMARY KEY (`idSauvetage`);

--
-- Indexes for table `Source`
--
ALTER TABLE `Source`
  ADD PRIMARY KEY (`idSource`),
  ADD KEY `idSauvetage` (`idSauvetage`),
  ADD KEY `idPersonne` (`idPersonne`);

--
-- Indexes for table `TypeBateau`
--
ALTER TABLE `TypeBateau`
  ADD PRIMARY KEY (`idType`);

--
-- Indexes for table `typeParole`
--
ALTER TABLE `typeParole`
  ADD PRIMARY KEY (`idTypeParole`);

--
-- Indexes for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- Indexes for table `Ville`
--
ALTER TABLE `Ville`
  ADD PRIMARY KEY (`idVille`),
  ADD KEY `idDepartement` (`idDepartement`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aCarriere`
--
ALTER TABLE `aCarriere`
  ADD CONSTRAINT `acarriere_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `acarriere_ibfk_2` FOREIGN KEY (`idCarriere`) REFERENCES `Carriere` (`idCarriere`);

--
-- Constraints for table `aDit`
--
ALTER TABLE `aDit`
  ADD CONSTRAINT `adit_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `adit_ibfk_2` FOREIGN KEY (`idParole`) REFERENCES `Parole` (`idParole`);

--
-- Constraints for table `bateauEchoue`
--
ALTER TABLE `bateauEchoue`
  ADD CONSTRAINT `bateauechoue_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `TypeBateau` (`idType`);

--
-- Constraints for table `Decoration`
--
ALTER TABLE `Decoration`
  ADD CONSTRAINT `decoration_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`);

--
-- Constraints for table `Departement`
--
ALTER TABLE `Departement`
  ADD CONSTRAINT `fk_pays_departement` FOREIGN KEY (`idPays`) REFERENCES `Pays` (`idPays`);

--
-- Constraints for table `effectue`
--
ALTER TABLE `effectue`
  ADD CONSTRAINT `effectue_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `effectue_ibfk_2` FOREIGN KEY (`idSauvetage`) REFERENCES `Sauvetage` (`idSauvetage`),
  ADD CONSTRAINT `effectue_ibfk_3` FOREIGN KEY (`idBateauEchoue`) REFERENCES `bateauEchoue` (`idBateauEchoue`),
  ADD CONSTRAINT `effectue_ibfk_4` FOREIGN KEY (`idBateauSauvetage`) REFERENCES `bateauSauvetage` (`idBateauSauvetage`);

--
-- Constraints for table `estAjoute`
--
ALTER TABLE `estAjoute`
  ADD CONSTRAINT `estajoute_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `estajoute_ibfk_2` FOREIGN KEY (`idAJout`) REFERENCES `Ajout` (`idAJout`);

--
-- Constraints for table `estEnfant`
--
ALTER TABLE `estEnfant`
  ADD CONSTRAINT `estenfant_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `estenfant_ibfk_2` FOREIGN KEY (`idPersonne_1`) REFERENCES `Personne` (`idPersonne`);

--
-- Constraints for table `estMarié`
--
ALTER TABLE `estMarié`
  ADD CONSTRAINT `estmarié_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `estmarié_ibfk_2` FOREIGN KEY (`idPersonne_1`) REFERENCES `Personne` (`idPersonne`);

--
-- Constraints for table `estModifie`
--
ALTER TABLE `estModifie`
  ADD CONSTRAINT `estmodifie_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `estmodifie_ibfk_2` FOREIGN KEY (`idModification`) REFERENCES `Modification` (`idModification`);

--
-- Constraints for table `estSauve`
--
ALTER TABLE `estSauve`
  ADD CONSTRAINT `estsauve_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `estsauve_ibfk_2` FOREIGN KEY (`idPersonne_1`) REFERENCES `Personne` (`idPersonne`);

--
-- Constraints for table `Image`
--
ALTER TABLE `Image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`idSauvetage`) REFERENCES `Sauvetage` (`idSauvetage`),
  ADD CONSTRAINT `image_ibfk_2` FOREIGN KEY (`idBateauSauvetage`) REFERENCES `bateauSauvetage` (`idBateauSauvetage`),
  ADD CONSTRAINT `image_ibfk_3` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`);

--
-- Constraints for table `imageDecoration`
--
ALTER TABLE `imageDecoration`
  ADD CONSTRAINT `imagedecoration_ibfk_1` FOREIGN KEY (`idDeco`) REFERENCES `Decoration` (`idDeco`),
  ADD CONSTRAINT `imagedecoration_ibfk_2` FOREIGN KEY (`idImage`) REFERENCES `Image` (`idImage`);

--
-- Constraints for table `lieuCarriere`
--
ALTER TABLE `lieuCarriere`
  ADD CONSTRAINT `lieucarriere_ibfk_1` FOREIGN KEY (`idCarriere`) REFERENCES `Carriere` (`idCarriere`),
  ADD CONSTRAINT `lieucarriere_ibfk_2` FOREIGN KEY (`idVille`) REFERENCES `Ville` (`idVille`);

--
-- Constraints for table `Modification`
--
ALTER TABLE `Modification`
  ADD CONSTRAINT `modification_ibfk_1` FOREIGN KEY (`idAJout`) REFERENCES `Ajout` (`idAJout`),
  ADD CONSTRAINT `modification_ibfk_2` FOREIGN KEY (`idUtilisateur`) REFERENCES `Utilisateur` (`idUtilisateur`);

--
-- Constraints for table `Parole`
--
ALTER TABLE `Parole`
  ADD CONSTRAINT `parole_ibfk_1` FOREIGN KEY (`idTypeParole`) REFERENCES `typeParole` (`idTypeParole`);

--
-- Constraints for table `recompense`
--
ALTER TABLE `recompense`
  ADD CONSTRAINT `recompense_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`),
  ADD CONSTRAINT `recompense_ibfk_2` FOREIGN KEY (`idSauvetage`) REFERENCES `Sauvetage` (`idSauvetage`),
  ADD CONSTRAINT `recompense_ibfk_3` FOREIGN KEY (`idDistinction`) REFERENCES `Distinction` (`idDistinction`);

--
-- Constraints for table `Source`
--
ALTER TABLE `Source`
  ADD CONSTRAINT `source_ibfk_1` FOREIGN KEY (`idSauvetage`) REFERENCES `Sauvetage` (`idSauvetage`),
  ADD CONSTRAINT `source_ibfk_2` FOREIGN KEY (`idPersonne`) REFERENCES `Personne` (`idPersonne`);

--
-- Constraints for table `Ville`
--
ALTER TABLE `Ville`
  ADD CONSTRAINT `fk_departement_ville` FOREIGN KEY (`idDepartement`) REFERENCES `Departement` (`numDept`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
