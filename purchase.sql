-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 12:04 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `purchase`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE IF NOT EXISTS `customer_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `landline` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`id`, `company_name`, `customer_name`, `mobile`, `landline`, `mail`, `gst_no`) VALUES
(1, 'RB Processed Foods ', '', '', '', '', '29ACYPV7661G1ZH'),
(2, 'Bhattas Foods Pvt Ltd ', '', '', '', '', '29AAECB0808Q1ZC'),
(3, 'Mayura Foods(Cake Shop) ', '', '', '', '', '29AAXFM0473E1ZW'),
(4, 'Shree Mathru Foods ', '', '', '', '', '29AFPPM7428E1Z0'),
(5, 'Pride Bakers Pvt Ltd ', '', '', '', '', '29AAFCP9453Q1ZE'),
(6, 'Shree Vadiraja Foods ', '', '', '', '', '29ACSFS4197E1ZE'),
(7, 'Cool Joint Fast Food Pvt Ltd ', '', '', '', '', '29AACCC5056H1ZM'),
(8, 'Aahar Cake of the Day(Tumkur) ', '', '', '', '', '29AAWFA1083B1ZF'),
(9, 'Shree Maruthi Enterprises ', '', '', '', '', '29ALGPC2945P1ZN'),
(10, 'Bon Traders ', '', '', '', '', '29AAQFB8494D1ZV'),
(11, 'Nano Caf? Food Service ', '', '', '', '', '29BEOPS4132J1ZY'),
(12, 'Mythri Food Product Pvt Ltd(DVG) ', '', '', '', '', '29AAECM1532G1ZN'),
(13, 'Mayura Bakery(Koramangala) ', '', '', '', '', '29AABFM8890P1ZA'),
(14, 'Good Bread Ltd ', '', '', '', '', '29AABCG3618E1ZT'),
(15, 'R R Products ', '', '', '', '', '29AAFPV5199N1ZK'),
(16, 'SVG Sale Corporation ', '', '', '', '', '29ACXFS6949M2ZN'),
(17, 'Sanju Foods & Chemicals ', '', '', '', '', '29AHTPS5260Q1Z3'),
(18, 'Atlas Distributors Pvt Ltd ', '', '', '', '', '29AABCA8887F1Z8'),
(19, 'Benson Co ', '', '', '', '', '29AADFB3825H1Z1'),
(20, 'Balaji Enterprises ', '', '', '', '', '29AINPC9195R1Z2'),
(21, 'Viveka Essence Mart ', '', '', '', '', '29AACFV6149F1ZX'),
(22, 'Nudrath Fruit Products ', '', '', '', '', '29ADGPC0651E1Z0'),
(23, 'Deva Cocoa Traders ', '', '', '', '', '29AAZPC9250F1Z8'),
(24, 'Balaji Coffee Trading Co ', '', '', '', '', '29AADFB7552R1Z0'),
(25, 'Dev Inc ', '', '', '', '', '29AAFFD6755J1Z2'),
(26, 'Karnataka Sugar Product ', '', '', '', '', '29AGAPT1864F1Z8'),
(27, 'SMS Spices & Food Products ', '', '', '', '', '29AMRPM6255C1Z0'),
(28, 'Pharama Surge Enterprises ', '', '', '', '', '29AHLPJ2524J1Z5'),
(29, 'PSE Chemmisys ', '', '', '', '', '29AAEHJ5431J1Z3'),
(30, 'Aradhya Marketing ', '', '', '', '', '29BLZPD0112R1ZJ'),
(31, 'Nanda Gokula Industries ', '', '', '', '', '29DPUPS0198H1ZY'),
(32, 'SMB Sales Corporation ', '', '', '', '', '29ABOFS6085N1Z2'),
(33, 'Amaravathi Marketing ', '', '', '', '', '29AAEFA8110B1ZZ'),
(34, 'Parry Enterprises India Ltd ', '', '', '', '', '29AAACP3643D1ZM'),
(35, 'Sri Lakshmi Narasimha Traders ', '', '', '', '', '29ANLPK7192D1ZM'),
(36, 'URD', '', '', '', '', '0'),
(37, 'TAAZAMITHAI PVT.LTD.', '', '', '', '', '0'),
(38, 'Multy cakes', '', '', '', '', '29AAGPU8844G1Z1'),
(39, 'SRIDURGA SALES CORPORATION', '', '', '', '', '29ABKFSO1O6L1ZO'),
(40, 'DP Chocolates', '', '', '', '', '29AARFM4581D1ZV'),
(41, 'SREE NANJUNDESHWARA HOME FOODS', '', '', '', '', '29ADUPN6869M1Z6'),
(42, 'Melting Cakes LLP', '', '', '', '', '29ABGFM2537D1ZC');

-- --------------------------------------------------------

--
-- Table structure for table `month_report`
--

CREATE TABLE IF NOT EXISTS `month_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_gst` varchar(255) NOT NULL,
  `bill_amt` double NOT NULL,
  `amt1` double DEFAULT NULL,
  `cgst1` double DEFAULT NULL,
  `sgst1` double DEFAULT NULL,
  `amt2` double DEFAULT NULL,
  `cgst2` double DEFAULT NULL,
  `sgst2` double DEFAULT NULL,
  `amt3` double DEFAULT NULL,
  `cgst3` double DEFAULT NULL,
  `sgst3` double DEFAULT NULL,
  `amt4` double DEFAULT NULL,
  `cgst4` double DEFAULT NULL,
  `sgst4` double DEFAULT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `month_report_purchase`
--

CREATE TABLE IF NOT EXISTS `month_report_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_gst` varchar(255) NOT NULL,
  `gross_amt` double NOT NULL,
  `sgst` double NOT NULL,
  `cgst` double NOT NULL,
  `totalPrice` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `physical_stock`
--

CREATE TABLE IF NOT EXISTS `physical_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phy_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `physical_stock_entry`
--

