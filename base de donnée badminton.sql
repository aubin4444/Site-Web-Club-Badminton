-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 07 nov. 2021 à 18:58
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `badminton`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `id` int(11) NOT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mot_de_passe` varchar(100) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `date_adhesion` date DEFAULT NULL,
  `statut` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`id`, `prenom`, `nom`, `email`, `mot_de_passe`, `adresse`, `date_naissance`, `date_adhesion`, `statut`) VALUES
(3, 'simon', 'simon', 'simonillouzlaurent@gmail.com', '$2y$10$W.daaJUY4pI6gCvGym80relaHRy6PEGphdVqnWdVG8fv0h/huUnFi', '14 Rue Bernard Gombert', '2002-10-12', '0001-02-12', 1),
(4, 'Simonasaas', 'Laurent', 'simonillouaszlaurent@gmail.com', '$2y$10$YG3ewLj3hQFLvezD/ree/Ovq/l1S2VfjJWk7nO.3k.qLI3A8QuvaK', '14 Rue Bernard Gombert', '2021-10-22', '2021-10-27', 0),
(5, 'aubin', 'bonnefoy', 'aubin@gmail.com', '$2y$10$ubKl7dgn2ewpUc8H17XafupNICrBmadiaWl8u1r/qhBuygumhizXu', '45aasas', '2021-10-09', '2021-10-25', 0),
(6, 'dursun', 'cakir', 'dd@gmail.com', '$2y$10$E4djGpKB5MUmBwp8N3q7B./i1M857QDB.4PMsdX0VUjekaMzrG8NC', '4 rue de la vierge', '2002-10-03', '2021-11-03', 1),
(7, 'Paul', 'Dujardin', 'paul@gmail.com', '$2y$10$Cg49Bq6QoQd1whN7lypXYOHKjUcJM/utKixsYjBJyBdZw02v2mtEq', '4 rue de la fontaine', '2003-02-15', '2021-11-06', 0),
(8, 'lucien', 'terre', 'lu@gmail.com', '$2y$10$04tROPDp0oUI1nUc.xb.DObbmNEyGLT2d/.eJ1o.Jt6pXhvnfmqZe', '5 rue de la charpi', '2003-12-15', '2021-11-07', 1),
(9, 'romain', 'petit', 'rom@gmail.com', '$2y$10$4uMDUF8IhRQaI5/bUmHLkeJG58AJld/LjXEZLoBqyrQyB7vgCzkJS', '5 rue jardin', '2003-08-05', '2021-11-07', 0),
(10, 'queen', 'hurley', 'hurlez@gmail.com', '$2y$10$Fv6LJptE0ndO1.E14gd9o.vWrvLX.noDec06spMCC3YKNSr0v21wu', '5 rue beau mouton', '2006-05-08', '2021-11-07', 0),
(11, 'alicia', 'loton', 'a@gmail.com', '$2y$10$f7ykvv2xRsUpw4Nm99kWKuH8BceuglzgT4BfTNVBgxHyRt2eVVxsy', '8 rue bernard', '2021-06-05', '2021-11-07', 1),
(12, 'Bernard', 'Bon', 'ber@gmail.com', '$2y$10$OHsHUvHb8hLvGfj/pJcM1OnksZ9v/2LtPlKfjuQqOgwV5dLVHkTCG', '8 rue des choux', '2015-08-05', '2021-11-07', 0),
(13, 'hounout', 'lorine', 'las@gmail.com', '$2y$10$aQd0dgJJYBZmRl96mtF4leRSLWBIaL3ub.K1OrQyQkLwxxEl8i73y', '8 rue des boeuf', '2002-05-08', '2021-11-07', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` int(11) NOT NULL,
  `heure_debut` time DEFAULT NULL,
  `heure_fin` time DEFAULT NULL,
  `nom_prof` varchar(100) DEFAULT NULL,
  `date_cours` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `heure_debut`, `heure_fin`, `nom_prof`, `date_cours`) VALUES
