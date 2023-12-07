-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2023 at 05:11 AM
-- Server version: 8.0.27
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raffle_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `code`, `name`) VALUES
(1, 'A2006118', 'Lomocso, Reynaldo B.'),
(2, 'A9400250', 'Guiñabo, Virginia C.'),
(3, 'A2001028', 'Abis, Cherry Ann A.'),
(4, 'A2023100', 'Limen, Liane Joy M.'),
(5, 'A2019104', 'Canto, Meilin T.'),
(6, 'A2023102', 'Bacatan, Esther N.'),
(7, 'A9600327', 'Gelvero, Emy Jane M.'),
(8, 'A9800474', 'Caguioa, Sheryl R.'),
(9, 'A9400245', 'Segurigan, Elena B.'),
(10, 'A2022159', 'Baliton, Jena Criselle F.'),
(11, 'A2019045', 'Araneta, John Lloyd M.'),
(12, 'A2023092', 'Perez, Julley Anne P.'),
(13, 'A9300217', 'Gonzales, Annabelle F.'),
(14, 'A2022103', 'Bairula, Juliet Marie A.'),
(15, 'A2000002', 'Estrada, Esperanza S.'),
(16, 'A2007037', 'Giva, Juneth G.'),
(17, 'A9700374', 'Togado, Evelyn F.'),
(18, 'A2012030', 'Longakit, Wendy C.'),
(19, 'A9500291', 'Rojas, Nympha T.'),
(20, 'A2016048', 'Badlon, Gladys T.'),
(21, 'A2002041', 'Forniza, Mary Grace S.'),
(22, 'A2023145', 'Hipolito, Shermay V.'),
(23, 'A2022095', 'Arcillas, Clairizza V.'),
(24, 'A2019170', 'Salajug, Nova Joy R.'),
(25, 'A9600339', 'Bedua, Araceli R.'),
(26, 'A2022088', 'Baluan, Madzmah Y.'),
(27, 'A2004082', 'Mendoza, Angelita F.'),
(28, 'A2021030', 'Rodriguez, Julievi D.'),
(29, 'A2022099', 'Abella, Mary Audrey A.'),
(30, 'A2006067', 'Jumawan, Alexander A.'),
(31, 'A2023006', 'Balagot, Alfonso M.'),
(32, 'A2019055', 'Francisco, Rica Bianca S.'),
(33, 'A2018105', 'Lin Hua, Camille A.'),
(34, 'A2023103', 'Bautista, Rochelle Elaine L.'),
(35, 'A2004014', 'Alama, Erlinda S.'),
(36, 'A2018074', 'Gomez, Emmie Grace N.'),
(37, 'A9600337', 'Gorme, Ma. Charina O.'),
(38, 'A2023161', 'Fernandez, Liezerl Geames N.'),
(39, 'A2018124', 'Ramos, Honey Rose M.'),
(40, 'A2012056', 'Tubio, Jennifer L.'),
(41, 'A9900627', 'Luza, Eva DF.'),
(42, 'A2006113', 'Cuaresma, Alma D.'),
(43, 'A2002035', 'Rosagaron, Jr., Belino R.'),
(44, 'A2015079', 'Lim, Sherry Gloria A.'),
(45, 'A2022061', 'Ladjahasan, Jona Marie M.'),
(46, 'A2023214', 'Amiril, Khaleilah P.'),
(47, 'A2023119', 'Losabia, Erica Joy B.'),
(48, 'A2013144', 'Dela Cruz, Judy Mae T.'),
(49, 'A2023215', 'Arjona, Angelica V.'),
(50, 'A2023125', 'Bitangcor, Angelo Paulo R.'),
(51, 'A9900545', 'Filoteo, Mary Ann M.'),
(52, 'A2023139', 'De Ocampo, Kassandra L.'),
(53, 'A2022055', 'Faustino, Adrianne Kyle G.'),
(54, 'A2023128', 'Montero, Mary Angela A.'),
(55, 'A2023027', 'Casas, Jan David S.'),
(56, 'A2013049', 'Omboy, Welma L.'),
(57, 'A2016074', 'Miro, Edrian Dave M.'),
(58, 'A2004137', 'Quijano, Maria Victoria T.'),
(59, 'A2023047', 'Natividad, Marvin D.'),
(60, 'A2022060', 'Napolereyes, Michelle C.'),
(61, 'A2020062', 'Belciña, Ma. Angelee A.'),
(62, 'A2019146', 'Kitane, Kathy Y.'),
(63, 'A2002119', 'Aguila, Johanna G.'),
(64, 'A2017035', 'Jacinto, Cherramie B.'),
(65, 'A2023002', 'Maniago, Monique A.'),
(66, 'A9800507', 'Rio, Marissa E.'),
(67, 'A2008001', 'Alvarez, Jelly Anne D.'),
(68, 'A2019071', 'Garcia, Ionee Bel C.'),
(69, 'A2016063', 'Rublico, Anna Marie V.'),
(70, 'A2023193', 'Evangelista, Justin P.'),
(71, 'A9800510', 'Filoteo, Clemencia Maria B.'),
(72, 'A2017064', 'Cenas, Angel Ridette L.'),
(73, 'A2023085', 'Setit, Jr., Romelio N.'),
(74, 'A2021042', 'Hawari, Racy Joy R.'),
(75, 'A2022162', 'Dumayag, Mickaella Joyce Y.'),
(76, 'A2023097', 'Segayo, Kristine Mae Isabelle D.'),
(77, 'A2013074', 'Floriza, Marilou E.'),
(78, 'A2003062', 'Pong, Marilou L.'),
(79, 'A2004054', 'Tiong, Sheila L.'),
(80, 'A2023123', 'Cañete, Roselyn G.'),
(81, 'A2023025', 'Alvendia, Cherrie B.'),
(82, 'A9400268', 'Ascura, Marcelina C.'),
(83, 'A2016008', 'Mabanal, Marilou O.'),
(84, 'A2022063', 'Rivero, Jr., Edgar T.'),
(85, 'A2023165', 'Ababao, Cryl .'),
(86, 'C2010002', 'Adil, Akin I.'),
(87, 'A2022182', 'Sta. Teresa, Parisa H.'),
(88, 'A2005044', 'Rio, Gilbert A..'),
(89, 'A2005003', 'Araneta, Ma. Beliza E.'),
(90, 'A2005121', 'Maico, Gertrudes G.'),
(91, 'A2020020', 'Miguel, Arlene A.'),
(92, 'A2017182', 'Santos, Pauleen Mae M.'),
(93, 'A9000166', 'Calingacion, Lynnie M.'),
(94, 'A2018136', 'Martin, Ingrid Mae A.'),
(95, 'A2021044', 'Macalintal, Hannah Grace R.'),
(96, 'A2006010', 'Quilos, Antonia R.'),
(97, 'A9800453', 'Buentipo, Ma. Lalaine I.'),
(98, 'A2006091', 'Cardenas, Crizel P.'),
(99, 'A2023063', 'Papa, Jozeff Allyn S.'),
(100, 'A2023124', 'Boholst, Jay-Anne F.'),
(101, 'A2005009', 'Romero, Maria Rosario M.'),
(102, 'A2006030', 'Manuel, Maria Eleanor B.'),
(103, 'A2022097', 'Rivero, Maria Abegail T.'),
(104, 'A8800138', 'Natividad, Roselita O.'),
(105, 'A2003060', 'Reyes, Jennifer G.'),
(106, 'A2022142', 'Comahig, Ruth B.'),
(107, 'A2018017', 'Tarroza, Jacklyn M.'),
(108, 'A2023134', 'Bucoy, Judd Harvey T.'),
(109, 'A2020034', 'Wahab, Lilia F.'),
(110, 'A2004057', 'Reyes, Michelle C.'),
(111, 'A2019171', 'Delosa, Romel W.'),
(112, 'A2000069', 'Cañones, Ma. Christina A.'),
(113, 'A8900141', 'Concepcion, Hezekiah .'),
(114, 'A2011096', 'CRESMUNDO, ARMEE JAY L.'),
(115, 'A2009044', 'Rabara, Khristine B.'),
(116, 'A2001069', 'Gonzaga, Modesta A.'),
(117, 'A2009029', 'Pasilan, Earl Francis C.'),
(118, 'A9700387', 'Porras, Joel C.'),
(119, 'A2021065', 'Degusman, Razma O.'),
(120, 'A2014131', 'Ramillano, Aleli J.'),
(121, 'A2000096', 'Solaran, Susette B.'),
(122, 'A2017189', 'Patiño, Jeleth P.'),
(123, 'A9700416', 'Dela Cruz, Perre Ian T.'),
(124, 'A2015048', 'Emmanuel, Marjorie S.'),
(125, 'A2004083', 'Panaguiton, Leah M.'),
(126, 'A2001084', 'Panaguiton, Randy V.'),
(127, 'A2017199', 'Santos, Rigelin Grace B.'),
(128, 'A9400236', 'Ekstrom, Divince O.'),
(129, 'A2019172', 'Himor, Jomarie Mhel P.'),
(130, 'A2004101', 'Pis-an, Sofia H.'),
(131, 'A8900144', 'Mabalot, Nimfa F.'),
(132, 'A2023113', 'Dacles, Nimrod J.'),
(133, 'A2001070', 'Pison, Araceli S.'),
(134, 'A2017067', 'Quibo-Quibo, Lyka Mae C.'),
(135, 'A2004104', 'Miguel, Elsie P.'),
(136, 'A2021078', 'Espinosa, Rochelle P.'),
(137, 'A2007057', 'Dagalea, Maridel B.'),
(138, 'A9700358', 'Sabdilon, Jayson V.'),
(139, 'A2002029', 'De Villa, Raquel O.'),
(140, 'A2023077', 'Laudin, Mohammad .'),
(141, 'A2023087', 'Samson, Mardia T.'),
(142, 'A2023122', 'Ortillano, Angelica C.'),
(143, 'A2004116', 'Absara, Ailyn S.'),
(144, 'A2001036', 'Pajarito, Jonathan Geronimo B.'),
(145, 'A2002030', 'Enriquez, Mary Ruth V.'),
(146, 'A9300213', 'Guerrero, Ruth R.'),
(147, 'A2003047', 'Sales, Catherine A.'),
(148, 'A9500297', 'Tuazon, Emelina C.'),
(149, 'A2023131', 'Ledesma, Euleigh Quin S.'),
(150, 'A2023098', 'Villarin, Jhulie Rose E.'),
(151, 'A2022144', 'Manolis, Jenalyn G.'),
(152, 'A2023163', 'Lasmarias, Daniel Clint P.'),
(153, 'A2001106', 'Inzo, Hazel S.'),
(154, 'A2023190', 'Balubal, Chrisine Joy L.'),
(155, 'A2008026', 'Rabajante, Dorothy Joann Lei L.'),
(156, 'A2022002', 'Palma, Charito S.'),
(157, 'A9700376', 'Macrohon, Lucia Loreli M.'),
(158, 'A2023177', 'Natividad, Angelique Marris B.'),
(159, 'A2012060', 'Cascara, Sherylyn B.'),
(160, 'A9800491', 'De Castro, Aleli A.'),
(161, 'A9100180', 'Tandoc, Maria  Bella M.'),
(162, 'A2005123', 'Alfaro, Honey Rod T.'),
(163, 'A9100167', 'AGRAVIADOR, PILAR C.'),
(164, 'A2022125', 'Francisco, Noldan King S.'),
(165, 'A2023150', 'Pasion, Gabriel Moises B.'),
(166, 'A2023035', 'Dimaculangan, Giosimon P.'),
(167, 'A2023034', 'Mustaham, Micah Charles B.'),
(168, 'A2022118', 'Laput, Lorraine Aimie N.'),
(169, 'A2022153', 'Ramos, Doris T.'),
(170, 'A9300220', 'Partosa, Jocelyn D.'),
(171, 'A2007045', 'Partosa, Jessica D.'),
(172, 'A2000089', 'Ebal, Gerald James Y.'),
(173, 'A2023188', 'Santos, Christelbeth B.'),
(174, 'A2023120', 'Singgo, Ralph Christian H.'),
(175, 'A2003059', 'Bautista, Jr., Danilo T.'),
(176, 'A2021060', 'Libao, Loryly R.'),
(177, 'A2022116', 'Vicente, Jerwin A.'),
(178, 'A2022169', 'Ricalde, Alvin Rey .'),
(179, 'A8800137', 'Deles, Maria Adeliza F.'),
(180, 'A2023041', 'Colonia, Jovito B.'),
(181, 'A9700400', 'Miguel, Marilyn T.'),
(182, 'A2022171', 'Sajulga, Wilbert B.'),
(183, 'A2007059', 'Candido, Mark Vicente A.'),
(184, 'A2019174', 'Lacastesantos, Ronel P.'),
(185, 'A2023086', 'Bernaldez, Ericha G.'),
(186, 'A9700406', 'Vecina, Richter Robin M.'),
(187, 'A2017198', 'Suarez, Khryszha Maye S.'),
(188, 'A2023117', 'Hernandez, Daniel Angelito G.'),
(189, 'A2001043', 'Enriquez, Lucibel DA.'),
(190, 'A2018046', 'KNUTTEL, MONALISA NINIA B.'),
(191, 'A2017066', 'Martinez, June Dexter P.'),
(192, 'A2022107', 'Wee, Tommy Lloyd .'),
(193, 'A2022077', 'Ramos, John Hartford B.'),
(194, 'A2022084', 'Lozano, Nova S.'),
(195, 'A2023132', 'Medequillo, Leonel T.'),
(196, 'A2017057', 'Largo, Eva Mae .'),
(197, 'A2018036', 'Sanguan, Maricar A.'),
(198, 'A2023140', 'Masamayor, Kent Zacharee Q.'),
(199, 'A2019126', 'Francisco, Erica Marie B.'),
(200, 'A2020054', 'Manalo, Fei Claudine C.'),
(201, 'A2023185', 'Martinez, Wilfred E.'),
(202, 'A2023111', 'Alpasain, Aungus T.'),
(203, 'A2023142', 'Miro, Neil Ericsson L.'),
(204, 'A2023200', 'Dammang, Rhadz-Maynur J.'),
(205, 'A9500269', 'Miro, Nelson T.'),
(206, 'A2019080', 'Wahid, Armina A.'),
(207, 'A2001029', 'BERNARDO, ARACELI D.'),
(208, 'A2021097', 'Quimson, Kim Faye E.'),
(209, 'A2000007', 'Tugade, Judith Joy V.');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

DROP TABLE IF EXISTS `winners`;
CREATE TABLE IF NOT EXISTS `winners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL,
  `draw` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_id_fk` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `winners`
--
ALTER TABLE `winners`
  ADD CONSTRAINT `ticket_id_fk` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