CREATE TABLE IF NOT EXISTS `physical_stock_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phy_id` int(11) DEFAULT NULL,
  `prod_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `uom` varchar(255) NOT NULL,
  `old_quantity` double NOT NULL,
  `new_quantity` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE IF NOT EXISTS `product_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `uom` varchar(255) NOT NULL,
  `present_stock` double NOT NULL,
  `tax` varchar(255) NOT NULL,
  `basic_price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`id`, `product_name`, `uom`, `present_stock`, `tax`, `basic_price`) VALUES
(1, 'Custard powder 1kg', 'kg', 321, '18', 0),
(2, 'baking powder 1kg', 'kg', 151, '12', 0),
(3, 'cornflour 1kg', 'kg', 50, '5', 0),
(4, 'coco powder(R)1kg', 'kg', 25, '18', 0),
(5, 'skimmed milk powder(Amulya) 1kg', 'kg', 0, '5', 0),
(6, 'walnut 5kg pack', 'kg', 1, '5', 0),
(7, 'walnut 250grms', 'grms', 5, '5', 0),
(8, 'mango pulp 850grms', 'grms', 49, '12', 0),
(9, 'mango pulp 3.1 kg', 'kg', 18, '12', 0),
(10, 'fruit cocktail 850 grms', 'grms', 48, '5', 0),
(11, 'red cherry 850 grms', 'grms', 118, '5', 0),
(12, 'red cherry with steam 850grms', 'grms', 92, '5', 0),
(13, 'pinaple slice 850grms', 'grms', 68, '5', 0),
(14, 'litchi tin 850 grms', 'grms', 68, '5', 0),
(15, 'litchi tin 510 grms', 'grms', 0, '12', 0),
(16, 'peaches tin 850 grms', 'grms', 9, '5', 0),
(17, 'choco stand 200 grms', 'kg(5pack)', 20, '18', 0),
(18, 'dairy mix 1kg', 'kg', 50, '18', 0),
(19, 'coco powder (J) 950grms', 'grms', 40, '18', 0),
(20, 'skimmed milk powder(nova) 1kg', 'kg', 135, '5', 0),
(21, 'custured powder w.f 2kg', 'kg', 96, '18', 0),
(22, 'gelitine (100 blooms) 1kg', 'kg', 12, '18', 0),
(23, 'magic bread improver 1kg', 'kg', 66, '5', 0),
(24, 'C.P 1kg', 'kg', 5, '5', 0),
(25, 'rose water 500 ml', 'ml', 20, '', 0),
(26, 'butter paper 7.2 kg ream', 'kg', 11, '12', 0),
(27, 'dark compound chips 1kg', 'kg', 184, '18', 0),
(28, 'white compound chips 1kg', 'kg', 28, '18', 0),
(29, 'dark compound bar 500grm', 'kg', 844, '18', 0),
(30, 'white compound bar 500grm', 'kg', 387, '18', 0),
(31, 'decorative ball_non edible 200grms', 'grms', 6, '', 0),
(32, 'venilla no1 500 ml', 'ml', 112, '18', 0),
(33, 'pinaple no1 500ml', 'ml', 95, '18', 0),
(34, 'sweet orrange 500 ml', 'ml', 33, '18', 0),
(35, 'rum accense (jamaika)500ml', 'ml', 2, '18', 0),
(36, 'rasburry red color powder 100grms', 'grms', 5, '18', 0),
(37, 'orange red powder 100grms', 'grms', 36, '18', 0),
(38, 'lemon yellow color powder 100grms', 'grms', 37, '18', 0),
(39, 'vanila powder(B)500 ml', 'ml', 125, '18', 0),
(40, 'orange oil sweet excelent 500ml', 'ml', 12, '18', 0),
(41, 'bananan essence 500 ml', 'ml', 3, '18', 0),
(42, 'american icecream essence soda 500 ml', 'ml', 5, '18', 0),
(43, 'chocalate essence 500ml', 'ml', 20, '18', 0),
(44, 'mix fruit essence 500ml', 'ml', 26, '18', 0),
(45, 'apple green color powder 100grms', 'grms', 5, '18', 0),
(46, 'kesari color powder 100grms', 'grms', 10, '18', 0),
(47, 'milk flavour 500ml', 'ml', 33, '18', 0),
(48, 'rose white accence 500ml', 'ml', 0, '18', 0),
(49, 'butterscotch flavor 500ml', 'ml', 5, '18', 0),
(50, 'mango accence 500ml', 'ml', 3, '18', 0),
(51, 'cordamam accence 500ml', 'ml', 39, '18', 0),
(52, 'safron accence 500ml', 'ml', 5, '18', 0),
(53, 'starwberry accence 500ml', 'ml', 4, '18', 0),
(54, 'rose pink liquid color 500ml', 'ml', 36, '18', 0),
(55, 'liquid color 500ml', 'ml', 19, '18', 0),
(56, 'liquid glucose 1kg', 'kg', 209.3, '18', 0),
(57, 'vanila syrup 750 ml', 'ml', 96, '18', 0),
(58, 'kesari badam pista crush 500ml', 'ml', 1, '12', 0),
(59, 'rose syrup 750ml', 'ml', 18, '12', 0),
(60, 'kesari syrup 750 ml', 'ml', 9, '12', 0),
(61, 'butterscotch apple crush 750 ml', 'ml', 6, '12', 0),
(62, 'strawberry whole 5ltr', 'ltr', 9, '12', 0),
(63, 'blueberry crush 750 ml', 'ml', 59, '12', 0),
(64, 'orange crush 750ml', 'ml', 81, '12', 0),
(65, 'lime ice tea 750ml', 'ml', 5, '12', 0),
(66, 'ginger and lime 750ml', 'ml', 19, '12', 0),
(67, 'pista crush 500ml', 'ml', 5, '12', 0),
(68, 'mango crush 750ml', 'ml', 74, '12', 0),
(69, 'pista crush 750ml', 'ml', 49, '12', 0),
(70, 'blaccurrent crush 750ml', 'ml', 61, '12', 0),
(71, 'bananan crush 750ml', 'ml', 30, '12', 0),
(72, 'green apple 750ml', 'ml', 14, '12', 0),
(73, 'peach and appricot 750ml', 'ml', 10, '12', 0),
(74, 'cranberry 750ml', 'ml', 6, '12', 0),
(75, 'mixed fruit jam malas 4kg can', 'kg', 21, '12', 0),
(76, 'mixed fruit jam malas 1kg can', 'kg', 0, '12', 0),
(77, 'mixed fruit jam (nova)4kg can', 'kg', 135, '12', 0),
(78, 'pinanple jam (nova)4kg', 'kg', 12, '12', 0),
(79, 'chocolate syrup (mala)1ltr', 'ltr', 1, '18', 0),
(80, 'chocolate syrup (manama)1ltr', 'ltr', 64, '18', 0),
(81, 'irish coffee 500ml', 'ml', 13, '18', 0),
(82, 'passion fruit crush 750ml', 'ml', 6, '12', 0),
(83, 'butter scotch crush 1ltr', 'ltr', 93, '12', 0),
(84, 'custured appale 1ltr', 'ltr', 5, '12', 0),
(85, 'watermelon crush 750ml', 'ml', 1, '12', 0),
(86, 'cake cup no12-role', 'role', 22, '12', 0),
(87, 'stawberry crush 750ml', 'ml', 117, '12', 0),
(88, 'pinaple crush 750ml', 'ml', 64, '12', 0),
(89, 'cake improver activa 1kg', 'kg', 18, '18', 0),
(90, 'gel orneta 1kg', 'kg', 48, '18', 0),
(91, 'rasburry crush 750ml', 'ml', 61, '12', 0),
(92, 'wheat gluton 1kg', 'kg', 52, '5', 0),
(93, 'nestle milk made 5kg', 'kg', 4, '12', 0),
(94, 'pure O choco truffle cream 1kg', 'kg', 22, '18', 0),
(95, 'nut butterscotch 1kg', 'kg', 88, '12', 0),
(96, 'cashew nut 1kg K2', 'kg', 7, '5', 0),
(97, 'pure whip cream 1kg', 'kg', 430, '18', 0),
(98, 'true whip cream 1kg', 'kg', 96, '18', 0),
(99, 'cashew R', '', 30, '5', 0),
(100, 'himalaya honey 1ltr', 'ltr', 79, '5', 0),
(101, 'fig and honey crush 750 ml', 'ml', 8, '12', 0),
(102, 'decsicated coconut powder 1kg', 'kg', 103, '5', 0),
(103, 'skimmed milk powder (DOBA)1kg', 'kg', 609, '5', 0),
(104, 'gloripian dry east 500grms', '1kg', 259, '12', 0),
(105, 'super glage 2.5 kg tub', 'kg', 60, '18', 0),
(106, 'bura suger 2kg', 'kg', 310, '5', 0),
(107, 'suger powder 1kg', 'kg', 1290, '5', 0),
(108, 'orange filling 1kg', 'kg', 0, '12', 0),
(109, 'pineapple filling 1kg', 'kg', 29, '12', 0),
(110, 'blueberry filling 1kg', 'kg', 24, '12', 0),
(111, 'cherry filling 1kg', 'kg', 23, '12', 0),
(112, 'strawberry filling 1kg', 'kg', 29, '12', 0),
(113, 'Mango filling 1kg', 'kg', 16, '12', 0),
(114, 'kiwi crush 750ml', 'ml', 1, '12', 0),
(115, 'caramul 1kg(premiur)', 'kg', 229, '18', 0),
(116, 'caramul 6kg(premiur)', 'kg', 17, '18', 0),
(117, 'caramul morson 1kg', 'kg', 25, '18', 0),
(118, 'neutral glaze 2.5kg', 'kg', 32.5, '18', 0),
(119, 'vanila powder premiur 500grms', 'grms', 93, '18', 0),
(120, 'pista syrup ideal 750ml', 'ml', 26, '12', 0),
(121, 'chilli saus (pouchang)700ml', 'ml', 6, '', 0),
(122, 'soya sous (pochang)700ml', 'ml', 1, '', 0),
(123, 'corn flour(bekers) 1kg', 'kg', 43, '5', 0),
(124, 'Karonda 1kg', 'kg', 99, '12', 0),
(125, 'chocolate thick dressing (crimica)1.25kg', 'kg', 53, '18', 0),
(126, 'Plain waffers(10*1)15pack', '', 1, '', 0),
(127, 'vanilla accence premiur 500ml', 'ml', 10, '18', 0),
(128, 'orange accence premiur 500ml', 'ml', 20, '18', 0),
(129, 'emulssion 500ml', 'ml', 10, '', 0),
(130, 'powder color 500grms', 'grms', 10, '', 0),
(131, 'litchy crush 750ml', 'ml', 99, '12', 0),
(132, 'spray color 100grms', 'grms', 4, '', 0),
(133, 'Pineaple essence (premier)500ml', 'ml', 20, '18', 0),
(134, 'color sprinkles 500grm', 'grms', 6, '', 0),
(135, 'chocolate bar(j)dark', 'kg', 20, '', 0),
(136, 'chocolate syrup(j)', 'kg', 15, '', 0),
(137, 'mixed fruit tin (1*15kg)', 'kg', 4, '', 0),
(138, 'candied papaya (1*15kg)', 'kg', 15, '', 0),
(139, 'mix', 'kg', 25, '', 0),
(140, 'coco powder(j)', 'kg', 25, '', 0),
(141, 'coco powder 2M', 'kg', 25, '', 0),
(142, 'liquid glucose (1*25kg tin)', 'kg', 3, '', 0),
(143, 'mango jam 4kg', 'kg', 1, '', 0),
(144, 'pinapple jam (mala-1kg)', 'kg', 2, '', 0),
(145, 'guava crush 750ml', 'ml', 6, '', 0),
(146, 'cake cup No.6', 'no', 50, '', 0),
(147, 'kesari badam crush 750ml', 'ml', 12, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prod_temp`
--

