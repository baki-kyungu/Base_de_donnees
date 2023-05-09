-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 09 mai 2023 à 03:29
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `library`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id_auteur` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`id_auteur`, `nom`) VALUES
(1, 'Bravi Soledad'),
(2, 'Brière Haquet Alice'),
(3, 'Van Zeveren Michel'),
(4, 'Crozon Alain'),
(5, 'Chedru Delphine'),
(6, 'Collectif'),
(7, 'Mbodj Souleymane'),
(8, 'Cassabois Jacques'),
(9, 'Uzunoglu Adelheid'),
(10, 'Grousset Alain'),
(11, 'Mounié Didier'),
(12, 'Fromental Jean-Luc'),
(13, 'Sellier Marie'),
(14, 'Orizet Jean'),
(15, 'Renault Jean'),
(16, 'Rachmuhl Françoise'),
(17, 'Giraud Robert'),
(18, 'Beamri R'),
(19, 'Coppin Brigitte'),
(20, 'Muzi Jean'),
(21, 'Douzou Olivier'),
(22, 'Carter David A.'),
(23, 'Fox Mem'),
(24, 'Piquemal Michel'),
(25, 'Solet Bertrand'),
(26, 'Dedieu Thierry'),
(27, 'Barrier Perceval'),
(28, 'Letuffe Anne'),
(29, 'Boyer Cécile'),
(30, 'Bloch Muriel'),
(31, 'Jalbert Philippe'),
(32, 'Rettich Maget et Ralph'),
(33, 'Pomme d\'api'),
(34, 'Buson'),
(35, 'Touquet Marie'),
(36, 'Grimm Jacob et Wilhelm'),
(37, 'Kimura Ken'),
(38, 'Ponti Claude'),
(39, 'Haughton Chris'),
(40, 'Browne Anthony'),
(41, 'Gutman Claude'),
(42, 'Chaty Guy'),
(43, 'Friot Bernard'),
(44, 'Bonbon Cécile'),
(45, 'Siméon Jean Pierre'),
(46, 'Schubiger Jürg'),
(47, 'Perrin Clotilde'),
(48, 'Favret Hafida'),
(49, 'Grosléziat Chantal'),
(50, 'Jean Georges'),
(51, 'Sara'),
(52, 'Jun Takabataka'),
(53, 'Le Touzé Anne Isabelle'),
(54, 'Khoury-Ghata Vénus'),
(55, 'Louchard Antonin'),
(56, 'James Simon'),
(57, 'Devernois Elsa'),
(58, 'Coat Anik'),
(59, 'Beigel Christine'),
(60, 'Galeron Henri'),
(61, 'Moniz Madalena'),
(62, 'Feiffer Jules'),
(63, 'Kogjan Grégoire'),
(64, 'Boutros Al-maari'),
(65, 'Laurent Nathalie'),
(66, 'Houdart Emmanuelle'),
(67, 'Adam Olivier'),
(68, 'Gravel Elise'),
(69, 'Ungerer Tomi'),
(70, 'Guyennon Duchêne Claudie'),
(71, 'Chaud Benjamin'),
(72, 'Corenblit Rachel'),
(73, 'Cali Davide');

-- --------------------------------------------------------

--
-- Structure de la table `borrower`
--

CREATE TABLE `borrower` (
  `card_no` varchar(9) NOT NULL,
  `borrower_name` varchar(50) NOT NULL,
  `library_branch_id` int(11) NOT NULL,
  `livre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `borrower`
--

