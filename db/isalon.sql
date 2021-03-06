-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2015 at 01:48 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `isalon`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `email`, `address`, `phone`) VALUES
(1, 'Hp', 'hp@test.com', '<p>\n	testes</p>\n', '81234444'),
(2, 'JobGuy', 'anand@mxbit.co.in', 'Hi there, Ok fine', '9845787370');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `isalon_appusers`
--

CREATE TABLE IF NOT EXISTS `isalon_appusers` (
  `appuser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appuser_name` varchar(180) NOT NULL DEFAULT '',
  `appuser_gid` char(40) NOT NULL DEFAULT '',
  `appuser_email` varchar(180) NOT NULL DEFAULT '',
  `appuser_phone` varchar(20) DEFAULT NULL,
  `appuser_alt_phone` varchar(20) DEFAULT NULL,
  `appuser_addr` varchar(400) DEFAULT NULL,
  `appuser_gender` char(8) DEFAULT NULL,
  `appuser_latlong` varchar(100) DEFAULT NULL,
  `appuser_location` varchar(100) DEFAULT NULL,
  `appuser_place_name` varchar(100) DEFAULT NULL,
  `appuser_geo_info` varchar(1000) DEFAULT NULL,
  `appuser_radius` int(11) DEFAULT NULL,
  `appuser_notification` int(2) DEFAULT NULL,
  `appuser_info` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`appuser_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `isalon_appusers`
--

INSERT INTO `isalon_appusers` (`appuser_id`, `appuser_name`, `appuser_gid`, `appuser_email`, `appuser_phone`, `appuser_alt_phone`, `appuser_addr`, `appuser_gender`, `appuser_latlong`, `appuser_location`, `appuser_place_name`, `appuser_geo_info`, `appuser_radius`, `appuser_notification`, `appuser_info`) VALUES
(12, 'Anand Kumar Vimalanathan', '116506249314570312544', 'anand@mxbit.co.in', '0', '', '0', 'male', NULL, NULL, NULL, NULL, NULL, NULL, '{"id":"116506249314570312544","email":"anand@mxbit.co.in","verified_email":true,"name":"Anand Kumar Vimalanathan","given_name":"Anand Kumar","family_name":"Vimalanathan","link":"https:\\/\\/plus.google.com\\/116506249314570312544","picture":"https:\\/\\/lh4.googleusercontent.com\\/-ppTjnNEJzuY\\/AAAAAAAAAAI\\/AAAAAAAAADU\\/MXurb_AcTE4\\/photo.jpg","gender":"male","locale":"en","hd":"mxbit.co.in","initial":true}');

-- --------------------------------------------------------

--
-- Table structure for table `isalon_cities`
--

CREATE TABLE IF NOT EXISTS `isalon_cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `states_id` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1001 ;

--
-- Dumping data for table `isalon_cities`
--

INSERT INTO `isalon_cities` (`city_id`, `states_id`, `city`) VALUES
(1, 1, 'Adilabad'),
(2, 1, 'Adoni'),
(3, 1, 'Amadalavalasa'),
(4, 1, 'Amalapuram'),
(5, 1, 'Anakapalle'),
(6, 1, 'Anantapur'),
(7, 1, 'Badepalle'),
(8, 1, 'Banganapalle'),
(9, 1, 'Bapatla'),
(10, 1, 'Bellampalle'),
(11, 1, 'Bethamcherla'),
(12, 1, 'Bhadrachalam'),
(13, 1, 'Bhainsa'),
(14, 1, 'Bheemunipatnam'),
(15, 1, 'Bhimavaram'),
(16, 1, 'Bhongir'),
(17, 1, 'Bobbili'),
(18, 1, 'Bodhan'),
(19, 1, 'Chilakaluripet'),
(20, 1, 'Chirala'),
(21, 1, 'Chittoor'),
(22, 1, 'Cuddapah'),
(23, 1, 'Devarakonda'),
(24, 1, 'Dharmavaram'),
(25, 1, 'Eluru'),
(26, 1, 'Farooqnagar'),
(27, 1, 'Gadwal'),
(28, 1, 'Gooty'),
(29, 1, 'Gudivada'),
(30, 1, 'Gudur'),
(31, 1, 'Guntakal'),
(32, 1, 'Guntur'),
(33, 1, 'Hanuman Junction'),
(34, 1, 'Hindupur'),
(35, 1, 'Hyderabad'),
(36, 1, 'Ichchapuram'),
(37, 1, 'Jaggaiahpet'),
(38, 1, 'Jagtial'),
(39, 1, 'Jammalamadugu'),
(40, 1, 'Jangaon'),
(41, 1, 'Kadapa'),
(42, 1, 'Kadiri'),
(43, 1, 'Kagaznagar'),
(44, 1, 'Kakinada'),
(45, 1, 'Kalyandurg'),
(46, 1, 'Kamareddy'),
(47, 1, 'Kandukur'),
(48, 1, 'Karimnagar'),
(49, 1, 'Kavali'),
(50, 1, 'Khammam'),
(51, 1, 'Koratla'),
(52, 1, 'Kothagudem'),
(53, 1, 'Kothapeta'),
(54, 1, 'Kovvur'),
(55, 1, 'Kurnool'),
(56, 1, 'Kyathampalle'),
(57, 1, 'Macherla'),
(58, 1, 'Machilipatnam'),
(59, 1, 'Madanapalle'),
(60, 1, 'Mahbubnagar'),
(61, 1, 'Mancherial'),
(62, 1, 'Mandamarri'),
(63, 1, 'Mandapeta'),
(64, 1, 'Manuguru'),
(65, 1, 'Markapur'),
(66, 1, 'Medak'),
(67, 1, 'Miryalaguda'),
(68, 1, 'Mogalthur'),
(69, 1, 'Nagari'),
(70, 1, 'Nagarkurnool'),
(71, 1, 'Nandyal'),
(72, 1, 'Narasapur'),
(73, 1, 'Narasaraopet'),
(74, 1, 'Narayanpet'),
(75, 1, 'Narsipatnam'),
(76, 1, 'Nellore'),
(77, 1, 'Nidadavole'),
(78, 1, 'Nirmal'),
(79, 1, 'Nizamabad'),
(80, 1, 'Nuzvid'),
(81, 1, 'Ongole'),
(82, 1, 'Palacole'),
(83, 1, 'Palasa Kasibugga'),
(84, 1, 'Palwancha'),
(85, 1, 'Parvathipuram'),
(86, 1, 'Pedana'),
(87, 1, 'Peddapuram'),
(88, 1, 'Pithapuram'),
(89, 1, 'Pondur'),
(90, 1, 'Ponnur'),
(91, 1, 'Proddatur'),
(92, 1, 'Punganur'),
(93, 1, 'Puttur'),
(94, 1, 'Rajahmundry'),
(95, 1, 'Rajam'),
(96, 1, 'Ramachandrapuram'),
(97, 1, 'Ramagundam'),
(98, 1, 'Rayachoti'),
(99, 1, 'Rayadurg'),
(100, 1, 'Renigunta'),
(101, 1, 'Repalle'),
(102, 1, 'Sadasivpet'),
(103, 1, 'Salur'),
(104, 1, 'Samalkot'),
(105, 1, 'Sangareddy'),
(106, 1, 'Sattenapalle'),
(107, 1, 'Siddipet'),
(108, 1, 'Singapur'),
(109, 1, 'Sircilla'),
(110, 1, 'Srikakulam'),
(111, 1, 'Srikalahasti'),
(112, 1, 'Suryapet'),
(113, 1, 'Tadepalligudem'),
(114, 1, 'Tadpatri'),
(115, 1, 'Tandur'),
(116, 1, 'Tanuku'),
(117, 1, 'Tenali'),
(118, 1, 'Tirupati'),
(119, 1, 'Tuni'),
(120, 1, 'Uravakonda'),
(121, 1, 'Venkatagiri'),
(122, 1, 'Vicarabad'),
(123, 1, 'Vijayawada'),
(124, 1, 'Vinukonda'),
(125, 1, 'Visakhapatnam'),
(126, 1, 'Vizianagaram'),
(127, 1, 'Wanaparthy'),
(128, 1, 'Warangal'),
(129, 1, 'Yellandu'),
(130, 1, 'Yemmiganur'),
(131, 1, 'Yerraguntla'),
(132, 1, 'Zahirabad'),
(133, 4, 'Abhayapuri'),
(134, 4, 'Amguri'),
(135, 4, 'Anandnagaar'),
(136, 4, 'Barpeta'),
(137, 4, 'Barpeta Road'),
(138, 4, 'Bilasipara'),
(139, 4, 'Bongaigaon'),
(140, 4, 'Dhekiajuli'),
(141, 4, 'Dhubri'),
(142, 4, 'Dibrugarh'),
(143, 4, 'Digboi'),
(144, 4, 'Diphu'),
(145, 4, 'Dispur'),
(146, 4, 'Gauripur'),
(147, 4, 'Goalpara'),
(148, 4, 'Golaghat'),
(149, 4, 'Guwahati'),
(150, 4, 'Haflong'),
(151, 4, 'Hailakandi'),
(152, 4, 'Hojai'),
(153, 4, 'Jorhat'),
(154, 4, 'Karimganj'),
(155, 4, 'Kokrajhar'),
(156, 4, 'Lanka'),
(157, 4, 'Lumding'),
(158, 4, 'Mangaldoi'),
(159, 4, 'Mankachar'),
(160, 4, 'Margherita'),
(161, 4, 'Mariani'),
(162, 4, 'Marigaon'),
(163, 4, 'Nagaon'),
(164, 4, 'Nalbari'),
(165, 4, 'North Lakhimpur'),
(166, 4, 'Rangia'),
(167, 4, 'Sibsagar'),
(168, 4, 'Silapathar'),
(169, 4, 'Silchar'),
(170, 4, 'Tezpur'),
(171, 4, 'Tinsukia'),
(172, 2, 'Along'),
(173, 2, 'Bomdila'),
(174, 2, 'Itanagar'),
(175, 2, 'Naharlagun'),
(176, 2, 'Pasighat'),
(177, 12, 'Ahmedabad'),
(178, 12, 'Amreli'),
(179, 12, 'Anand'),
(180, 12, 'Ankleshwar'),
(181, 12, 'Bharuch'),
(182, 12, 'Bhavnagar'),
(183, 12, 'Bhuj'),
(184, 12, 'Cambay'),
(185, 12, 'Dahod'),
(186, 12, 'Deesa'),
(187, 12, 'Dholka'),
(188, 12, 'Gandhinagar'),
(189, 12, 'Godhra'),
(190, 12, 'Himatnagar'),
(191, 12, 'Idar'),
(192, 12, 'Jamnagar'),
(193, 12, 'Junagadh'),
(194, 12, 'Kadi'),
(195, 12, 'Kalavad'),
(196, 12, 'Kalol'),
(197, 12, 'Kapadvanj'),
(198, 12, 'Karjan'),
(199, 12, 'Keshod'),
(200, 12, 'Khambhalia'),
(201, 12, 'Khambhat'),
(202, 12, 'Kheda'),
(203, 12, 'Khedbrahma'),
(204, 12, 'Kheralu'),
(205, 12, 'Kodinar'),
(206, 12, 'Lathi'),
(207, 12, 'Limbdi'),
(208, 12, 'Lunawada'),
(209, 12, 'Mahesana'),
(210, 12, 'Mahuva'),
(211, 12, 'Manavadar'),
(212, 12, 'Mandvi'),
(213, 12, 'Mangrol'),
(214, 12, 'Mansa'),
(215, 12, 'Mehmedabad'),
(216, 12, 'Modasa'),
(217, 12, 'Morvi'),
(218, 12, 'Nadiad'),
(219, 12, 'Navsari'),
(220, 12, 'Padra'),
(221, 12, 'Palanpur'),
(222, 12, 'Palitana'),
(223, 12, 'Pardi'),
(224, 12, 'Patan'),
(225, 12, 'Petlad'),
(226, 12, 'Porbandar'),
(227, 12, 'Radhanpur'),
(228, 12, 'Rajkot'),
(229, 12, 'Rajpipla'),
(230, 12, 'Rajula'),
(231, 12, 'Ranavav'),
(232, 12, 'Rapar'),
(233, 12, 'Salaya'),
(234, 12, 'Sanand'),
(235, 12, 'Savarkundla'),
(236, 12, 'Sidhpur'),
(237, 12, 'Sihor'),
(238, 12, 'Songadh'),
(239, 12, 'Surat'),
(240, 12, 'Talaja'),
(241, 12, 'Thangadh'),
(242, 12, 'Tharad'),
(243, 12, 'Umbergaon'),
(244, 12, 'Umreth'),
(245, 12, 'Una'),
(246, 12, 'Unjha'),
(247, 12, 'Upleta'),
(248, 12, 'Vadnagar'),
(249, 12, 'Vadodara'),
(250, 12, 'Valsad'),
(251, 12, 'Vapi'),
(252, 12, 'Vapi'),
(253, 12, 'Veraval'),
(254, 12, 'Vijapur'),
(255, 12, 'Viramgam'),
(256, 12, 'Visnagar'),
(257, 12, 'Vyara'),
(258, 12, 'Wadhwan'),
(259, 12, 'Wankaner'),
(260, 5, 'Amarpur'),
(261, 5, 'Araria'),
(262, 5, 'Areraj'),
(263, 5, 'Arrah'),
(264, 5, 'Asarganj'),
(265, 5, 'Aurangabad'),
(266, 5, 'Bagaha'),
(267, 5, 'Bahadurganj'),
(268, 5, 'Bairgania'),
(269, 5, 'Bakhtiarpur'),
(270, 5, 'Banka'),
(271, 5, 'Banmankhi Bazar'),
(272, 5, 'Barahiya'),
(273, 5, 'Barauli'),
(274, 5, 'Barbigha'),
(275, 5, 'Barh'),
(276, 5, 'Begusarai'),
(277, 5, 'Behea'),
(278, 5, 'Bettiah'),
(279, 5, 'Bhabua'),
(280, 5, 'Bhagalpur'),
(281, 5, 'Bihar Sharif'),
(282, 5, 'Bikramganj'),
(283, 5, 'Bodh Gaya'),
(284, 5, 'Buxar'),
(285, 5, 'Chandan Bara'),
(286, 5, 'Chanpatia'),
(287, 5, 'Chhapra'),
(288, 5, 'Colgong'),
(289, 5, 'Dalsinghsarai'),
(290, 5, 'Darbhanga'),
(291, 5, 'Daudnagar'),
(292, 5, 'Dehri-on-Sone'),
(293, 5, 'Dhaka'),
(294, 5, 'Dighwara'),
(295, 5, 'Dumraon'),
(296, 5, 'Fatwah'),
(297, 5, 'Forbesganj'),
(298, 5, 'Gaya'),
(299, 5, 'Gogri Jamalpur'),
(300, 5, 'Gopalganj'),
(301, 5, 'Hajipur'),
(302, 5, 'Hilsa'),
(303, 5, 'Hisua'),
(304, 5, 'Islampur'),
(305, 5, 'Jagdispur'),
(306, 5, 'Jamalpur'),
(307, 5, 'Jamui'),
(308, 5, 'Jehanabad'),
(309, 5, 'Jhajha'),
(310, 5, 'Jhanjharpur'),
(311, 5, 'Jogabani'),
(312, 5, 'Kanti'),
(313, 5, 'Katihar'),
(314, 5, 'Khagaria'),
(315, 5, 'Kharagpur'),
(316, 5, 'Kishanganj'),
(317, 5, 'Lakhisarai'),
(318, 5, 'Lalganj'),
(319, 5, 'Madhepura'),
(320, 5, 'Madhubani'),
(321, 5, 'Maharajganj'),
(322, 5, 'Mahnar Bazar'),
(323, 5, 'Makhdumpur'),
(324, 5, 'Maner'),
(325, 5, 'Manihari'),
(326, 5, 'Marhaura'),
(327, 5, 'Masaurhi'),
(328, 5, 'Mirganj'),
(329, 5, 'Mokameh'),
(330, 5, 'Motihari'),
(331, 5, 'Motipur'),
(332, 5, 'Munger'),
(333, 5, 'Murliganj'),
(334, 5, 'Muzaffarpur'),
(335, 5, 'Narkatiaganj'),
(336, 5, 'Naugachhia'),
(337, 5, 'Nawada'),
(338, 5, 'Nokha'),
(339, 5, 'Patna'),
(340, 5, 'Piro'),
(341, 5, 'Purnia'),
(342, 5, 'Rafiganj'),
(343, 5, 'Rajgir'),
(344, 5, 'Ramnagar'),
(345, 5, 'Raxaul Bazar'),
(346, 5, 'Revelganj'),
(347, 5, 'Rosera'),
(348, 5, 'Saharsa'),
(349, 5, 'Samastipur'),
(350, 5, 'Sasaram'),
(351, 5, 'Sheikhpura'),
(352, 5, 'Sheohar'),
(353, 5, 'Sherghati'),
(354, 5, 'Silao'),
(355, 5, 'Sitamarhi'),
(356, 5, 'Siwan'),
(357, 5, 'Sonepur'),
(358, 5, 'Sugauli'),
(359, 5, 'Sultanganj'),
(360, 5, 'Supaul'),
(361, 5, 'Warisaliganj'),
(362, 13, 'Ambala'),
(363, 13, 'Ambala'),
(364, 13, 'Asankhurd'),
(365, 13, 'Assandh'),
(366, 13, 'Ateli'),
(367, 13, 'Babiyal'),
(368, 13, 'Bahadurgarh'),
(369, 13, 'Barwala'),
(370, 13, 'Bhiwani'),
(371, 13, 'Charkhi Dadri'),
(372, 13, 'Cheeka'),
(373, 13, 'Ellenabad 2'),
(374, 13, 'Faridabad'),
(375, 13, 'Fatehabad'),
(376, 13, 'Ganaur'),
(377, 13, 'Gharaunda'),
(378, 13, 'Gohana'),
(379, 13, 'Gurgaon'),
(380, 13, 'Haibat(Yamuna Nagar)'),
(381, 13, 'Hansi'),
(382, 13, 'Hisar'),
(383, 13, 'Hodal'),
(384, 13, 'Jhajjar'),
(385, 13, 'Jind'),
(386, 13, 'Kaithal'),
(387, 13, 'Kalan Wali'),
(388, 13, 'Kalka'),
(389, 13, 'Karnal'),
(390, 13, 'Ladwa'),
(391, 13, 'Mahendragarh'),
(392, 13, 'Mandi Dabwali'),
(393, 13, 'Narnaul'),
(394, 13, 'Narwana'),
(395, 13, 'Palwal'),
(396, 13, 'Panchkula'),
(397, 13, 'Panipat'),
(398, 13, 'Pehowa'),
(399, 13, 'Pinjore'),
(400, 13, 'Rania'),
(401, 13, 'Ratia'),
(402, 13, 'Rewari'),
(403, 13, 'Rohtak'),
(404, 13, 'Safidon'),
(405, 13, 'Samalkha'),
(406, 13, 'Shahbad'),
(407, 13, 'Sirsa'),
(408, 13, 'Sohna'),
(409, 13, 'Sonipat'),
(410, 13, 'Taraori'),
(411, 13, 'Thanesar'),
(412, 13, 'Tohana'),
(413, 13, 'Yamunanagar'),
(414, 14, 'Arki'),
(415, 14, 'Baddi'),
(416, 14, 'Bilaspur'),
(417, 14, 'Chamba'),
(418, 14, 'Dalhousie'),
(419, 14, 'Dharamsala'),
(420, 14, 'Hamirpur'),
(421, 14, 'Mandi'),
(422, 14, 'Nahan'),
(423, 14, 'Shimla'),
(424, 14, 'Solan'),
(425, 14, 'Sundarnagar'),
(426, 15, 'Achabbal'),
(427, 15, 'Akhnoor'),
(428, 15, 'Anantnag'),
(429, 15, 'Arnia'),
(430, 15, 'Awantipora'),
(431, 15, 'Bandipore'),
(432, 15, 'Baramula'),
(433, 15, 'Kathua'),
(434, 15, 'Leh'),
(435, 15, 'Punch'),
(436, 15, 'Rajauri'),
(437, 15, 'Sopore'),
(438, 15, 'Srinagar'),
(439, 15, 'Udhampur'),
(440, 17, 'Arasikere'),
(441, 17, 'Bangalore'),
(442, 17, 'Belgaum'),
(443, 17, 'Bellary'),
(444, 17, 'Chamrajnagar'),
(445, 17, 'Chikkaballapur'),
(446, 17, 'Chintamani'),
(447, 17, 'Chitradurga'),
(448, 17, 'Gulbarga'),
(449, 17, 'Gundlupet'),
(450, 17, 'Hassan'),
(451, 17, 'Hospet'),
(452, 17, 'Hubli'),
(453, 17, 'Karkala'),
(454, 17, 'Karwar'),
(455, 17, 'Kolar'),
(456, 17, 'Kota'),
(457, 17, 'Lakshmeshwar'),
(458, 17, 'Lingsugur'),
(459, 17, 'Maddur'),
(460, 17, 'Madhugiri'),
(461, 17, 'Madikeri'),
(462, 17, 'Magadi'),
(463, 17, 'Mahalingpur'),
(464, 17, 'Malavalli'),
(465, 17, 'Malur'),
(466, 17, 'Mandya'),
(467, 17, 'Mangalore'),
(468, 17, 'Manvi'),
(469, 17, 'Mudalgi'),
(470, 17, 'Mudbidri'),
(471, 17, 'Muddebihal'),
(472, 17, 'Mudhol'),
(473, 17, 'Mulbagal'),
(474, 17, 'Mundargi'),
(475, 17, 'Mysore'),
(476, 17, 'Nanjangud'),
(477, 17, 'Pavagada'),
(478, 17, 'Puttur'),
(479, 17, 'Rabkavi Banhatti'),
(480, 17, 'Raichur'),
(481, 17, 'Ramanagaram'),
(482, 17, 'Ramdurg'),
(483, 17, 'Ranibennur'),
(484, 17, 'Robertson Pet'),
(485, 17, 'Ron'),
(486, 17, 'Sadalgi'),
(487, 17, 'Sagar'),
(488, 17, 'Sakleshpur'),
(489, 17, 'Sandur'),
(490, 17, 'Sankeshwar'),
(491, 17, 'Saundatti-Yellamma'),
(492, 17, 'Savanur'),
(493, 17, 'Sedam'),
(494, 17, 'Shahabad'),
(495, 17, 'Shahpur'),
(496, 17, 'Shiggaon'),
(497, 17, 'Shikapur'),
(498, 17, 'Shimoga'),
(499, 17, 'Shorapur'),
(500, 17, 'Shrirangapattana'),
(501, 17, 'Sidlaghatta'),
(502, 17, 'Sindgi'),
(503, 17, 'Sindhnur'),
(504, 17, 'Sira'),
(505, 17, 'Sirsi'),
(506, 17, 'Siruguppa'),
(507, 17, 'Srinivaspur'),
(508, 17, 'Talikota'),
(509, 17, 'Tarikere'),
(510, 17, 'Tekkalakota'),
(511, 17, 'Terdal'),
(512, 17, 'Tiptur'),
(513, 17, 'Tumkur'),
(514, 17, 'Udupi'),
(515, 17, 'Vijayapura'),
(516, 17, 'Wadi'),
(517, 17, 'Yadgir'),
(518, 17, 'Chikmagalur'),
(519, 17, 'Davanagere'),
(520, 17, 'Dharwad'),
(521, 17, 'Gadag'),
(522, 18, 'Adoor'),
(523, 18, 'Akathiyoor'),
(524, 18, 'Alappuzha'),
(525, 18, 'Ancharakandy'),
(526, 18, 'Aroor'),
(527, 18, 'Ashtamichira'),
(528, 18, 'Attingal'),
(529, 18, 'Avinissery'),
(530, 18, 'Chalakudy'),
(531, 18, 'Changanassery'),
(532, 18, 'Chendamangalam'),
(533, 18, 'Chengannur'),
(534, 18, 'Cherthala'),
(535, 18, 'Cheruthazham'),
(536, 18, 'Chittur-Thathamangalam'),
(537, 18, 'Chockli'),
(538, 18, 'Erattupetta'),
(539, 18, 'Guruvayoor'),
(540, 18, 'Irinjalakuda'),
(541, 18, 'Kadirur'),
(542, 18, 'Kalliasseri'),
(543, 18, 'Kalpetta'),
(544, 18, 'Kanhangad'),
(545, 18, 'Kanjikkuzhi'),
(546, 18, 'Kannur'),
(547, 18, 'Kasaragod'),
(548, 18, 'Kayamkulam'),
(549, 18, 'Ernakulam, Kochi'),
(550, 18, 'Kodungallur'),
(551, 18, 'Kollam'),
(552, 18, 'Koothuparamba'),
(553, 18, 'Kothamangalam'),
(554, 18, 'Kottayam'),
(555, 18, 'Kozhikode'),
(556, 18, 'Kunnamkulam'),
(557, 18, 'Malappuram'),
(558, 18, 'Mattannur'),
(559, 18, 'Mavelikkara'),
(560, 18, 'Mavoor'),
(561, 18, 'Muvattupuzha'),
(562, 18, 'Nedumangad'),
(563, 18, 'Neyyattinkara'),
(564, 18, 'Ottappalam'),
(565, 18, 'Palai'),
(566, 18, 'Palakkad'),
(567, 18, 'Panniyannur'),
(568, 18, 'Pappinisseri'),
(569, 18, 'Paravoor'),
(570, 18, 'Pathanamthitta'),
(571, 18, 'Payyannur'),
(572, 18, 'Peringathur'),
(573, 18, 'Perinthalmanna'),
(574, 18, 'Perumbavoor'),
(575, 18, 'Ponnani'),
(576, 18, 'Punalur'),
(577, 18, 'Quilandy'),
(578, 18, 'Shoranur'),
(579, 18, 'Taliparamba'),
(580, 18, 'Thiruvalla'),
(581, 18, 'Thiruvananthapuram'),
(582, 18, 'Thodupuzha'),
(583, 18, 'Thrissur'),
(584, 18, 'Tirur'),
(585, 18, 'Vadakara'),
(586, 18, 'Vaikom'),
(587, 18, 'Varkala'),
(588, 20, 'Ashok Nagar'),
(589, 20, 'Balaghat'),
(590, 20, 'Betul'),
(591, 20, 'Bhopal'),
(592, 20, 'Burhanpur'),
(593, 20, 'Chhatarpur'),
(594, 20, 'Dabra'),
(595, 20, 'Datia'),
(596, 20, 'Dewas'),
(597, 20, 'Dhar'),
(598, 20, 'Fatehabad'),
(599, 20, 'Gwalior'),
(600, 20, 'Indore'),
(601, 20, 'Itarsi'),
(602, 20, 'Jabalpur'),
(603, 20, 'Katni'),
(604, 20, 'Kotma'),
(605, 20, 'Lahar'),
(606, 20, 'Lundi'),
(607, 20, 'Maharajpur'),
(608, 20, 'Mahidpur'),
(609, 20, 'Maihar'),
(610, 20, 'Malajkhand'),
(611, 20, 'Manasa'),
(612, 20, 'Manawar'),
(613, 20, 'Mandideep'),
(614, 20, 'Mandla'),
(615, 20, 'Mandsaur'),
(616, 20, 'Mauganj'),
(617, 20, 'Mhow Cantonment'),
(618, 20, 'Mhowgaon'),
(619, 20, 'Morena'),
(620, 20, 'Multai'),
(621, 20, 'Murwara'),
(622, 20, 'Nagda'),
(623, 20, 'Nainpur'),
(624, 20, 'Narsinghgarh'),
(625, 20, 'Narsinghgarh'),
(626, 20, 'Neemuch'),
(627, 20, 'Nepanagar'),
(628, 20, 'Niwari'),
(629, 20, 'Nowgong'),
(630, 20, 'Nowrozabad'),
(631, 20, 'Pachore'),
(632, 20, 'Pali'),
(633, 20, 'Panagar'),
(634, 20, 'Pandhurna'),
(635, 20, 'Panna'),
(636, 20, 'Pasan'),
(637, 20, 'Pipariya'),
(638, 20, 'Pithampur'),
(639, 20, 'Porsa'),
(640, 20, 'Prithvipur'),
(641, 20, 'Raghogarh-Vijaypur'),
(642, 20, 'Rahatgarh'),
(643, 20, 'Raisen'),
(644, 20, 'Rajgarh'),
(645, 20, 'Ratlam'),
(646, 20, 'Rau'),
(647, 20, 'Rehli'),
(648, 20, 'Rewa'),
(649, 20, 'Sabalgarh'),
(650, 20, 'Sagar'),
(651, 20, 'Sanawad'),
(652, 20, 'Sarangpur'),
(653, 20, 'Sarni'),
(654, 20, 'Satna'),
(655, 20, 'Sausar'),
(656, 20, 'Sehore'),
(657, 20, 'Sendhwa'),
(658, 20, 'Seoni'),
(659, 20, 'Seoni-Malwa'),
(660, 20, 'Shahdol'),
(661, 20, 'Shajapur'),
(662, 20, 'Shamgarh'),
(663, 20, 'Sheopur'),
(664, 20, 'Shivpuri'),
(665, 20, 'Shujalpur'),
(666, 20, 'Sidhi'),
(667, 20, 'Sihora'),
(668, 20, 'Singrauli'),
(669, 20, 'Sironj'),
(670, 20, 'Sohagpur'),
(671, 20, 'Tarana'),
(672, 20, 'Tikamgarh'),
(673, 20, 'Ujhani'),
(674, 20, 'Ujjain'),
(675, 20, 'Umaria'),
(676, 20, 'Vidisha'),
(677, 20, 'Wara Seoni'),
(678, 21, 'Kolhapur'),
(679, 21, 'Ahmednagar'),
(680, 21, 'Akola'),
(681, 21, 'Amravati'),
(682, 21, 'Aurangabad'),
(683, 21, 'Baramati'),
(684, 21, 'Chalisgaon'),
(685, 21, 'Chinchani'),
(686, 21, 'Devgarh'),
(687, 21, 'Dhule'),
(688, 21, 'Dombivli'),
(689, 21, 'Durgapur'),
(690, 21, 'Ichalkaranji'),
(691, 21, 'Jalna'),
(692, 21, 'Kalyan'),
(693, 21, 'Latur'),
(694, 21, 'Loha'),
(695, 21, 'Lonar'),
(696, 21, 'Lonavla'),
(697, 21, 'Mahad'),
(698, 21, 'Mahuli'),
(699, 21, 'Malegaon'),
(700, 21, 'Malkapur'),
(701, 21, 'Manchar'),
(702, 21, 'Mangalvedhe'),
(703, 21, 'Mangrulpir'),
(704, 21, 'Manjlegaon'),
(705, 21, 'Manmad'),
(706, 21, 'Manwath'),
(707, 21, 'Mehkar'),
(708, 21, 'Mhaswad'),
(709, 21, 'Miraj'),
(710, 21, 'Morshi'),
(711, 21, 'Mukhed'),
(712, 21, 'Mul'),
(713, 21, 'Mumbai'),
(714, 21, 'Murtijapur'),
(715, 21, 'Nagpur'),
(716, 21, 'Nalasopara'),
(717, 21, 'Nanded-Waghala'),
(718, 21, 'Nandgaon'),
(719, 21, 'Nandura'),
(720, 21, 'Nandurbar'),
(721, 21, 'Narkhed'),
(722, 21, 'Nashik'),
(723, 21, 'Navi Mumbai'),
(724, 21, 'Nawapur'),
(725, 21, 'Nilanga'),
(726, 21, 'Osmanabad'),
(727, 21, 'Ozar'),
(728, 21, 'Pachora'),
(729, 21, 'Paithan'),
(730, 21, 'Palghar'),
(731, 21, 'Pandharkaoda'),
(732, 21, 'Pandharpur'),
(733, 21, 'Panvel'),
(734, 21, 'Parbhani'),
(735, 21, 'Parli'),
(736, 21, 'Parola'),
(737, 21, 'Partur'),
(738, 21, 'Pathardi'),
(739, 21, 'Pathri'),
(740, 21, 'Patur'),
(741, 21, 'Pauni'),
(742, 21, 'Pen'),
(743, 21, 'Phaltan'),
(744, 21, 'Pulgaon'),
(745, 21, 'Pune'),
(746, 21, 'Purna'),
(747, 21, 'Pusad'),
(748, 21, 'Rahuri'),
(749, 21, 'Rajura'),
(750, 21, 'Ramtek'),
(751, 21, 'Ratnagiri'),
(752, 21, 'Raver'),
(753, 21, 'Risod'),
(754, 21, 'Sailu'),
(755, 21, 'Sangamner'),
(756, 21, 'Sangli'),
(757, 21, 'Sangole'),
(758, 21, 'Sasvad'),
(759, 21, 'Satana'),
(760, 21, 'Satara'),
(761, 21, 'Savner'),
(762, 21, 'Sawantwadi'),
(763, 21, 'Shahade'),
(764, 21, 'Shegaon'),
(765, 21, 'Shendurjana'),
(766, 21, 'Shirdi'),
(767, 21, 'Shirpur-Warwade'),
(768, 21, 'Shirur'),
(769, 21, 'Shrigonda'),
(770, 21, 'Shrirampur'),
(771, 21, 'Sillod'),
(772, 21, 'Sinnar'),
(773, 21, 'Solapur'),
(774, 21, 'Soyagaon'),
(775, 21, 'Talegaon Dabhade'),
(776, 21, 'Talode'),
(777, 21, 'Tasgaon'),
(778, 21, 'Tirora'),
(779, 21, 'Tuljapur'),
(780, 21, 'Tumsar'),
(781, 21, 'Uran'),
(782, 21, 'Uran Islampur'),
(783, 21, 'Wadgaon Road'),
(784, 21, 'Wai'),
(785, 21, 'Wani'),
(786, 21, 'Wardha'),
(787, 21, 'Warora'),
(788, 21, 'Warud'),
(789, 21, 'Washim'),
(790, 21, 'Yevla'),
(791, 22, 'Kakching'),
(792, 22, 'Lilong'),
(793, 22, 'Mayang Imphal'),
(794, 22, 'Thoubal'),
(795, 23, 'Jowai'),
(796, 23, 'Nongstoin'),
(797, 23, 'Shillong'),
(798, 23, 'Tura'),
(799, 24, 'Aizawl'),
(800, 24, 'Champhai'),
(801, 24, 'Lunglei'),
(802, 24, 'Saiha'),
(803, 25, 'Dimapur'),
(804, 25, 'Kohima'),
(805, 25, 'Mokokchung'),
(806, 25, 'Tuensang'),
(807, 25, 'Wokha'),
(808, 25, 'Zunheboto'),
(809, 26, 'Anandapur'),
(810, 26, 'Anugul'),
(811, 26, 'Asika'),
(812, 26, 'Balangir'),
(813, 26, 'Balasore'),
(814, 26, 'Baleshwar'),
(815, 26, 'Bamra'),
(816, 26, 'Barbil'),
(817, 26, 'Bargarh'),
(818, 26, 'Bargarh'),
(819, 26, 'Baripada'),
(820, 26, 'Basudebpur'),
(821, 26, 'Belpahar'),
(822, 26, 'Bhadrak'),
(823, 26, 'Bhawanipatna'),
(824, 26, 'Bhuban'),
(825, 26, 'Bhubaneswar'),
(826, 26, 'Biramitrapur'),
(827, 26, 'Brahmapur'),
(828, 26, 'Brajrajnagar'),
(829, 26, 'Byasanagar'),
(830, 26, 'Cuttack'),
(831, 26, 'Debagarh'),
(832, 26, 'Dhenkanal'),
(833, 26, 'Gunupur'),
(834, 26, 'Hinjilicut'),
(835, 26, 'Jagatsinghapur'),
(836, 26, 'Jajapur'),
(837, 26, 'Jaleswar'),
(838, 26, 'Jatani'),
(839, 26, 'Jeypur'),
(840, 26, 'Jharsuguda'),
(841, 26, 'Joda'),
(842, 26, 'Kantabanji'),
(843, 26, 'Karanjia'),
(844, 26, 'Kendrapara'),
(845, 26, 'Kendujhar'),
(846, 26, 'Khordha'),
(847, 26, 'Koraput'),
(848, 26, 'Malkangiri'),
(849, 26, 'Nabarangapur'),
(850, 26, 'Paradip'),
(851, 26, 'Parlakhemundi'),
(852, 26, 'Pattamundai'),
(853, 26, 'Phulabani'),
(854, 26, 'Puri'),
(855, 26, 'Rairangpur'),
(856, 26, 'Rajagangapur'),
(857, 26, 'Raurkela'),
(858, 26, 'Rayagada'),
(859, 26, 'Sambalpur'),
(860, 26, 'Soro'),
(861, 26, 'Sunabeda'),
(862, 26, 'Sundargarh'),
(863, 26, 'Talcher'),
(864, 26, 'Titlagarh'),
(865, 26, 'Umarkote'),
(866, 28, 'Ahmedgarh'),
(867, 28, 'Amritsar'),
(868, 28, 'Barnala'),
(869, 28, 'Batala'),
(870, 28, 'Bathinda'),
(871, 28, 'Bhagha Purana'),
(872, 28, 'Budhlada'),
(873, 28, 'Chandigarh'),
(874, 28, 'Dasua'),
(875, 28, 'Dhuri'),
(876, 28, 'Dinanagar'),
(877, 28, 'Faridkot'),
(878, 28, 'Fazilka'),
(879, 28, 'Firozpur'),
(880, 28, 'Firozpur Cantt.'),
(881, 28, 'Giddarbaha'),
(882, 28, 'Gobindgarh'),
(883, 28, 'Gurdaspur'),
(884, 28, 'Hoshiarpur'),
(885, 28, 'Jagraon'),
(886, 28, 'Jaitu'),
(887, 28, 'Jalalabad'),
(888, 28, 'Jalandhar'),
(889, 28, 'Jalandhar Cantt.'),
(890, 28, 'Jandiala'),
(891, 28, 'Kapurthala'),
(892, 28, 'Karoran'),
(893, 28, 'Kartarpur'),
(894, 28, 'Khanna'),
(895, 28, 'Kharar'),
(896, 28, 'Kot Kapura'),
(897, 28, 'Kurali'),
(898, 28, 'Longowal'),
(899, 28, 'Ludhiana'),
(900, 28, 'Malerkotla'),
(901, 28, 'Malout'),
(902, 28, 'Mansa'),
(903, 28, 'Maur'),
(904, 28, 'Moga'),
(905, 28, 'Mohali'),
(906, 28, 'Morinda'),
(907, 28, 'Mukerian'),
(908, 28, 'Muktsar'),
(909, 28, 'Nabha'),
(910, 28, 'Nakodar'),
(911, 28, 'Nangal'),
(912, 28, 'Nawanshahr'),
(913, 28, 'Pathankot'),
(914, 28, 'Patiala'),
(915, 28, 'Patran'),
(916, 28, 'Patti'),
(917, 28, 'Phagwara'),
(918, 28, 'Phillaur'),
(919, 28, 'Qadian'),
(920, 28, 'Raikot'),
(921, 28, 'Rajpura'),
(922, 28, 'Rampura Phul'),
(923, 28, 'Rupnagar'),
(924, 28, 'Samana'),
(925, 28, 'Sangrur'),
(926, 28, 'Sirhind Fatehgarh Sahib'),
(927, 28, 'Sujanpur'),
(928, 28, 'Sunam'),
(929, 28, 'Talwara'),
(930, 28, 'Tarn Taran'),
(931, 28, 'Urmar Tanda'),
(932, 28, 'Zira'),
(933, 28, 'Zirakpur'),
(934, 29, 'Ajmer'),
(935, 29, 'Alwar'),
(936, 29, 'Bandikui'),
(937, 29, 'Baran'),
(938, 29, 'Barmer'),
(939, 29, 'Bikaner'),
(940, 29, 'Fatehpur'),
(941, 29, 'Jaipur'),
(942, 29, 'Jaisalmer'),
(943, 29, 'Jodhpur'),
(944, 29, 'Kota'),
(945, 29, 'Lachhmangarh'),
(946, 29, 'Ladnu'),
(947, 29, 'Lakheri'),
(948, 29, 'Lalsot'),
(949, 29, 'Losal'),
(950, 29, 'Makrana'),
(951, 29, 'Malpura'),
(952, 29, 'Mandalgarh'),
(953, 29, 'Mandawa'),
(954, 29, 'Mangrol'),
(955, 29, 'Merta City'),
(956, 29, 'Mount Abu'),
(957, 29, 'Nadbai'),
(958, 29, 'Nagar'),
(959, 29, 'Nagaur'),
(960, 29, 'Nargund'),
(961, 29, 'Nasirabad'),
(962, 29, 'Nathdwara'),
(963, 29, 'Navalgund'),
(964, 29, 'Nawalgarh'),
(965, 29, 'Neem-Ka-Thana'),
(966, 29, 'Nelamangala'),
(967, 29, 'Nimbahera'),
(968, 29, 'Nipani'),
(969, 29, 'Niwai'),
(970, 29, 'Nohar'),
(971, 29, 'Nokha'),
(972, 29, 'Pali'),
(973, 29, 'Phalodi'),
(974, 29, 'Phulera'),
(975, 29, 'Pilani'),
(976, 29, 'Pilibanga'),
(977, 29, 'Pindwara'),
(978, 29, 'Pipar City'),
(979, 29, 'Prantij'),
(980, 29, 'Pratapgarh'),
(981, 29, 'Raisinghnagar'),
(982, 29, 'Rajakhera'),
(983, 29, 'Rajaldesar'),
(984, 29, 'Rajgarh (Alwar)'),
(985, 29, 'Rajgarh (Churu'),
(986, 29, 'Rajsamand'),
(987, 29, 'Ramganj Mandi'),
(988, 29, 'Ramngarh'),
(989, 29, 'Ratangarh'),
(990, 29, 'Rawatbhata'),
(991, 29, 'Rawatsar'),
(992, 29, 'Reengus'),
(993, 29, 'Sadri'),
(994, 29, 'Sadulshahar'),
(995, 29, 'Sagwara'),
(996, 29, 'Sambhar'),
(997, 29, 'Sanchore'),
(998, 29, 'Sangaria'),
(999, 29, 'Sardarshahar'),
(1000, 29, 'Sawai Madhopur');

-- --------------------------------------------------------

--
-- Table structure for table `isalon_jobs`
--

CREATE TABLE IF NOT EXISTS `isalon_jobs` (
  `jobs_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `jobs_client` int(11) NOT NULL,
  `jobs_user` int(11) NOT NULL,
  `jobs_name` varchar(40) NOT NULL DEFAULT '',
  `jobs_radius` int(11) NOT NULL,
  `jobs_latlong` varchar(100) NOT NULL DEFAULT '',
  `jobs_place_name` varchar(100) DEFAULT NULL,
  `jobs_location` varchar(100) DEFAULT NULL,
  `jobs_remuneration` char(10) DEFAULT '',
  `jobs_date` char(30) DEFAULT NULL,
  `jobs_time_from` char(30) DEFAULT NULL,
  `jobs_time_to` char(30) DEFAULT NULL,
  `jobs_short_desc` varchar(200) DEFAULT NULL,
  `jobs_long_desc` varchar(1000) DEFAULT NULL,
  `jobs_options` varchar(100) DEFAULT NULL,
  `jobs_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`jobs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `isalon_jobs`
--

INSERT INTO `isalon_jobs` (`jobs_id`, `jobs_client`, `jobs_user`, `jobs_name`, `jobs_radius`, `jobs_latlong`, `jobs_place_name`, `jobs_location`, `jobs_remuneration`, `jobs_date`, `jobs_time_from`, `jobs_time_to`, `jobs_short_desc`, `jobs_long_desc`, `jobs_options`, `jobs_status`) VALUES
(17, 0, 1, 'Prem', 10, '(12.9715987, 77.59456269999998)', 'Bangalore', 'MacIvor Town, Bangalore Urban', '0', '12/12/2012', '09:45 AM', '10:45 PM', 'Stylist', 'Stylist', '{"id_required":"on","english_required":"on"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `isalon_job_info`
--

CREATE TABLE IF NOT EXISTS `isalon_job_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `position` varchar(20) NOT NULL,
  `locality` varchar(20) NOT NULL,
  `prefered_type` varchar(20) NOT NULL,
  `salary` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `isalon_job_info`
--

INSERT INTO `isalon_job_info` (`id`, `name`, `phone`, `email`, `position`, `locality`, `prefered_type`, `salary`) VALUES
(1, 'jiya', '8893888907', 'jiya@gmail.com', 'manager', '2', '3', 10000),
(5, 'jiya', '1234567890', 'jiya@gmail.com', '3', 'tgdrfg', '2', 2000),
(6, 'lavanya', '1234567890', 'lavanya@gmail.com', '4', 'tvm', '3', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `isalon_saved_jobs`
--

CREATE TABLE IF NOT EXISTS `isalon_saved_jobs` (
  `save_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `save_job_id` int(11) DEFAULT NULL,
  `save_appuser` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`save_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `isalon_staff_requirement`
--

CREATE TABLE IF NOT EXISTS `isalon_staff_requirement` (
  `id` int(80) NOT NULL AUTO_INCREMENT,
  `contact` varchar(200) NOT NULL,
  `name` varchar(80) NOT NULL,
  `address` varchar(200) NOT NULL,
  `business_type` varchar(30) NOT NULL,
  `position_details` varchar(100) NOT NULL,
  `joining_date` varchar(30) NOT NULL,
  `additional_info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` varchar(20) NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `client_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `phone`, `client_id`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '/ysm496ZvR/IeL8DRD6Vte', '1268889823', 1444058835, 1, 'Admin', 'istrator', '0', 0),
(14, '', 'aneesh', '$1$cwOzZctA$e0qR4ufhFoEhM4R1YbNXd0', '', 'aneesh@test.com', NULL, '0', 1402748971, 1, 'text', 'test', '81234444', 1),
(15, '', 'anandv', '$1$ASBz5dr7$xReaoKjKXw3kYhU/g4WuT.', '', 'tomeanand@gmail.com', NULL, '2014-10-09', 1441093325, 1, 'Anand', 'Kumar', '9845787370', 1),
(16, '', 'anand', '$1$1VtXmAlG$616Dy9iA/YSI426Pzx3/D.', '', 'anand@mxbit.co.in', NULL, '2014-12-09', 1418117723, 1, 'Anand', 'Kumar C', '89989989', 2),
(17, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '/ysm496ZvR/IeL8DRD6Vte', '1268889823', 1436209997, 1, 'Admin', 'istrator', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 1),
(12, 14, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
