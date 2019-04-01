-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 31 Mars 2019 à 14:05
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test_web`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `image`) VALUES
(302, 'salon', 'salon.jpg'),
(303, 'cuisine', 'cuisine.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `favoris`
--

INSERT INTO `favoris` (`id`, `id_user`, `id_categorie`) VALUES
(34, 2, 303),
(33, 6, 302),
(32, 6, 303),
(31, 2, 302);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` float NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `reduction` int(50) NOT NULL,
  `fournisseur` varchar(50) NOT NULL,
  `type` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `genre`, `description`, `quantite`, `prix`, `couleur`, `image`, `reduction`, `fournisseur`, `type`) VALUES
(50, 'tv_GH854_smart', 'salon', 'yy', 4, 55, 'Gris', 'tes.png', 0, 'SAMSUNG', ''),
(51, 'MICROANDE', 'cuisine', 'yy', 8, 20, 'Gris', 'oiu.png', 0, 'LG', 'Micronade'),
(52, 'ttv_GH456', 'salon', 'yy', 87, 65, 'Gris', 'zetz.png', 0, 'SAMSUNG', ''),
(53, 'machine_ZI_598R', 'cuisine', 'yy', 4, 64, 'Blanc', 'tetet.png', 0, 'BRANDT', 'machineAlaver'),
(54, 'chauf_bain', 'salle de bain', 'yy', 2, 20, 'Blanc', 'poip.png', 0, 'BRANDT', ''),
(55, 'frigo_DD77', 'cuisine', 'YY', 2, 65, 'Noir', 'uy.png', 0, 'LENEVO', 'Frigider'),
(56, 'BLAC_EE8845', 'cuisine', 'cc', 4, 55, 'Noir', 'ezef.png', 0, 'LG', 'Cuisinaire'),
(57, 'ff_V65', 'cuisine', 'cc', 4, 20, 'Gris', 'iuuiu.png', 0, 'SAMSUNG', ''),
(58, 'frigider_QQ987', 'cuisine', 'aa', 10, 64, 'Gris', 'uyt.png', 0, 'SAMSUNG', 'Frigider'),
(64, 'iiuiu', 'salon', 'oiupiouoeri', 87, 5, 'Gris', 'tes.png', 0, 'SAMSUNG', 'TV'),
(77, 'tv', 'cuisine', 'tv mich nrml', 100, 200, 'Rouge', 'tv.png', 0, 'LG', 'TV'),
(85, 'salonn', 'salon', 'aaa', 100, 200, 'Rouge', 'tv.png', 0, 'LG', 'Mixeur'),
(89, 'saa', 'salon', 'saaa', 11, 555, 'Noir', 'tv.png', 0, 'SAMSUNG', 'Frigider'),
(90, 'saa', 'salon', 'saaa', 11, 555, 'Noir', 'tv.png', 0, 'SAMSUNG', 'Frigider');

-- --------------------------------------------------------

--
-- Structure de la table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rating`
--

INSERT INTO `rating` (`id`, `id_user`, `id_produit`, `rate`) VALUES
(13, 2, 51, 2),
(21, 6, 51, 2),
(22, 6, 50, 2),
(23, 6, 54, 2),
(24, 6, 53, 2),
(25, 2, 50, 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `pseudo` varchar(500) NOT NULL,
  `mot_de_passe` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `adresse` varchar(500) NOT NULL,
  `Numero_telephone` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `etats` varchar(500) NOT NULL,
  `carte_banquaire` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `full_name`, `pseudo`, `mot_de_passe`, `email`, `adresse`, `Numero_telephone`, `role`, `etats`, `carte_banquaire`) VALUES
(2, 'client', 'client', 'client', 'sahar.methneni@esprit.tn', 'tunis', 2665555, 'client', 'desactive', '565656565'),
(3, 'admin', 'admin', 'admin', 'sasa@email.tn', 'tunis', 50526875, 'admin', 'desactive', '656596565'),
(6, 'zakaria', 'zaki', 'zaki', 'sahar.meth@gmail.com', 'zalkjlkhlzf', 45654654, 'client', 'desactive', '987987');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT pour la table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