(5, '14:00:00', '15:00:00', 'cakir', '2021-11-10'),
(6, '13:00:00', '14:00:00', 'cakir', '2021-11-08'),
(7, '14:00:00', '15:00:00', 'cakir', '2021-11-09'),
(8, '12:00:00', '13:00:00', 'cakir', '2021-11-08'),
(9, '11:00:00', '12:00:00', 'simon', '2021-11-07'),
(10, '12:00:00', '13:00:00', 'simon', '2021-11-16'),
(11, '18:00:00', '19:00:00', 'simon', '2021-11-24'),
(12, '14:00:00', '15:00:00', 'simon', '2021-11-20'),
(13, '10:00:00', '11:00:00', 'simon', '2021-11-11'),
(14, '15:00:00', '16:00:00', 'simon', '2021-11-09'),
(15, '16:00:00', '17:00:00', 'simon', '2021-11-23'),
(16, '15:00:00', '16:00:00', 'cakir', '2021-11-25'),
(17, '14:00:00', '15:00:00', 'cakir', '2021-11-22'),
(18, '10:00:00', '11:00:00', 'terre', '2021-11-10'),
(19, '16:00:00', '17:00:00', 'terre', '2021-11-15'),
(20, '14:00:00', '15:00:00', 'terre', '2021-11-22'),
(21, '18:00:00', '19:00:00', 'terre', '2021-11-24'),
(22, '11:00:00', '12:00:00', 'terre', '2021-11-25'),
(23, '12:00:00', '13:00:00', 'terre', '2021-11-19'),
(24, '09:00:00', '10:00:00', 'terre', '2021-11-14'),
(25, '15:00:00', '16:00:00', 'loton', '2021-11-19'),
(26, '17:00:00', '18:00:00', 'loton', '2021-11-25'),
(27, '10:00:00', '11:00:00', 'loton', '2021-11-10'),
(28, '14:00:00', '15:00:00', 'loton', '2021-11-15'),
(29, '11:00:00', '12:00:00', 'loton', '2021-11-15');

-- --------------------------------------------------------

--
-- Structure de la table `inscription_cours`
--