CREATE TABLE IF NOT EXISTS `prod_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `uom` varchar(255) NOT NULL,
  `quantity` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `prod_temp`
--

INSERT INTO `prod_temp` (`id`, `product_name`, `uom`, `quantity`) VALUES
(1, 'Custard powder 1kg', 'kg', 0),
(2, 'baking powder 1kg', 'kg', 0),
(3, 'cornflour 1kg', 'kg', 0),
(4, 'coco powder(R)1kg', 'kg', 0),
(5, 'skimmed milk powder(Amulya) 1kg', 'kg', 0),
(6, 'walnut 5kg pack', 'kg', 0),
(7, 'walnut 250grms', 'grms', 0),
(8, 'mango pulp 850grms', 'grms', 0),
(9, 'mango pulp 3.1 kg', 'kg', 0),
(10, 'fruit cocktail 850 grms', 'grms', 0),
(11, 'red cherry 850 grms', 'grms', 0),
(12, 'red cherry with steam 850grms', 'grms', 0),
(13, 'pinaple slice 850grms', 'grmd', 0),
(14, 'litchi tin 850 grms', 'grms', 0),
(15, 'litchi tin 510 grms', 'grms', 0),
(16, 'peaches tin 850 grms', 'grms', 0),
(17, 'choco stand 200 grms', 'grms', 0),
(18, 'dairy mix 1kg', 'kg', 0),
(19, 'coco powder (J) 950grms', 'grms', 0),
(20, 'skimmed milk powder(nova) 1kg', 'kg', 0),
(21, 'custured powder w.f 2kg', 'kg', 0),
(22, 'gelitine (100 blooms) 1kg', 'kg', 0),
(23, 'magic bread improver 1kg', 'kg', 0),
(24, 'C.P 1kg', 'kg', 0),
(25, 'rose water 500 ml', 'ml', 0),
(26, 'butter paper 7.2 kg ream', 'kg', 0),
(27, 'dark compound chips 1kg', 'kg', 0),
(28, 'white compound chips 1kg', 'kg', 0),
(29, 'dark compound bar 500grm', 'grms', 0),
(30, 'white compound bar 500grm', 'grms', 0),
(31, 'decorative ball_non edible 200grms', 'grms', 0),
(32, 'venilla no1 500 ml', 'ml', 0),
(33, 'pinaple no1 500ml', 'ml', 0),
(34, 'sweet orrange 500 ml', 'ml', 0),
(35, 'rum accense (jamaika)500ml', 'ml', 0),
(36, 'rasburry red color powder 100grms', 'grms', 0),
(37, 'orange red powder 100grms', 'grms', 0),
(38, 'lemon yellow color powder 100grms', 'grms', 0),
(39, 'vanila powder(B)500 ml', 'ml', 0),
(40, 'orange oil sweet excelent 500ml', 'ml', 0),
(41, 'bananan essence 500 ml', 'ml', 0),
(42, 'american icecream essence soda 500 ml', 'ml', 0),
(43, 'chocalate essence 500ml', 'ml', 0),
(44, 'mix fruit essence 500ml', 'ml', 0),
(45, 'apple green color powder 100grms', 'grms', 0),
(46, 'kesari color powder 100grms', 'grms', 0),
(47, 'milk flavour 500ml', 'ml', 0),
(48, 'rose white accence 500ml', 'ml', 0),
(49, 'butterscotch flavor 500ml', 'ml', 0),
(50, 'mango accence 500ml', 'ml', 0),
(51, 'cordamam accence 500ml', 'ml', 0),
(52, 'safron accence 500ml', 'ml', 0),
(53, 'starwberry accence 500ml', 'ml', 0),
(54, 'rose pink liquid color 500ml', 'ml', 0),
(55, 'liquid color 500ml', 'ml', 0),
(56, 'liquid glucose 1kg', 'kg', 0),
(57, 'vanila syrup 750 ml', 'ml', 0),
(58, 'kesari badam pista crush 500ml', 'ml', 0),
(59, 'rose syrup 750ml', 'ml', 0),
(60, 'kesari syrup 750 ml', 'ml', 0),
(61, 'butterscotch apple crush 750 ml', 'ml', 0),
(62, 'strawberry whole 5ltr', 'ltr', 0),
(63, 'blueberry crush 750 ml', 'ml', 0),
(64, 'orange crush 750ml', 'ml', 0),
(65, 'lime ice tea 750ml', 'ml', 0),
(66, 'ginger and lime 750ml', 'ml', 0),
(67, 'pista crush 500ml', 'ml', 0),
(68, 'mango crush 750ml', 'ml', 0),
(69, 'pista crush 750ml', 'ml', 0),
(70, 'blaccurrent crush 750ml', 'ml', 0),
(71, 'bananan crush 750ml', 'ml', 0),
(72, 'green apple 750ml', 'ml', 0),
(73, 'peach and appricot 750ml', 'ml', 0),
(74, 'cranberry 750ml''', 'ml', 0),
(75, 'mixed fruit jam malas 4kg can', 'kg', 0),
(76, 'mixed fruit jam malas 1kg can', 'kg', 0),
(77, 'mixed fruit jam (nova)4kg can', 'kg', 0),
(78, 'pinanple jam (nova)4kg', 'kg', 0),
(79, 'chocolate syrup (mala)1ltr', 'ltr', 0),
(80, 'chocolate syrup (manama)1ltr', 'ltr', 0),
(81, 'irish ciffee 500ml', 'ml', 0),
(82, 'passion fruit crush 750ml', 'ml', 0),
(83, 'butter scotch crush 1ltr', 'ltr', 0),
(84, 'custured appale 1ltr', 'ltr', 0),
(85, 'watermelon crush 750ml', 'ml', 0),
(86, 'cake cup no12-role', 'role', 0),
(87, 'stawberry crush 750ml', 'ml', 0),
(88, 'pinaple crush 750ml', 'ml', 0),
(89, 'cake improver activa 1kg', 'kg', 0),
(90, 'gel orneta 1kg', 'kg', 0),
(91, 'rasburry crush 750ml', 'ml', 0),
(92, 'wheat gluton 1kg', 'kg', 0),
(93, 'nestle milk made 5kg', 'kg', 0),
(94, 'pure O choco truffle cream 1kg', 'kg', 0),
(95, 'nut butterscotch 1kg', 'kg', 0),
(96, 'cashew nut 1kg K2', 'kg', 0),
(97, 'pure whip cream 1kg', 'kg', 0),
(98, 'true whip cream 1kg', 'kg', 0),
(99, 'cashew R', 'kg', 0),
(100, 'himalaya honey 1ltr', 'ltr', 0),
(101, 'fig and honey crush 750 ml', 'ml', 0),
(102, 'decsicated coconut powder 1kg', 'kg', 0),
(103, 'skimmed milk powder (DOBA)1kg', 'kg', 0),
(104, 'gloripian dry east 500grms', 'grms', 0),
(105, 'super glage 2.5 kg tub', 'kg', 0),
(106, 'bura suger 2kg', 'kg', 0),
(107, 'suger powder 1kg', 'kg', 0),
(108, 'orange filling 1kg', 'kg', 0),
(109, 'pineapple filling 1kg', 'kg', 0),
(110, 'blueberry filling 1kg', 'kg', 0),
(111, 'cherry filling 1kg', 'kg', 0),
(112, 'strawberry filling 1kg', 'kg', 0),
(113, 'Mango filling 1kg', 'kg', 0),
(114, 'kiwi crush 750ml', 'ml', 0),
(115, 'caramul 1kg(premiur)', 'kg', 0),
(116, 'caramul 6kg(premiur)', 'kg', 0),
(117, 'caramul morson 1kg', 'kg', 0),
(118, 'neutral glaze 2.5kg', 'kg', 0),
(119, 'vanila powder premiur 500grms', 'grms', 0),
(120, 'pista syrup ideal 750ml', 'ml', 0),
(121, 'chilli saus (pouchang)700ml', 'ml', 0),
(122, 'soya sous (pochang)700ml', 'ml', 0),
(123, 'corn flour(bekers) 1kg', 'kg', 0),
(124, 'Karonda 1kg', 'kg', 0),
(125, 'chocolate thick dressing (crimica)1.25kg', 'kg', 0),
(126, 'Plain waffers(10*1)15pack', 'kg', 0),
(127, 'vanilla accence premiur 500ml', 'ml', 0),
(128, 'orange accence premiur 500ml', 'ml', 0),
(129, 'emulssion 500ml', 'ml', 0),
(130, 'powder color 500grms', 'grms', 0),
(131, 'litchy crush 750ml', 'ml', 0),
(132, 'spray color 100grms', 'grms', 0),
(133, 'Pineaple essence (premier)500ml', 'ml', 0),
(134, 'color sprinkles 500grm', 'grms', 0),
(135, 'chocolate bar(j)dark', 'kg', 0),
(136, 'chocolate syrup(j)', 'kg', 0),
(137, 'mixed fruit tin (1*15kg)', 'kg', 0),
(138, 'candied papaya (1*15kg)', 'kg', 0),
(139, 'mix', 'kg', 0),
(140, 'coco powder(j)', 'kg', 0),
(141, 'coco powder 2M', 'kg', 0),
(142, 'liquid glucose (1*25kg tin)', 'kg', 0),
(143, 'mango jam 4kg', 'kg', 0),
(144, 'pinapple jam (mala-1kg)', 'kg', 0),
(145, 'guava crush 750ml', 'ml', 0),
(146, 'cake cup No.6', 'no', 0),
(147, 'kesari badam crush 750ml', 'ml', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchased_product_entry`
--