INSERT INTO `borrower` (`card_no`, `borrower_name`, `library_branch_id`, `livre_id`) VALUES
('01B45BFE6', 'Evalyn Ahmed', 2, 9),
('01C358C8E', 'Boris Rawlings', 1, 4),
('0382CCEA9', 'Larry Wiggins', 2, 6),
('055EEB8CC', 'Maddox Ramirez', 2, 7),
('090BDB425', 'Alyce Ochoa', 2, 5),
('0A9DF57CE', 'Asif Wormald', 2, 8),
('0B6F4FA76', 'Vicky Graham', 1, 2),
('0CF00BF48', 'Cadence Fulton', 1, 1),
('0DC6120CF', 'Arfa Wu', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `editeurs`
--

CREATE TABLE `editeurs` (
  `id_editeur` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `editeurs`
--

INSERT INTO `editeurs` (`id_editeur`, `nom`) VALUES
(1, 'A pas de loups'),
(2, 'A2MIMO'),
(3, 'ABC Melody'),
(4, 'ACCES'),
(5, 'Actes Sud'),
(6, 'Actes sud junior'),
(7, 'Aedis'),
(8, 'Albin Michel'),
(9, 'Albin Michel jeunesse'),
(10, 'Aldéran édition'),
(11, 'Alice'),
(12, 'Alice jeunesse'),
(13, 'Alkindi'),
(14, 'Almaterra'),
(15, 'Alyssa'),
(16, 'Amaterra'),
(17, 'AND'),
(18, 'ANLCI'),
(19, 'Après la lune jeunesse'),
(20, 'Assoc fr pour la lecture'),
(21, 'Assoc. Paris-musées'),
(22, 'Association Afflux'),
(23, 'Atelier du poisson soluble'),
(24, 'Atelier du Scribe'),
(25, 'Auto production'),
(26, 'Autrement'),
(27, 'Autrement jeunesse'),
(28, 'Balivernes'),
(29, 'Balzane'),
(30, 'Bayard'),
(31, 'Bayard jeunesse'),
(32, 'Belin'),
(33, 'Belin jeunesse'),
(34, 'Belize'),
(35, 'Benoît Jacques'),
(36, 'Benoît Jacques Books'),
(37, 'bib.municip Paris'),
(38, 'Bibliothèque de Toulouse'),
(39, 'Bilboquet'),
(40, 'Biscoto'),
(41, 'BNF'),
(42, 'Bruno Doucey'),
(43, 'Bulles de savon'),
(44, 'Cadex'),
(45, 'Cahiers du CRILJ n° 10'),
(46, 'Cahiers du CRILJ n° 3'),
(47, 'Cahiers du CRILJ n° 4'),
(48, 'Cahiers du CRILJ n° 5'),
(49, 'Cahiers du CRILJ n° 7'),
(50, 'Cahiers du CRILJ n°8'),
(51, 'Calmann-Lévy'),
(52, 'Cambourakis'),
(53, 'Casterman'),
(54, 'Castor benjamin'),
(55, 'Castor poche'),
(56, 'Catalpas'),
(57, 'CCMDE'),
(58, 'Centre Georges Pompidou'),
(59, 'Cercle de la librairie'),
(60, 'Chan-Ok'),
(61, 'Cherche-midi'),
(62, 'Cheyne'),
(63, 'Cipango'),
(64, 'Circé'),
(65, 'Circonflexe'),
(66, 'CLAP Midi-Pyrénées'),
(67, 'Compagnie créative'),
(68, 'Cornélius'),
(69, 'Corps puce'),
(70, 'Courtes et longues'),
(71, 'Dapper'),
(72, 'De facto'),
(73, 'De la Martinière'),
(74, 'De la Martinière jeunesse'),
(75, 'Des Eléphants'),
(76, 'Des Idées et des Hommes'),
(77, 'Didier'),
(78, 'Didier jeunesse'),
(79, 'Dominique et cie'),
(80, 'Donner à voir'),
(81, 'Duculot Casterman'),
(82, 'Ecole Centre Montauban'),
(83, 'Ecole des loisirs'),
(84, 'Ed Corps Puce'),
(85, 'Ed Quart monde'),
(86, 'Ed. des Elephants'),
(87, 'Ed. des Elephants Amnesty'),
(88, 'Ed. du Jasmin'),
(89, 'Edition des Monts'),
(90, 'Editions de la Balle'),
(91, 'Editions du Jasmin'),
(92, 'Education Nationale'),
(93, 'Elan vert'),
(94, 'Encore une fois'),
(95, 'ERES'),
(96, 'Escabelle'),
(97, 'Esperluète'),
(98, 'Etre'),
(99, 'Eyrolles'),
(100, 'Flammarion'),
(101, 'Flammarion jeunesse'),
(102, 'FLBLB'),
(103, 'Fleurus'),
(104, 'Flies France'),
(105, 'FOL de l Ardèche'),
(106, 'Folio junior'),
(107, 'Folle avoine'),
(108, 'Fond. BNP'),
(109, 'France Loisirs'),
(110, 'Frimousse'),
(111, 'GAEL'),
(112, 'Galeri Minyatür'),
(113, 'Gallimard'),
(114, 'Gallimard jeunesse'),
(115, 'Gautier-Languereau'),
(116, 'Grandir'),
(117, 'Grasset'),
(118, 'Grasset jeunesse'),
(119, 'Gros textes'),
(120, 'Gründ'),
(121, 'Gulf Stream'),
(122, 'Hachette'),
(123, 'Hachette jeunesse'),
(124, 'Hatier'),
(125, 'Hatier jeunesse'),
(126, 'Hatier poche'),
(127, 'Helium'),
(128, 'Hélium'),
(129, 'Hoëbeke'),
(130, 'Hong Fei'),
(131, 'Hongfei'),
(132, 'Il était deux fois'),
(133, 'Jean-Pierre Delarge'),
(134, 'Kalandraka'),
(135, 'Kate\'art'),
(136, 'Kid Pocket'),
(137, 'Kilowatt'),
(138, 'Kimane'),
(139, 'Krom Sakamapheap'),
(140, 'L agrume'),
(141, 'L art à la page'),
(142, 'L Edune'),
(143, 'L élan vert'),
(144, 'L Harmattan'),
(145, 'L Hydre'),
(146, 'L idée bleue'),
(147, 'L iroli'),
(148, 'La Bagnole'),
(149, 'La cabane sur le chien'),
(150, 'La compagnie Créative'),
(151, 'La Découverte poche'),
(152, 'La joie de lire'),
(153, 'La joie par les livres'),
(154, 'La maison est en carton'),
(155, 'La Martinière'),
(156, 'La Palissade'),
(157, 'La Pastèque'),
(158, 'La Renarde rouge'),
(159, 'La ville brûle'),
(160, 'Larousse'),
(161, 'Le baron perché'),
(162, 'Le cherche midi'),
(163, 'Le Dé bleu'),
(164, 'Le Farfadet bleu'),
(165, 'Le Genevrier'),
(166, 'Le Griffon bleu'),
(167, 'Le Jasmin'),
(168, 'Le Pommier'),
(169, 'Le port a jauni'),
(170, 'Le Rocher'),
(171, 'Le Sablier éditeur'),
(172, 'Le Sorbier'),
(173, 'Le Sorbier/Amnesty'),
(174, 'Le Trou de nez'),
(175, 'Le vengeur masqué'),
(176, 'Les 400 coups'),
(177, 'Les Arènes'),
(178, 'Les Cahiers de la Charte'),
(179, 'les éditions du mouton cerise'),
(180, 'Les fourmis rouges'),
(181, 'Les Grandes Personnes'),
(182, 'Les Grands Personnes'),
(183, 'Les petits bérets'),
(184, 'Les papareils'),
(185, 'Lirabelle'),
(186, 'Lirabelle Amnesty'),
(187, 'Lis avec moi'),
(188, 'Lito'),
(189, 'Little Urban'),
(190, 'Lo Païs d\'Enfance'),
(191, 'Magnard'),
(192, 'Magnard jeunesse'),
(193, 'Mango'),
(194, 'Mango jeunesse'),
(195, 'Margot'),
(196, 'Marsam'),
(197, 'MeMo'),
(198, 'Mic-Mac'),
(199, 'Michalon'),
(200, 'Michel Lafon'),
(201, 'Mijade'),
(202, 'Mila'),
(203, 'Mila éditions'),
(204, 'Milan'),
(205, 'Milan éducation'),
(206, 'Milan jeunesse'),
(207, 'Milan poche'),
(208, 'Millefeuilles'),
(209, 'Minedition'),
(210, 'Mini Syros'),
(211, 'Montreuil'),
(212, 'MØtus'),
(213, 'Mouton cerise'),
(214, 'Naïve'),
(215, 'Nathan'),
(216, 'Nathan jeunesse'),
(217, 'Nord-Sud'),
(218, 'Notari'),
(219, 'Nuinui'),
(220, 'OQO éditions'),
(221, 'Oskar'),
(222, 'Oskar jeunesse'),
(223, 'Où sont les enfants '),
(224, 'P tit cairn'),
(225, 'P tit Glénat'),
(226, 'Palette'),
(227, 'Paquet éditions'),
(228, 'Paris Bibliothèques'),
(229, 'Paris Musées'),
(230, 'Pastel'),
(231, 'PEMF'),
(232, 'PEMF ados'),
(233, 'Penguin books'),
(234, 'Père Fouettard'),
(235, 'Petit à petit'),
(236, 'Picquier jeunesse'),
(237, 'Pluie d étoiles'),
(238, 'Pluie d étoiles'),
(239, 'Plume d Ocris'),
(240, 'Plume de carotte'),
(241, 'Poche'),
(242, 'Pocket'),
(243, 'Pocket jeunesse'),
(244, 'Pocket junior'),
(245, 'Pockett junior'),
(246, 'Point de suspension'),
(247, 'Points de Suspension'),
(248, 'Poisson soluble'),
(249, 'Pourquoi pas'),
(250, 'Présence production'),
(251, 'Privat'),
(252, 'Publisud'),
(253, 'Quart monde'),
(254, 'Quatre fleuves'),
(255, 'Québec'),
(256, 'Rageot'),
(257, 'Réciproques'),
(258, 'Réunion des musées nationaux'),
(259, 'Réunion musées nationaux'),
(260, 'Rêves bleus'),
(261, 'Ricochet'),
(262, 'Rivages'),
(263, 'Robert Laffont'),
(264, 'Rocher'),
(265, 'Rouegue'),
(266, 'Rouergue'),
(267, 'Rouge safran'),
(268, 'Rue du monde'),
(269, 'Ruisseaux d Afrique'),
(270, 'Saltimbanque'),
(271, 'Sarbacane'),
(272, 'Sarbacane Amnesty'),
(273, 'SEDRAP'),
(274, 'SEDRAP jeunesse'),
(275, 'Seghers'),
(276, 'Seghers jeune bilingue'),
(277, 'Seuil'),
(278, 'Seuil jeunesse'),
(279, 'Soc et foc'),
(280, 'Sorbier'),
(281, 'Souchon-Garrigue Hélène'),
(282, 'Stock'),
(283, 'Syros'),
(284, 'Syros Jeunesse'),
(285, 'Syros Amnesty'),
(286, 'Table ronde'),
(287, 'Talents hauts'),
(288, 'Tapori'),
(289, 'Thierry Magnier'),
(290, 'Tourbillon'),
(291, 'Touret'),
(292, 'Usborne'),
(293, 'Vents d ailleurs'),
(294, 'Verdier'),
(295, 'Versant Sud'),
(296, 'Vigot'),
(297, 'Vilo jeunesse'),
(298, 'Vives voix'),
(299, 'Walker Book'),
(300, 'Yanbow al Kitab'),
(301, 'Yomad'),
(302, 'Zone J.'),
(303, 'Zorba');

-- --------------------------------------------------------

--
-- Structure de la table `library_branch`
--

CREATE TABLE `library_branch` (
  `id_branch` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `no_copies` int(11) NOT NULL,
  `auteur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `library_branch`
--

INSERT INTO `library_branch` (`id_branch`, `branch_name`, `no_copies`, `auteur_id`) VALUES
(1, 'gombe', 50, 2),
(1, 'gombe', 60, 1),
(1, 'gombe', 40, 3),
(1, 'gombe', 17, 1),
(2, 'masina', 50, 2),
(2, 'masina', 30, 6),
(2, 'masina', 40, 3);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id_livre` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `auteur_id` int(11) NOT NULL,
  `editeur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_livre`, `titre`, `auteur_id`, `editeur_id`) VALUES
(1, '1 2 3 4 pattes', 1, 2),
(2, '1 2 3 banquise', 2, 3),
(3, '10 contes de fantômes', 8, 7),
(4, '1 2 3 petits chats qui savaient compter jusqu à 3', 3, 5),
(5, 'A tout petits pas', 4, 5),
(6, 'A trois, on a moins froid', 5, 6),
(7, 'Aagun', 7, 9),
(8, 'ABC bestiaire', 9, 11),
(9, 'ABC bêtes', 14, 17);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id_auteur`);

--
-- Index pour la table `borrower`
--
ALTER TABLE `borrower`
  ADD UNIQUE KEY `card_no` (`card_no`) USING BTREE,
  ADD KEY `library_branch_id` (`library_branch_id`),
  ADD KEY `livre_id` (`livre_id`);

--
-- Index pour la table `editeurs`
--
ALTER TABLE `editeurs`
  ADD PRIMARY KEY (`id_editeur`);

--
-- Index pour la table `library_branch`
--
ALTER TABLE `library_branch`
  ADD KEY `auteur_id` (`auteur_id`),
  ADD KEY `id_branch` (`id_branch`) USING BTREE;
ALTER TABLE `library_branch` ADD FULLTEXT KEY `branch_name` (`branch_name`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id_livre`),
  ADD KEY `auteur_id` (`auteur_id`),
  ADD KEY `editeur_id` (`editeur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id_auteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `editeurs`
--
ALTER TABLE `editeurs`
  MODIFY `id_editeur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT pour la table `library_branch`
--
ALTER TABLE `library_branch`
  MODIFY `id_branch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `borrower`
--
ALTER TABLE `borrower`
  ADD CONSTRAINT `borrower_ibfk_1` FOREIGN KEY (`library_branch_id`) REFERENCES `library_branch` (`id_branch`),
  ADD CONSTRAINT `borrower_ibfk_2` FOREIGN KEY (`livre_id`) REFERENCES `livre` (`id_livre`);

--
-- Contraintes pour la table `library_branch`
--
ALTER TABLE `library_branch`
  ADD CONSTRAINT `library_branch_ibfk_1` FOREIGN KEY (`auteur_id`) REFERENCES `auteurs` (`id_auteur`);

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`auteur_id`) REFERENCES `auteurs` (`id_auteur`),
  ADD CONSTRAINT `livre_ibfk_2` FOREIGN KEY (`editeur_id`) REFERENCES `editeurs` (`id_editeur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