CREATE TABLE `inscription_cours` (
  `id_adherent` int(11) DEFAULT NULL,
  `id_cours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscription_cours`
--

INSERT INTO `inscription_cours` (`id_adherent`, `id_cours`) VALUES
(4, 6),
(4, 13),
(5, 13),
(5, 6),
(10, 13),
(10, 7),
(10, 9),
(12, 27),
(12, 13),
(12, 9),
(13, 13),
(13, 14),
(13, 9);

-- --------------------------------------------------------

--
-- Structure de la table `inviter`
--

CREATE TABLE `inviter` (
  `id_adherent` int(11) NOT NULL,
  `id_reservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inviter`
--

INSERT INTO `inviter` (`id_adherent`, `id_reservation`) VALUES
(3, 52),
(3, 55),
(3, 58),
(3, 59),
(4, 52),
(4, 58),
(4, 59),
(4, 62),
(4, 66),
(4, 68),
(4, 69),
(4, 72),
(4, 74),
(5, 55),
(5, 60),
(5, 61),
(5, 63),
(5, 66),
(6, 55),
(6, 63),
(6, 64),
(6, 69),
(7, 60),
(7, 61),
(8, 61),
(9, 68),
(10, 60),
(12, 68),
(13, 64);

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

CREATE TABLE `materiel` (
  `id` int(11) NOT NULL,
  `type_materiel` varchar(100) DEFAULT NULL,
  `date_emprunt` date DEFAULT NULL,
  `date_retour` date DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `id_emprunteur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`id`, `type_materiel`, `date_emprunt`, `date_retour`, `quantite`, `id_emprunteur`) VALUES
(1, 'tenue', '2021-11-27', '2021-11-25', 4, 3),
(2, 'raquette', '2021-11-11', '2021-11-25', 7, 3),
(3, 'vollant', '2021-12-03', '2021-11-12', 8, 3),
(4, 'tenue', '2021-11-03', '2021-11-19', 8, 6),
(5, 'tenue', '2021-11-07', '2021-11-18', 1, 4),
(6, 'raquette', '2021-11-07', '2021-12-11', 1, 4),
(8, 'raquette', '2021-11-07', '2021-11-10', 1, 4),
(9, 'tenue', '2021-11-07', '2021-11-18', 2, 5),
(10, 'vollant', '2021-11-07', '2022-03-17', 1, 5),
(11, 'raquette', '2021-11-07', '2022-02-25', 1, 10),
(12, 'tenue', '2021-11-07', '2022-04-01', 2, 10),
(13, 'tenue', '2021-11-07', '2022-05-19', 1, 12),
(14, 'raquette', '2021-11-07', '2021-12-12', 1, 12),
(15, 'tenue', '2021-11-07', '2022-01-14', 1, 13),
(16, 'tenue', '2021-11-07', '2021-12-01', 2, 13),
(17, 'vollant', '2021-11-07', '2021-12-03', 1, 13);

-- --------------------------------------------------------

--
-- Structure de la table `repertoire`
--

CREATE TABLE `repertoire` (
  `id` int(11) NOT NULL,
  `date_reservation` date DEFAULT NULL,
  `horaire` time DEFAULT NULL,
  `nom_terrain` varchar(100) DEFAULT NULL,
  `id_joueur` int(11) DEFAULT NULL,
  `inviter_non_adherent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `repertoire`
--

INSERT INTO `repertoire` (`id`, `date_reservation`, `horaire`, `nom_terrain`, `id_joueur`, `inviter_non_adherent`) VALUES
(52, '2021-12-09', '14:00:00', 'Le Monaco', 3, 1),
(55, '2021-11-26', '11:00:00', 'Le Paris', 6, 1),
(58, '2021-11-27', '14:00:00', 'Le New York', 6, 1),
(59, '2021-11-25', '15:00:00', 'Le Grand Rex', 6, 1),
(60, '2021-11-19', '14:00:00', 'Le New York', 8, 1),
(61, '2021-12-12', '10:00:00', 'Le New York', 8, 1),
(62, '2021-11-19', '15:00:00', 'Le Monaco', 8, 1),
(63, '2021-11-28', '13:00:00', 'Le Paris', 8, 1),
(64, '2021-11-29', '15:00:00', 'Le Hawaï', 9, 0),
(65, '2021-09-16', '15:00:00', 'Le Paris', 9, 1),
(66, '2021-12-03', '16:00:00', 'Le Monaco', 10, 1),
(67, '2021-10-21', '10:00:00', 'Le Grand Rex', 11, 1),
(68, '2021-11-24', '15:00:00', 'Le Monaco', 11, 1),
(69, '2021-11-20', '14:00:00', 'Le Monaco', 11, 1),
(70, '2021-11-06', '15:00:00', 'Le New York', 12, 1),
(71, '2021-11-25', '15:00:00', 'Le New York', 12, 1),
(72, '2021-11-18', '13:00:00', 'Le Grand Rex', 12, 0),
(73, '2021-11-19', '15:00:00', 'Le Grand Rex', 12, 1),
(74, '2021-12-01', '15:00:00', 'Le Paris', 12, 1),
(75, '2021-11-18', '12:00:00', 'Le New York', 13, 1),
(76, '2021-11-19', '14:00:00', 'Le Paris', 13, 1),
(77, '2021-11-11', '14:00:00', 'Le Monaco', 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `terrain`
--

CREATE TABLE `terrain` (
  `nom_terrain` varchar(100) NOT NULL,
  `type_terrain` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `terrain`
--

INSERT INTO `terrain` (`nom_terrain`, `type_terrain`) VALUES
('Le Grand Rex', 'Double'),
('Le Hawaï', 'Double'),
('Le Monaco', 'Simple'),
('Le New York', 'Simple'),
('Le Paris', 'Double');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscription_cours`
--
ALTER TABLE `inscription_cours`
  ADD KEY `id_adherent` (`id_adherent`),
  ADD KEY `id_cours` (`id_cours`);

--
-- Index pour la table `inviter`
--
ALTER TABLE `inviter`
  ADD PRIMARY KEY (`id_adherent`,`id_reservation`),
  ADD KEY `id_reservation` (`id_reservation`);

--
-- Index pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_emprunteur` (`id_emprunteur`);

--
-- Index pour la table `repertoire`
--
ALTER TABLE `repertoire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nom_terrain` (`nom_terrain`),
  ADD KEY `id_joueur` (`id_joueur`);

--
-- Index pour la table `terrain`
--
ALTER TABLE `terrain`
  ADD PRIMARY KEY (`nom_terrain`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adherent`
--
ALTER TABLE `adherent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `repertoire`
--
ALTER TABLE `repertoire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `inscription_cours`
--
ALTER TABLE `inscription_cours`
  ADD CONSTRAINT `inscription_cours_ibfk_1` FOREIGN KEY (`id_adherent`) REFERENCES `adherent` (`id`),
  ADD CONSTRAINT `inscription_cours_ibfk_2` FOREIGN KEY (`id_cours`) REFERENCES `cours` (`id`);

--
-- Contraintes pour la table `inviter`
--
ALTER TABLE `inviter`
  ADD CONSTRAINT `inviter_ibfk_1` FOREIGN KEY (`id_adherent`) REFERENCES `adherent` (`id`),
  ADD CONSTRAINT `inviter_ibfk_2` FOREIGN KEY (`id_reservation`) REFERENCES `repertoire` (`id`);

--
-- Contraintes pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD CONSTRAINT `materiel_ibfk_1` FOREIGN KEY (`id_emprunteur`) REFERENCES `adherent` (`id`);

--
-- Contraintes pour la table `repertoire`
--
ALTER TABLE `repertoire`
  ADD CONSTRAINT `repertoire_ibfk_1` FOREIGN KEY (`nom_terrain`) REFERENCES `terrain` (`nom_terrain`),
  ADD CONSTRAINT `repertoire_ibfk_2` FOREIGN KEY (`id_joueur`) REFERENCES `adherent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