CREATE TABLE IF NOT EXISTS `purchased_product_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inward_number` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_uom` varchar(255) NOT NULL,
  `full_qty` double NOT NULL,
  `basic_price` double NOT NULL,
  `taxTotal` double NOT NULL,
  `total` double NOT NULL,
  `totalPrice` double NOT NULL,
  `selectedTax` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE IF NOT EXISTS `purchase_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inward_number` varchar(255) NOT NULL,
  `inward_date` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE IF NOT EXISTS `sales_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `dc_number` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_gst` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_product_entry`
--

CREATE TABLE IF NOT EXISTS `sales_product_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `quantity` double NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `basic_price` double NOT NULL,
  `basic_total` double NOT NULL,
  `sale_price` double NOT NULL,
  `sale_quantity` double NOT NULL,
  `tax` int(11) NOT NULL,
  `taxTotal` double NOT NULL,
  `totalPrice` double NOT NULL,
  `cgst` double NOT NULL,
  `sgst` double NOT NULL,
  `tax1` double NOT NULL,
  `tax2` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE IF NOT EXISTS `stock_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `inward_date` varchar(255) NOT NULL,
  `opening_stock` double NOT NULL,
  `in_qty` double NOT NULL,
  `out_qty` double NOT NULL,
  `closing_stock` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_master`
--

CREATE TABLE IF NOT EXISTS `supplier_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `contact1` varchar(255) NOT NULL,
  `contact2` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `supplier_master`
--

INSERT INTO `supplier_master` (`id`, `company_name`, `company_address`, `contact1`, `contact2`, `mail`, `gst_no`) VALUES
(1, 'RB Processed Foods ', '', '', '', '', '29ACYPV7661G1ZH'),
(2, 'Bhattas Foods Pvt Ltd ', '', '', '', '', '29AAECB0808Q1ZC'),
(3, 'Mayura Foods(Cake Shop) ', '', '', '', '', '29AAXFM0473E1ZW'),
(4, 'Shree Mathru Foods ', '', '', '', '', '29AFPPM7428E1Z0'),
(5, 'Pride Bakers Pvt Ltd ', '', '', '', '', '29AAFCP9453Q1ZE'),
(6, 'Shree Vadiraja Foods ', '', '', '', '', '29ACSFS4197E1ZE'),
(7, 'Cool Joint Fast Food Pvt Ltd ', '', '', '', '', '29AACCC5056H1ZM'),
(8, 'Aahar Cake of the Day(Tumkur) ', '', '', '', '', '29AAWFA1083B1ZF'),
(9, 'Shree Maruthi Enterprises ', '', '', '', '', '29ALGPC2945P1ZN'),
(10, 'Bon Traders ', '', '', '', '', '29AAQFB8494D1ZV'),
(11, 'Nano Caf? Food Service ', '', '', '', '', '29BEOPS4132J1ZY'),
(12, 'Mythri Food Product Pvt Ltd(DVG) ', '', '', '', '', '29AAECM1532G1ZN'),
(13, 'Mayura Bakery(Koramangala) ', '', '', '', '', '29AABFM8890P1ZA'),
(14, 'Good Bread Ltd ', '', '', '', '', '29AABCG3618E1ZT'),
(15, 'R R Products ', '', '', '', '', '29AAFPV5199N1ZK'),
(16, 'SVG Sale Corporation ', '', '', '', '', '29ACXFS6949M2ZN'),
(17, 'Sanju Foods & Chemicals ', '', '', '', '', '29AHTPS5260Q1Z3'),
(18, 'Atlas Distributors Pvt Ltd ', '', '', '', '', '29AABCA8887F1Z8'),
(19, 'Benson Co ', '', '', '', '', '29AADFB3825H1Z1'),
(20, 'Balaji Enterprises ', '', '', '', '', '29AINPC9195R1Z2'),
(21, 'Viveka Essence Mart ', '', '', '', '', '29AACFV6149F1ZX'),
(22, 'Nudrath Fruit Products ', '', '', '', '', '29ADGPC0651E1Z0'),
(23, 'Deva Cocoa Traders ', '', '', '', '', '29AAZPC9250F1Z8'),
(24, 'Balaji Coffee Trading Co ', '', '', '', '', '29AADFB7552R1Z0'),
(25, 'Dev Inc ', '', '', '', '', '29AAFFD6755J1Z2'),
(26, 'Karnataka Sugar Product ', '', '', '', '', '29AGAPT1864F1Z8'),
(27, 'SMS Spices & Food Products ', '', '', '', '', '29AMRPM6255C1Z0'),
(28, 'Pharama Surge Enterprises ', '', '', '', '', '29AHLPJ2524J1Z5'),
(29, 'PSE Chemmisys ', '', '', '', '', '29AAEHJ5431J1Z3'),
(30, 'Aradhya Marketing ', '', '', '', '', '29BLZPD0112R1ZJ'),
(31, 'Nanda Gokula Industries ', '', '', '', '', '29DPUPS0198H1ZY'),
(32, 'SMB Sales Corporation ', '', '', '', '', '29ABOFS6085N1Z2'),
(33, 'Amaravathi Marketing ', '', '', '', '', '29AAEFA8110B1ZZ'),
(34, 'Parry Enterprises India Ltd ', '', '', '', '', '29AAACP3643D1ZM'),
(35, 'Sri Lakshmi Narasimha Traders ', '', '', '', '', '29ANLPK7192D1ZM'),
(36, 'URD', '', '', '', '', '0'),
(37, 'TAAZAMITHAI PVT.LTD.', '', '', '', '', '0'),
(38, 'Multy cakes', '', '', '', '', '29AAGPU8844G1Z1'),
(39, 'SRIDURGA SALES CORPORATION', '', '', '', '', '29ABKFSO1O6L1ZO'),
(40, 'DP Chocolates', '', '', '', '', '29AARFM4581D1ZV'),
(41, 'SREE NANJUNDESHWARA HOME FOODS', '', '', '', '', '29ADUPN6869M1Z6'),
(42, 'Melting Cakes LLP', '', '', '', '', '29ABGFM2537D1ZC');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
