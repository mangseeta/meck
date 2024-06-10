-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 04:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meck`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminerror`
--

CREATE TABLE `tbl_adminerror` (
  `id` int(11) NOT NULL,
  `errorname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_adminerror`
--

INSERT INTO `tbl_adminerror` (`id`, `errorname`) VALUES
(1, 'ยาเตรียมผสมที่ไม่ถูกต้อง/ไม่เข้ากัน/ผิดเทคนิค\r\n'),
(2, 'ให้ยาผิดคน'),
(3, 'ให้ยาผิดชนิด'),
(4, 'ให้ยาผิดรูปแบบ'),
(5, 'ให้ยาผิดความแรง'),
(6, 'ให้ยาที่แพทย์ไม่ได้สั่ง/แพทย์สั่ง off แล้ว'),
(7, 'ให้ยาผิดวิถีทาง'),
(8, 'ให้ยาผิดเวลา'),
(9, 'ให้ยาจำนวนครั้งมากกว่าที่สั่ง'),
(10, 'ให้ยาจำนวนครั้งน้อยกว่าที่สั่ง'),
(11, 'ให้ยา/สารน้ำ  rate เร็วกว่าที่กำหนด'),
(12, 'ให้ยา/สารน้ำ  rateช้ากว่าที่กำหนด'),
(13, 'ให้ยา/สารน้ำ ผิดวิธีใช้'),
(14, 'ให้ยาโดยอุปกรณ์ไม่เหมาะสม'),
(15, 'ให้ยาที่มีปฏิกิริยาต่อกัน'),
(16, 'ให้ยาที่มีประวัติแพ้ยาอย่างชัดเจน'),
(17, 'ให้ยาผิดขนาด');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_causetype`
--

CREATE TABLE `tbl_causetype` (
  `id` int(2) NOT NULL,
  `causetype` varchar(20) DEFAULT NULL,
  `causename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='ชนิด ME';

--
-- Dumping data for table `tbl_causetype`
--

INSERT INTO `tbl_causetype` (`id`, `causetype`, `causename`) VALUES
(1, 'COMMUN', 'ปัญหาจากการสื่อสาร'),
(2, 'DRUGSS', 'ปัญหาจากยา'),
(3, 'ENVIRO', 'ปัญหาจากสิ่งแวดล้อม'),
(4, 'PERSON', 'ปัญหาจากบุคลากร');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_commucause`
--

CREATE TABLE `tbl_commucause` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `causename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_commucause`
--

INSERT INTO `tbl_commucause` (`id`, `type`, `causename`) VALUES
(1, 'COMMUN', 'ลายมือแพทย์ไม่ชัดเจน'),
(2, 'COMMUN', 'ใช้คำย่อ/ทศนิยม/หน่วยไม่เป็นสากล'),
(3, 'COMMUN', 'คำสั่งใช้ยาไม่ชัดเจน'),
(4, 'COMMUN', 'ไม่มีการส่งต่อข้อมูล/ส่งต่อไม่ดี');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `dep_code` varchar(3) NOT NULL,
  `departmentname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `dep_code`, `departmentname`) VALUES
(1, '101', 'องค์กรแพทย์'),
(2, '102', 'งานพยาบาลผู้ป่วยนอก'),
(3, '103', 'งานพยาบาลผู้ป่วยในชาย'),
(4, '104', 'งานพยาบาลผู้ป่วยในหญิง'),
(5, '105', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน'),
(6, '106', 'งานพยาบาลผู้คลอด'),
(7, '107', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี'),
(8, '108', 'กลุ่มงานทันตกรรม'),
(9, '109', 'กลุ่มงานเภสัชกรรม'),
(10, '110', 'กลุ่มงานเทคนิคการแพทย์'),
(11, '111', 'กลุ่มงานแพทย์แผนไทย'),
(12, '112', 'กลุ่มงานปฐมภูมิ (PCU)'),
(13, '113', 'กลุ่มงานควบคุมและป้องกันโรค'),
(14, '114', 'งานสุขภาพจิตและจิตเวช'),
(15, '115', 'งานรักษาพยาบาลชุมชน'),
(16, '116', 'กลุ่มงานรังษีวิทยา'),
(17, '117', 'กลุ่มงานเวชกรรมฟื้นฟู'),
(18, '118', 'งานเวชระเบียน'),
(19, '201', 'รพ.สต.บุญเรือง'),
(20, '202', 'รพ.สต.ครึ่ง'),
(21, '203', 'รพ.สต.ม่วงชุม'),
(22, '204', 'รพ.สต.ดงหลวง'),
(23, '205', 'รพ.สต.ศรีดอนชัย'),
(24, '206', 'รพ.สต.ทุ่งอ่าง'),
(25, '207', 'รพ.สต.ทุ่งงิ้ว'),
(26, '208', 'รพ.สต.สถาน'),
(27, '209', 'รพ.สต.น้ำม้า'),
(28, '210', 'รพ.สต.ศรีวิไล'),
(29, '211', 'รพ.สต.ใหม่ดอนแก้ว'),
(30, '212', 'รพ.สต.ห้วยซ้อ'),
(31, '213', 'รพ.สต.ซ้อเหนือ'),
(32, '214', 'รพ.สต.เขี๊ยะ'),
(33, '215', 'รพ.สต.เมืองกาญจน์'),
(34, '216', 'รพ.สต.บ้านสองพี่น้อง'),
(35, '217', 'รพ.สต.หาดบ้าย'),
(36, '218', 'สำนักงานสาธารณสุขอำเภอ'),
(37, '301', 'หัวหน้างานการแพทย์'),
(38, '302', 'หัวหน้ากลุ่มการพยาบาล'),
(39, '303', 'หัวหน้างานผู้ป่วยนอก'),
(40, '304', 'หัวหน้างานพยาบาลผู้ป่วยในชาย'),
(41, '305', 'หัวหน้างานพยาบาลผู้ป่วยในหญิง'),
(42, '306', 'หัวหน้างานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน'),
(43, '307', 'หัวหน้างานพยาบาลผู้คลอด'),
(44, '308', 'หัวหน้างานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี'),
(45, '309', 'หัวหน้ากลุ่มงานทันตกรรม'),
(46, '310', 'หัวหน้ากลุ่มงานเภสัชกรรม'),
(47, '311', 'หัวหน้ากลุ่มงานเทคนิคการแพทย์'),
(48, '312', 'หัวหน้ากลุ่มงานแพทย์แผนไทย'),
(49, '313', 'หัวหน้ากลุ่มงานปฐมภูมิ (PCU)'),
(50, '314', 'หัวหน้ากลุ่มงานควบคุมและป้องกันโรค'),
(51, '315', 'หัวหน้างานสุขภาพจิตและจิตเวช'),
(52, '316', 'หัวหน้างานรักษาพยาบาลชุมชน'),
(53, '317', 'หัวหน้ากลุ่มงานรังษีวิทยา'),
(54, '318', 'หัวหน้ากลุ่มงานเวชกรรมฟื้นฟู'),
(55, '319', 'หัวหน้างานเวชระเบียน');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dispensingerror`
--

CREATE TABLE `tbl_dispensingerror` (
  `id` int(11) NOT NULL,
  `dispername` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_dispensingerror`
--

INSERT INTO `tbl_dispensingerror` (`id`, `dispername`) VALUES
(1, 'จ่ายยาผิดคน'),
(2, 'จ่ายยาผิดชนิด'),
(3, 'จ่ายยาซ้ำซ้อน'),
(4, 'จ่ายยาผิดรูปแบบ'),
(5, 'จ่ายยาผิดความแรง'),
(6, 'จ่ายยาขนาดสูง'),
(7, 'จ่ายยาขนาดต่ำ'),
(8, 'จ่ายยาผิดวิธีใช้/ผิดความถี่'),
(9, 'จ่ายยาจำนวนน้อยกว่าที่ควรได้รับ'),
(10, 'จ่ายยามากกว่าจำนวนที่ควรได้รับ'),
(11, 'จ่ายยาที่มีปฏิกิริยาต่อกัน'),
(12, 'จ่ายยาไม่ครบ/ไม่จ่ายยาที่ควรได้รับ'),
(13, 'จ่ายยาที่ไม่ควรได้รับ'),
(14, 'จ่ายยาไม่เหมาะสมกับสภาวะผู้ป่วย'),
(15, 'จ่ายยาที่ผู้ป่วยมีประวัติแพ้ยา'),
(16, 'จ่ายยาที่ฉลากไม่สมบูรณ์'),
(17, 'จ่ายยาที่แพทย์สั่ง off');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_drugcause`
--

CREATE TABLE `tbl_drugcause` (
  `id` int(11) NOT NULL,
  `causetype` varchar(20) NOT NULL,
  `drcname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_drugcause`
--

INSERT INTO `tbl_drugcause` (`id`, `causetype`, `drcname`) VALUES
(1, '', 'ชื่อคล้ายกัน'),
(2, 'DRUGSS', 'บรรจุภัณฑ์คล้ายกัน'),
(3, '', ''),
(4, '', ''),
(5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_drugs`
--

CREATE TABLE `tbl_drugs` (
  `id` int(4) NOT NULL,
  `drugname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_drugs`
--

INSERT INTO `tbl_drugs` (`id`, `drugname`) VALUES
(1, 'Acetazolamide 250 mg TAB'),
(2, 'Acetylcystine 100 mg Powder'),
(3, 'Acetylcystine 300 mg INJ.'),
(4, 'Acetylteine Eff. 600 mg'),
(5, 'Activated charcoal powder  50 gm/pack'),
(6, 'Acyclovir 200 mg. TAB.'),
(7, 'Acyclovir cream 5 g'),
(8, 'Adenosine 6mg/2ml INJ.'),
(9, 'Adrenaline 1mg/ml INJ.'),
(10, 'Albendazole 100mg/10ml Suspension 10ml'),
(11, 'Albendazole 200 mg. TAB. '),
(12, 'Albumin infusion 20% in 50 ml. INJ.'),
(13, 'ALUMINIUM HYDROXIDE 500 MG TAB'),
(14, 'Alcohol 70%  60 ml.'),
(15, 'Alcohol 70%  450 ml.'),
(16, 'Alfacalcidol 0.25 mcg.'),
(17, 'Allopurinol 100 mg.TAB.'),
(18, 'Ambroxol  30mg/5ml Syrup 60ml'),
(19, 'Aminophyline INJ. 200 mg/10 ml'),
(20, 'Aminophylline 100 mg TAB'),
(21, 'Amiodarone 150 mg/3ml INJ.'),
(22, 'Amitriptyline HCL 10 mg TAB'),
(23, 'Amlodipine 5mg TAB.'),
(24, 'Ammon carbonate  180ml'),
(25, 'Ammonium carbonate(ยาแก้ขับเสมหะเด็ก) 60ml'),
(26, 'Amoxicillin 250 mg. CAP'),
(27, 'Amoxicillin 500 mg CAP'),
(28, 'Amoxicillin+Clavulanate- 375  TAB'),
(29, 'Amoxicillin+Clavulanate- 1 gm  TAB'),
(30, 'Amoxicillin+Clavulanate- 1.2 gm INJ'),
(31, 'Amoxicillin+Clavulanate- 156 syrup'),
(32, 'Amoxicillin dry syrup 125 mg/5 ml'),
(33, 'Amoxicillin dry syrup 250 mg/5 ml'),
(34, 'Amphotericin B 50mg INJ..'),
(35, 'Ampicilin 1gm INJ.'),
(36, 'Ampicillin 500 mg. INJ.'),
(37, 'Analgesic cream 30gm   (ยาหม่อง  GPO )'),
(38, 'Antacid gel 240 ml'),
(39, 'Antacid TAB.'),
(40, 'Antirabies vaccine INJ. -ERIG 1000 u./5 ml'),
(41, 'Aromatic ammonia spirit 450 ml'),
(42, 'Aspirin 300 mg.TAB.'),
(43, 'Aspirin 81 mg TAB'),
(44, 'Atenolol 50 mg.TAB.'),
(45, 'Atorvastatin 10 mg TAB'),
(46, 'Atorvastatin 40 mg TAB'),
(47, 'Atracurium  INJ.  (Tracium)'),
(48, 'Atropine sulfate 0.6 mg/ml INJ.'),
(49, 'Baclofen 10 mg TAB'),
(50, 'Beclometazone 250 mcg/puff   Inhaler'),
(51, 'Benzathine benzylpenicillin  1.2 mu INJ.'),
(52, 'Benzhexol 2 mg.TAB.'),
(53, 'Benzyl benzoate 25% 60 ml'),
(54, 'Berodual (ipratropium0.25mg) Sol 1ml'),
(55, 'Berodual (ipratropium0.25mg) Sol 20ml/ขวด'),
(56, 'Berodual inhaler'),
(57, 'Betahistine 6 mg TAB'),
(58, 'Betamethasone + Salicylic  5gm'),
(59, 'Betamethasone cream  5gm'),
(60, 'Bisacodyl 5 mg.TAB.'),
(61, 'Bisoprolol 2.5 (Concor 2.5) TAB'),
(62, 'Bromhexine HCl 8 mg  TAB'),
(63, 'Budesonide inhaler 100 mcg/puff.-child'),
(64, 'Budesonide inhaler 200 mcg/puff.'),
(65, 'Benztropine 2 mg/2ml   COGENTIN'),
(66, 'Cafergot (Ergotamine 1 mg.+cafeine)'),
(67, 'Calamine lotion 60 ml.'),
(68, 'Captopril 25 mg TAB'),
(69, 'Calcium carbonate 600 mg.TAB.'),
(70, 'Carbamazepine 200 mg.TAB.'),
(71, 'Carminative mixture 180 ml.'),
(72, 'Carvedilol 6.25 mg'),
(73, 'Cefazolin INJ.  1 gm  INJ..'),
(74, 'Ceftazidime 1 gm INJ'),
(75, 'Ceftriaxone 1 g. INJ.  IV,IM'),
(76, 'Cephalexin 125 DS. 60 ml'),
(77, 'Cephalexin 250 mg. CAP'),
(78, 'Cetirizine 5mg/5ml 60 ml'),
(79, 'Cetirizine 10 mg  TAB'),
(80, 'Chloral hydrate 50 ??.'),
(81, 'Chloramphenicol  1 gm INJ.'),
(82, 'Chloramphenicol eye drop 0.5% 5 ml'),
(83, 'Chloramphenicol Eye Oint.'),
(84, 'Chlorazepate dipotassium 5mg cap'),
(85, 'Chlorhexidine 1%  Cream 200 gm.'),
(86, 'Chlorhexidine 4%  sol. 5000ml Scrub'),
(87, 'Chlorhexidine mouthwash 180 ml.'),
(88, 'Chloroquine phosphate 250 mg.TAB.'),
(89, 'Chlorpheniramine  10 mg/ml INJ..'),
(90, 'Chlorpheniramine  4 mg.  TAB'),
(91, 'Chlorpheniramine  syr 2mg/5 ml 60 ml'),
(92, 'Chlorpromazine HCL 100 mg/2ml INJ..'),
(93, 'Chlorpromazine HCL 50 mg TAB.'),
(94, 'Cinnarizine 25 mg  TAB'),
(95, 'Ciprofloxacin 250 mg'),
(96, 'Ciprofloxacin 200 mg/100 ml'),
(97, 'Ciprofloxacin 400 mg/200 ml'),
(98, 'Cilostazol 50 (PLETAAL)'),
(99, 'Clarithromycin 250 mg TAB'),
(100, 'Clindamycin 300 mg TAB'),
(101, 'Clindamycin 300 mg/2 ml INJ'),
(102, 'Clindamycin 600 mg/4 ml INJ'),
(103, 'Clobetasol propionate cream 5gm'),
(104, 'Clonazepam 0.5 mg'),
(105, 'Clopidogrel 75'),
(106, 'Clotrimazole cream 1% 5 gm'),
(107, 'Clotrimazole troat 10 mg.TAB.'),
(108, 'Clotrimazole vag.TAB.'),
(109, 'Cloxacillin 1 g. INJ.'),
(110, 'Cloxacillin 250 mg'),
(111, 'Cloxacillin dry syrup 60 ml'),
(112, 'Coal tar ointment  225 gm'),
(113, 'Coal tar ointment  30 gm'),
(114, 'Codeine PO4 10 mg TAB/CAP'),
(115, 'CO-DIOVAN (160/12.5 MG)'),
(116, 'Colchicine 0.6 mg.TAB.'),
(117, 'Collomack (con con)'),
(118, 'Colistin 150 mg'),
(119, 'Conjugated Estrogens   0.625 mg TAB'),
(120, 'Co-trimoxazole suspension 60 ml'),
(121, 'Co-trimoxazole TAB.'),
(122, 'Cyproheptadine 4 mg.TAB.'),
(123, 'D-5-1/2s 1000 ml'),
(124, 'D-5-1/2s 500 ml'),
(125, 'D-5-1/3s 500 ml'),
(126, 'D-5-s  1000 ml'),
(127, 'D-5-s/5  500 ml'),
(128, 'D-5-w 100 ml'),
(129, 'D-5-w 500 ml'),
(130, 'Dapzone 100mg TAB.'),
(131, 'Deferiprone 500 mg TAB'),
(132, 'Dexamethasone INJ. 4 mg/ml in 1 ml'),
(133, 'Dextromethophan HBR 15 mg. TAB  GPO'),
(134, 'Diazepam 10 mg/ml INJ.'),
(135, 'Diazepam 2 mg. TAB'),
(136, 'Diazepam 5 mg. TAB'),
(137, 'Diclofenac  25 mg TAB.'),
(138, 'Diclofenac gel 30gm'),
(139, 'Diclofenac INJ. 75 mg/3 ml'),
(140, 'Dicloxacillin 250 mg. Cap'),
(141, 'Dicloxacillin 62.5mg dry syr. 60ml'),
(142, 'Didanosine DDI 25'),
(143, 'Didanosine DDI 125'),
(144, 'Diethylcarbamazine Citrate 300'),
(145, 'Digoxin 0.25 mg.TAB.'),
(146, 'Digoxin 0.25 mg/ml in 2 ml'),
(147, 'Diltiazem HCl 120 mg TAB'),
(148, 'Diltiazem HCl  INJ..'),
(149, 'Dimenhydrinate 50 mg.TAB'),
(150, 'Dimenhydrinate 50mg/ml INJ.. amp'),
(151, 'Dipotassium clorazepate  5'),
(152, 'Disulfiram 500 mg TAB'),
(153, 'Ditapp (Topamine) 60 ml'),
(154, 'Ditapp (TOPAMINE) tab'),
(155, 'Dobutamine INJ..'),
(156, 'Domperidone 10 mg.TAB.'),
(157, 'Domperidone suspension 1 mg/ml 30 ml'),
(158, 'Dopamine HCL 250 mg in 10 ml INJ..'),
(159, 'Doproct  suppo.'),
(160, 'Doxazosin 2 mg'),
(161, 'Doxofylline 400 mg'),
(162, 'Doxycycline HCL 100 mg cap'),
(163, 'Duofilm 15 ml.'),
(164, 'Enalaapril 20 mg.TAB.'),
(165, 'Enalaapril 5 mg.TAB.'),
(166, 'Erfuzide(Nifuroxazide) 60 ml'),
(167, 'Enema 10 ml. Child'),
(168, 'Enema 133 ml.'),
(169, 'Enoxaparin 40mg -CLEXANE 40'),
(170, 'Enoxaparin 60mg -CLEXANE 60'),
(171, 'Ephedrine SO4 INJ..'),
(172, 'Erythropoietin alfa 4000 iu'),
(173, 'Erythromycin 250 mg. TAB.'),
(174, 'Erythromycin dry syrup 60 ml'),
(175, 'Ethambutol HCL 400 mg.'),
(176, 'Ethinylestradiol0.03+norgestrel0.15 TAB[R-DEN]'),
(177, 'Etoricoxib - Arcoxia 60 mg'),
(178, 'Eurofer-iron syrup 70 ml.'),
(179, 'Ferrous Fumarate Drop 15 ml.'),
(180, 'Ferrous Fumarate 200 mg TAB'),
(181, 'Felodipine 5 mg TAB -PLENDIL 5'),
(182, 'Fentanyl Citrate INJ..'),
(183, 'Fentanyl Trandermal Patch 25mcg/hr'),
(184, 'Fenofibrate 100 mg'),
(185, 'Fluconazole 200 mg. TAB.'),
(186, 'Flunarizine 5 mg.cap.'),
(187, 'Fluorometholone Eye Drop - Flu Oph'),
(188, 'Fluoxetine 20mg TAB.'),
(189, 'HARIFIN 5-Finasteride 5 mg'),
(190, 'Folic acid 5 mg.TAB.'),
(191, 'Formaldehyde  450 ml'),
(192, 'FOSAMAX -Alendronate 70'),
(193, 'Fuller\'s Earth'),
(194, 'Furosemide 40 mg TAB.'),
(195, 'Furosemide 500 mg TAB.'),
(196, 'Furosemide INJ. 10 mg/ml in 2 ml'),
(197, 'Furosemide INJ. 250 mg/ml in 25 ml'),
(198, 'GABAPENTIN 100 MG TAB'),
(199, 'Gemfibrozil 600 mg.TAB'),
(200, 'Gentamicin sulfate 20 mg. in 2 ml INJ.'),
(201, 'Gentamicin sulfate 80 mg. in 2 ml INJ.'),
(202, 'Gentian Violet 15 ml.'),
(203, 'Glipizide 5 mg.TAB.'),
(204, 'Glibenclamide 5 mg TAB  GPO'),
(205, 'Glucose 50%    50 ml. INJ..'),
(206, 'Glycerine pure 450gm'),
(207, 'GPO Vir-S30'),
(208, 'GPO Vir-Z 250'),
(209, 'Griseofulvin 500 mg.TAB.'),
(210, 'Guafenesine(Guaiacolate) 100 mg'),
(211, 'Guafenasin syrup 100 mg/5mL 60 mL'),
(212, 'Haloperidol 2 mg.TAB.  GPO'),
(213, 'Haloperidol 5 mg TAB  GPO'),
(214, 'Haloperidol INJ. 5 mg/ml'),
(215, 'HARNAL - Tamsulosin 0.4 mg'),
(216, 'Hepatitic B vaccine 20 mcg. INJ..'),
(217, 'Hista-Oph  (Anthazorine+tetrazolin eye drop 5 ml. '),
(218, 'Hydralazine HCl 20mg   INJ..'),
(219, 'Hydralazine HCl 25 mg TAB'),
(220, 'Hydrochlorothiazide 25 mg  TAB -  HCTZ'),
(221, 'Hydrochlorothiazide 50 mg  TAB -  HCTZ จะตัดออก'),
(222, 'Hydrocortisone  INJ..'),
(223, 'Hydrogen peroxide 450 ml'),
(224, 'Hydroxycine 10 mg.TAB.'),
(225, 'Hyoscine-n-butyl bromide 10 mg  TAB'),
(226, 'Hyoscine-n-butyl bromide 5 mg/5ml  30ml'),
(227, 'Hyoscine-n-butyl bromide INJ. 20 mg/ml'),
(228, 'Ibesartan (Aprovel) 150 mg'),
(229, 'Ibuprofen 100 mg/5ml   syrup'),
(230, 'Ibuprofen 200 mg TAB.'),
(231, 'Ibuprofen 400 mg.TAB.'),
(232, 'Imipramine 25 mg.TAB.'),
(233, 'Indinavir 400 mg'),
(234, 'Indomethacin 25 mg. cap.'),
(235, 'Insulin mixt 70:30U/ml in 1 Unit'),
(236, 'Insulin mixt 70:30U/ml in 10 ml'),
(237, 'Insulin N  Isophane 100 u/ml  in 1 Unit'),
(238, 'Insulin N  Isophane 100 u/mll in 10 ml vial'),
(239, 'Insulin PEN'),
(240, 'Insulin(RI) 100 U/ml in 10 ml'),
(241, 'Insulin(RI) 100 U/ml in 1Unit'),
(242, 'Iodine 0.15 mg TAB.'),
(243, 'Isonazid 100 mg TAB.'),
(244, 'ISMO-Isosorbide-5-nitrate 20 mg'),
(245, 'Isosorbide dinitrate 10 mg.TAB.'),
(246, 'Isosorbide dinitrate 5 mg TAB'),
(247, 'Itraconazole 100 mg. TAB.'),
(248, 'Ivermectin 6 mg TAB'),
(249, 'Kabiven 1000kcal'),
(250, 'Kalimate Powder'),
(251, 'Ketamine 50 mg/ml in 1-ml'),
(252, 'Ketoconazole 200 mg. TAB. 25*10\'s'),
(253, 'Lactulose syrup   1- ml'),
(254, 'Lactulose syrup 180 ml'),
(255, 'Lamivudine 50mg/5ml 60 ml'),
(256, 'Latanoprost - Xalatan 0.005 % eye drop 2.5ml'),
(257, 'Levonorgestrel 75 mg implant 2 implants'),
(258, 'Lidocaine  Viscous 20 mg/ml'),
(259, 'Lidocaine HCL 2% -1 ml'),
(260, 'Lidocaine HCl 1% + adrenaline  -1  ml'),
(261, 'Lidocaine HCl 2% + adrenaline  -1 ml'),
(262, 'Lincomycin 600 mg/ 2ml.in 2 ml. INJ.'),
(263, 'Loperamide 2 mg. CAP/TAB  GPO'),
(264, 'Lorazepam 1mg TAB.'),
(265, 'Losartan potassium 50 mg TAB'),
(266, 'M.Tussis (Brown mixture) 180 ml'),
(267, 'M.Tussis (Brown mixture) 60 ml'),
(268, 'Magnesium SO4  INJ.  10% in 10 ml.'),
(269, 'Magnesium SO4  INJ.  50% in 2 ml.'),
(270, 'MECOBALAMIN TAB,500 MCG'),
(271, 'Medroxyprogesterone INJ..'),
(272, 'Meropenem 1 gm'),
(273, 'Metformin 500 mg.TAB. GPO'),
(274, 'Methadone syrup'),
(275, 'Methimazole 5 mg TAB'),
(276, 'Methotretrate 2.5mg TAB.'),
(277, 'Methyldopa 125 mg TAB.'),
(278, 'Methyldopa 250 mg TAB.'),
(279, 'Methylergometrine maleate 0.2 mg/ml in 1 ml INJ.'),
(280, 'Metoclopramide 10 mg TAB'),
(281, 'Metoclopramide 10 mg/2ml. INJ..'),
(282, 'Metoprolol 100 mg TAB'),
(283, 'Metronidazole 400 mg.TAB.'),
(284, 'Metronidazole 50 mg/100 ml. INJ.'),
(285, 'Milk of magnesia (MOM) 180ml'),
(286, 'Misoprostol 200 mcg Tab'),
(287, 'Moduretic  TAB (Amiloride+hctz)'),
(288, 'Morphine sulfate 60 ml'),
(289, 'Morphine sulfate 60 ml'),
(290, 'Morphine sulfate 10 mg TAB.'),
(291, 'Morphine sulfate 30 mg TAB.'),
(292, 'Morphine sulfate 10 mg/ml INJ.'),
(293, 'Multivitamin  syrup 60 ml'),
(294, 'Multivitamin TAB.'),
(295, 'Muscol TAB  (Para+Orphenadrine)'),
(296, 'Mybacin Lozense 10\'s TAB'),
(297, 'N.S.S 0.9% 100 ml'),
(298, 'N.S.S 0.9% 500 ml'),
(299, 'N.S.S 0.9% 1000 ml'),
(300, 'N.S.S irrigate 0.9% 1000 ml'),
(301, 'N.S.S irrigate 0.9% 100 ml'),
(302, 'Naloxone INJ..'),
(303, 'Naproxen 250 mg  TAB'),
(304, 'Neostigmine  INJ..'),
(305, 'Neotica (Analgesic cream) 30gm'),
(306, 'Neutroplex 60 ml'),
(307, 'Nicardipine 10 mg/10ml INJ.'),
(308, 'Niclosamide 500 mg 4\'s'),
(309, 'Nicotinic Acid 50 mg.TAB'),
(310, 'Nifedepine 20 mg.TAB.Retard'),
(311, 'Nifedipine 10 mg.TAB.'),
(312, 'Nifedipine 5 mg.TAB.'),
(313, 'Nitroglycerin 50 mg-VASONIT'),
(314, 'Nitroglycerin 25 mg-VASONIT (เฉพาะจาก รพศ.)'),
(315, 'Norethylsterone 5mg TAB.'),
(316, 'Norepinephrine 4mg/4ml INJ'),
(317, 'Norfloxacin 400 mg.TAB.'),
(318, 'Nortriptyline 25 mg'),
(319, 'Nystatin Vag.Suppo.'),
(320, 'Obimin-AZ'),
(321, 'Ofloxacin 100 mg TAB. (ตัดออก กพ2556)'),
(322, 'Ofloxacin 200 mg TAB.'),
(323, 'Olive oil  ml.'),
(324, 'Olive oil 450 ml.'),
(325, 'Omeprazole 20mg TAB.'),
(326, 'Omeprazole 40 mg INJ.'),
(327, 'Oral rehydration salt(O.R.S.)'),
(328, 'Oral rehydration salt(O.R.S.) ped.'),
(329, 'Orphenadrine + paracetamol TAB.'),
(330, 'Oseltamivir 30 mg TAB'),
(331, 'Oseltamivir 45 mg TAB'),
(332, 'Oseltamivir 75 mg TAB'),
(333, 'Oxytocin  INJ..'),
(334, 'Pancuronium Br INJ..'),
(335, 'Paracetamol 300  mg/2ml INJ.'),
(336, 'Paracetamol 325 mg. TAB.'),
(337, 'Paracetamol 500 mg.TAB.'),
(338, 'Paracetamol suspension 120 mg/5 ml. 60 ml.'),
(339, 'PCEC 0.1 ml. (ID)'),
(340, 'PCEC vial'),
(341, 'Penicillin G 5 mu. INJ.'),
(342, 'Penicillin V 125 mg. DS. 60 ml.'),
(343, 'Penicillin V 125 mg. TAB  GPO'),
(344, 'Penicillin V 250 mg. TAB. GPO'),
(345, 'Pentoxiphyllin 400 (TRENTAL)'),
(346, 'Perphenazine  4 mg TAB'),
(347, 'Perindopril 5 mg (Coversyl)'),
(348, 'Pethidine 50 mg/ml INJ.'),
(349, 'Phenazopyridine 100mg TAB.'),
(350, 'Phenobarbital 60 mg.TAB.'),
(351, 'Phenobarbital Elixir 60 ml.'),
(352, 'Phenytoin sodium 100 mg.cap.'),
(353, 'Phenytoin sodium 50 mg/5ml INJ..'),
(354, 'Pilocarpine 2% Eye D.'),
(355, 'Pioglitazone 15 mg TAB'),
(356, 'Piroxicam 10mg cap.'),
(357, 'podophylline paint 25%'),
(358, 'podophylline paint 25%'),
(359, 'Polygeline(Haemaccel)'),
(360, 'Poly-Oph eye drop  5 ml'),
(361, 'Polytar shampoo 150 mL'),
(362, 'Polytar shampoo 60 ml'),
(363, 'Potassium chloride 500 mg  TAB'),
(364, 'Potassium chloride Elixir'),
(365, 'Potassium chloride INJ..20 mEq/10ml.'),
(366, 'Povidone iodine 7.5% scrub 500ml'),
(367, 'Povidone iodine Solution 10% 450 ml'),
(368, 'Povidone iodine solution 10%w/v 30 ml.'),
(369, 'Pralidoxime 1gm INJ..'),
(370, 'Praziquantel 600 mg TAB.'),
(371, 'Prazosin 1 mg.TAB.'),
(372, 'Prednisolone 1 % Eye Drops'),
(373, 'Prednisolone 5 mg.TAB.'),
(374, 'Premarin 0.625 mg. (Conj.Eestrogen)'),
(375, 'Primaquine 15 mg TAB'),
(376, 'Promethazine INJ..'),
(377, 'Propranolol 10 mg.TAB.'),
(378, 'Propranolol 40 mg.TAB.'),
(379, 'Propofol   200mg/200ml  INJ..'),
(380, 'Propyltiouracil 50 mg.TAB.'),
(381, 'Pseudoephedrine HCL 60 mg.TAB'),
(382, 'Pyrazinamide 500 mg. TAB.'),
(383, 'Pyridostigmine br 60 mg TAB.'),
(384, 'Pyrimethamine 25 mg.TAB'),
(385, 'Quinine 300 mg TAB'),
(386, 'Quinine 600 mg/2ml  INJ..'),
(387, 'Ramipril 5 mg TAB'),
(388, 'Ranitidine 150 mg.TAB'),
(389, 'Ranitidine 50 mg/2ml-INJ..'),
(390, 'Rifampicin 300 mg.'),
(391, 'Rifampicin 450 mg.'),
(392, 'Ringer acetate 1000ml'),
(393, 'Risperidone 1 mg'),
(394, 'Risperidone 2 mg'),
(395, 'Ritonavir 100 mg'),
(396, 'Roxithromycin 150mg cap.'),
(397, 'Rubbing alcohol 70%  450 ml'),
(398, 'Rubbing alcohol 70% 30 ml'),
(399, 'Salbutamol  Solution'),
(400, 'Salbutamol  Solution- 1 ml.'),
(401, 'Salbutamol 2mg/5ml syrup'),
(402, 'Salbutamol inhaler 200dose'),
(403, 'Salbutamol sulfate 2 mg TAB.'),
(404, 'Scill and ammonia mixture 180 ml'),
(405, 'Senokot TAB'),
(406, 'Seratio-peptidase 5 mg.TAB.'),
(407, 'SERETIDE Accuhaler'),
(408, 'Seroflo 125'),
(409, 'Serum งูกะปะ'),
(410, 'Serum งูเขียวหางไหม้'),
(411, 'Serum งูแมวเซา'),
(412, 'Serum งูสามเหลี่ยม'),
(413, 'Serum งูเห่า'),
(414, 'Sertraline 50 mg'),
(415, 'Silversulfadiazine cream 25gm'),
(416, 'Silymarin 70 mg TAB'),
(417, 'Simethicone 40mg/0.6ml DROP'),
(418, 'Simethicone 80mg TAB.'),
(419, 'Simvastatin 20 mg.TAB.'),
(420, 'Sinamet (Levodopa 100mg+Carbidopa25mg TAB.)'),
(421, 'Sodium bicarbonate (sodamint) 300 mg TAB.'),
(422, 'Sodium bicarbonate EAR D.'),
(423, 'Sodium bicarbonate INJ. 7.5% in 50 ml'),
(424, 'Sodium bicarbonate mixture 60 ml'),
(425, 'Sodium Chloride 3% 500ml.'),
(426, 'Sodium vaproate 400mg /4ml inj.'),
(427, 'Sodium vaproate 500mg TAB.'),
(428, 'Special mouth wash  180 ml.'),
(429, 'Spinolactone 25 mg.TAB.'),
(430, 'Streptomycin sulfate 1 g. INJ.'),
(431, 'Succinyl (Suxamethonium) INJ..'),
(432, 'Sulfadiazine 500mg TAB.'),
(433, 'Sulfasalazine 500 mg  TAB'),
(434, 'Sulprostone 500mcg (Nalador)'),
(435, 'Tar Shampoo 240 ml.'),
(436, 'Tear,Artificial  น้ำตาเทียม'),
(437, 'Terbutaline sulfate INJ. 0.5 mg/ml in 1 ml'),
(438, 'Teramycin (Oxytetracycline)  eye oint.'),
(439, 'Tetanus antitoxin (human)'),
(440, 'Tetanus antitoxin 1500 U INJ.'),
(441, 'Tetanus antitoxin 1500 U INJ.- GPO'),
(442, 'Tetanus toxoid 0.5 ml (Single)'),
(443, 'Tetracaine Eye Drops'),
(444, 'Theophilline 200 mg.TAB.'),
(445, 'Thiopentone Na 1 gm.  INJ..'),
(446, 'Thyroxine 0.1 mg.TAB.(L)'),
(447, 'Timolol eye drop (Glauco Oph)'),
(448, 'Tolperisone 50 mg TAB.'),
(449, 'Tramadol 100mg INJ..'),
(450, 'Tramadol 50 mg.cap.'),
(451, 'Triamcinolone acetonide cream 0.02% 5 gm'),
(452, 'Triamcinolone acetonide Lotion 30 ml.'),
(453, 'Triamcinolone acetonide INJ. 1ml'),
(454, 'Triamcinolone acetonide oral paste 0.1% 1 gm'),
(455, 'Triamcinolone acetonide 55mcg/Dose 120 Dose'),
(456, 'TRIFERDINE 150'),
(457, 'Unison enema 10 ml'),
(458, 'Unison enema 100 ml'),
(459, 'Urea cream 225 gm'),
(460, 'Urea cream 35 gm'),
(461, 'Vasseline 10gm ( White petrolatum)'),
(462, 'Vasseline 450gm  ( White petrolatum)'),
(463, 'Verapamil 40 mg.TAB.'),
(464, 'Verapamil 240 mg.TAB.'),
(465, 'Vitamin  A  CAP 25000 u'),
(466, 'Vitamin B 1-6-12 TAB.'),
(467, 'Vitamin B complex INJ.'),
(468, 'Vitamin B complex TAB.'),
(469, 'Vitamin b1 100mg INJ..'),
(470, 'Vitamin B1(Thiamine)100 mg'),
(471, 'Vitamin B6 10 mg.TAB.'),
(472, 'Vitamin C  100mg TAB.'),
(473, 'Vitamin K1 10mg /1 ml INJ..(Phytomenadione)'),
(474, 'Vitamin K1 1mg /0.5 ml INJ..(Phytomenadione)'),
(475, 'Warfarin 2 mg TAB'),
(476, 'Warfarin 3 mg TAB'),
(477, 'Warfarin 5 mg TAB'),
(478, 'Water for INJ.ection 10 ml'),
(479, 'Water for INJ.ection 100 ml'),
(480, 'Water for Iriigated 1000 ml'),
(481, 'Zinc Sulfate 15 mg TAB'),
(482, 'สหัสธารา เม็ด'),
(483, 'ขิง ยาชง'),
(484, 'จันทลีลา เม็ด'),
(485, 'รางจืด ยาชง '),
(486, 'รางจืด ยาชง '),
(487, 'ขมิ้นชัน เม็ด'),
(488, 'ชาหญ้าดอกขาว'),
(489, 'ชาหญ้าหนวดแมว'),
(490, 'เพชรสังฆาต'),
(491, 'ฟ้าทะลายโจรแคปซูล'),
(492, 'ยาคุมกำเนิด R-DEN'),
(493, 'ยาอมมะแว้ง'),
(494, 'Efavirenz (EFV)  200 mg'),
(495, 'Efavirenz (EFV)  600 mg'),
(496, 'Lamivudine (3TC)  150 mg'),
(497, 'Lamivudine (3TC)  300 mg'),
(498, 'Lopinavir + Ritonavir  200+50'),
(499, 'Nelfinavir mesilate (NFV)'),
(500, 'Nevirapine mesilate (NVP) 200 mg'),
(501, 'Nevirapine mesilate (NVP) Susp. 50mg/5ml- 60ml'),
(502, 'Saquinavir (SQV)'),
(503, 'Stavudine (d4T) STAVIR 15 mg'),
(504, 'Stavudine (d4T) STAVIR 20 mg'),
(505, 'Stavudine (d4T) STAVIR 30 mg'),
(506, 'Zidovudine (AZT)  100 mg'),
(507, 'Zidovudine (AZT)  300 mg'),
(508, 'Zidovudine + Lamivudine (AZT+3TC) 300+150\r\n'),
(509, 'RIMSTAR 4-FDC (R150+I75+P400+E275)\r\n'),
(510, 'RIMACTACID 150/75\r\n'),
(511, 'Ethambutol 500 mg'),
(512, 'GPO Vir-S30'),
(513, 'GPO Vir-Z 250'),
(514, 'Didanosine DDI 25'),
(515, 'Didanosine DDI 125'),
(516, 'Efavienz 50 mg'),
(517, 'Indinavir 400 mg'),
(518, 'Ritonavir 100 mg'),
(519, 'Lamivudine 300 mg'),
(520, 'Vaccine Influenza'),
(521, 'Lastavir(Lamivudine150+Stavudine 30 mg)'),
(522, 'Vaccine Influenza 0.5ml/dose'),
(523, 'Doxazosin 4 mg TAB'),
(524, 'Clonazepam 0.5 mg TAB'),
(525, 'Rosuvastatin 10 mg TAB'),
(526, 'Erythropoitin 4000 u.'),
(527, 'Sodium Valproate 500 mg'),
(528, 'BCG'),
(529, 'HB'),
(530, 'DTP-HB'),
(531, 'OPV'),
(532, 'M MR'),
(533, 'DTP'),
(534, 'JE'),
(535, 'dT'),
(536, 'MMR'),
(537, 'Kaletra'),
(538, 'Tranexamic acid  INJ..'),
(539, 'Trihexyphenedryl 2 mg'),
(540, 'Tenofovir 300 mg'),
(547, 'ยาแก้ไอมะขามป้อม'),
(548, 'ยาแก้ไอมะขามป้อม'),
(549, 'allo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_editable`
--

CREATE TABLE `tbl_editable` (
  `id` int(1) NOT NULL,
  `editable` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_editable`
--

INSERT INTO `tbl_editable` (`id`, `editable`) VALUES
(1, 'แก้ไขได้'),
(2, 'แก้ไขไม่ได้');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_errorname`
--

CREATE TABLE `tbl_errorname` (
  `id` int(11) NOT NULL,
  `errorcode` varchar(6) NOT NULL,
  `errortype` varchar(50) NOT NULL,
  `errorname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_errorname`
--

INSERT INTO `tbl_errorname` (`id`, `errorcode`, `errortype`, `errorname`) VALUES
(1, 'ADMIN', 'Administration error', 'ยาเตรียมผสมที่ไม่ถูกต้อง/ไม่เข้ากัน/ผิดเทคนิค\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `action` int(1) NOT NULL,
  `time_in` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timeout` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='เก็บเวลาเข้าใช้งาน';

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `name`, `action`, `time_in`, `timeout`) VALUES
(1, 'ken', 'นายอิ่นแก้ว  สิงห์แก้ว', 0, '2023-12-20 08:29:21', '00:00:00'),
(2, 'ken', 'นายอิ่นแก้ว  สิงห์แก้ว', 0, '2023-12-20 08:31:06', '00:00:00'),
(3, 'dscc01', '', 0, '2024-01-24 07:55:29', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mederrordata`
--

CREATE TABLE `tbl_mederrordata` (
  `id` int(11) NOT NULL,
  `pttype` varchar(25) DEFAULT NULL COMMENT 'ประเภทผู้ป่วย',
  `department_me` varchar(50) DEFAULT NULL COMMENT 'หน่วยงานที่เกิด',
  `person_me` varchar(50) DEFAULT NULL COMMENT 'ผู้เกิด error',
  `date_me` date DEFAULT NULL COMMENT 'วันที่เกิด',
  `time_me` varchar(30) DEFAULT NULL COMMENT 'ช่วงเวลาที่เกิด',
  `workday` varchar(30) NOT NULL,
  `workperiod` varchar(30) DEFAULT NULL COMMENT 'เวร',
  `lasa` tinyint(1) DEFAULT NULL COMMENT 'ยา lasa',
  `drug_error` tinyint(1) NOT NULL,
  `drug1` varchar(100) DEFAULT NULL COMMENT 'ยาตัวที่ถูก',
  `drug2` varchar(100) DEFAULT NULL COMMENT 'ยาตัวที่ผิด',
  `mem` text DEFAULT NULL COMMENT 'ปัญหา',
  `reportdep` varchar(50) DEFAULT NULL COMMENT 'หน่วยงานที่รายงาน',
  `reporter` varchar(50) DEFAULT NULL COMMENT 'ผู้รายงาน',
  `date_report` date DEFAULT NULL COMMENT 'วันที่รายงาน',
  `edit` varchar(30) NOT NULL COMMENT 'การแก้ไข ได้ ไม่ได้',
  `edit_method` text DEFAULT NULL COMMENT 'วิธีแก้ไข',
  `cause1` varchar(25) DEFAULT NULL COMMENT 'ชนิดปัญหา1',
  `causedetail1` varchar(50) DEFAULT NULL COMMENT 'สาเหตุปัญหา 1',
  `cause2` varchar(50) DEFAULT NULL COMMENT 'ชนิดปัญหา2',
  `causedetail2` varchar(50) DEFAULT NULL COMMENT 'สาเหตุปัญหา2',
  `risklevel` varchar(1) DEFAULT NULL COMMENT 'ระดับความเสี่ยง',
  `metype` varchar(50) DEFAULT NULL COMMENT 'ชนิด me',
  `medetail` varchar(100) NOT NULL COMMENT 'ประเภท me',
  `riskblock` varchar(1) NOT NULL COMMENT 'ความเสี่ยงที่ป้องกันได้',
  `recorder` varchar(50) NOT NULL COMMENT 'ผู้บันทึก',
  `datesave` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_mederrordata`
--

INSERT INTO `tbl_mederrordata` (`id`, `pttype`, `department_me`, `person_me`, `date_me`, `time_me`, `workday`, `workperiod`, `lasa`, `drug_error`, `drug1`, `drug2`, `mem`, `reportdep`, `reporter`, `date_report`, `edit`, `edit_method`, `cause1`, `causedetail1`, `cause2`, `causedetail2`, `risklevel`, `metype`, `medetail`, `riskblock`, `recorder`, `datesave`) VALUES
(1, 'IPD', 'งานพยาบาลผู้ป่วยในหญิง', 'นางสาวรัตติกาล  วงค์ชัย', '2023-12-15', 'เร่งด่วน', 'วันทำงานปกติ', 'เวรเช้า', 1, 0, 'Acetylcystine 100 mg Powder', '', ' 2222', 'กลุ่มงานเภสัชกรรม', 'นายอานันท์   สิงห์สถิตย์', '2023-12-18', 'แก้ไขได้', ' 5555', 'ปัญหาจากการสื่อสาร', 'ไม่มีการส่งต่อข้อมูลที่ดี', 'ปัญหาจากยา', 'ชื่อคล้ายกัน', NULL, NULL, '', '', '', '2023-12-18 03:03:53'),
(2, '', '', '', '0000-00-00', '', '', '', 0, 0, '', '', ' ', '', '', '0000-00-00', 'แก้ไขได้', ' ', '', '', '', '', NULL, NULL, '', '', '', '2023-12-18 03:11:03'),
(3, '', '', '', '0000-00-00', '', '', '', 0, 0, '', '', ' ', '', '', '0000-00-00', 'แก้ไขได้', ' ', '', '', '', '', NULL, NULL, '', '', '', '2023-12-18 03:11:36'),
(4, '', '', '', '0000-00-00', '', '', '', 0, 0, '', '', ' ', '', '', '0000-00-00', '', ' ', '', '', '', '', 'B', NULL, '', '', '', '2023-12-18 03:21:12'),
(5, '', '', '', '0000-00-00', '', '', '', 0, 0, '', '', ' ', '', '', '0000-00-00', '', ' ', '', '', '', '', 'A', 'Monitering error', '', '', '', '2023-12-18 03:31:17'),
(6, '', '', '', '0000-00-00', '', '', '', 0, 0, '', '', ' ', '', '', '0000-00-00', '', ' ', '', '', '', '', 'B', 'Dispensing error', 'จ่ายยาผิดชนิด', '', '', '2023-12-18 03:34:15'),
(7, '', '', '', '0000-00-00', '', '', '', 0, 0, '', '', ' ', '', '', '0000-00-00', '', ' ', '', '', '', '', 'B', 'Dispensing error', 'จ่ายยาผิดชนิด', 'C', '', '2023-12-18 04:22:25'),
(8, '', '', '', '0000-00-00', '', '', '', 0, 0, '', '', ' ', '', '', '0000-00-00', '', ' ', '', '', '', '', 'B', 'Dispensing error', 'จ่ายยาผิดชนิด', 'D', '', '2023-12-18 04:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL,
  `membername` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `level` int(1) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `membername`, `department`, `level`, `datesave`) VALUES
(2, 'dscc01', '1302', 'นางนราพร  เฉลยไตร', 'กลุ่มงานควบคุมและป้องกันโรค', 2, '0000-00-00 00:00:00'),
(3, 'dscc02', '1303', 'นายประสงค์  หมื่นจันทร์', 'กลุ่มงานควบคุมและป้องกันโรค', 2, '0000-00-00 00:00:00'),
(4, 'dscc03', '1304', 'นางสาวน้ำทิพย์  ชัยยะ', 'กลุ่มงานควบคุมและป้องกันโรค', 2, '0000-00-00 00:00:00'),
(5, 'dscc04', '1305', 'นางสาวพรณิกา  สุวรรณทา', 'กลุ่มงานควบคุมและป้องกันโรค', 2, '0000-00-00 00:00:00'),
(6, 'dscc05', '1306', 'นางยุพา  อรัญชัย', 'กลุ่มงานควบคุมและป้องกันโรค', 2, '0000-00-00 00:00:00'),
(7, 'dscc06', '1307', 'นายปราโมทย์  ขำอินทร์', 'กลุ่มงานควบคุมและป้องกันโรค', 2, '0000-00-00 00:00:00'),
(8, 'dscc07', '1308', 'นายทศพร  จินะการ', 'กลุ่มงานควบคุมและป้องกันโรค', 2, '0000-00-00 00:00:00'),
(9, 'dscc08', '1309', 'นางสาวพนัส  หลานวงษ์', 'กลุ่มงานควบคุมและป้องกันโรค', 2, '0000-00-00 00:00:00'),
(10, 'dent01', '803', 'นางสาวพัชรินทร์  วงศ์ไชยา', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(11, 'dent02', '804', 'นาย อภิชาติ  เตชะอัตตกุล', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(12, 'dent03', '806', 'นางสาวบุษบา  ทะนุก้ำ', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(13, 'dent04', '807', 'นางสาวธัญวรัตม์  สารทอง', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(14, 'dent05', '808', 'นางชไมพร  สุขกาย', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(15, 'dent06', '809', 'นายจรัสพงษ์  รักประชา', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(16, 'dent07', '810', 'นางรัชนี  ราชเสนา', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(17, 'dent08', '811', 'นางสาวศิริลักษณา  ศิริเทพ', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(18, 'dent09', '812', 'นางสาววัชรีพร  ลือเลิศ', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(19, 'dent10', '813', 'นางสาววิภา  ตังแกมูล', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(20, 'dent11', '814', 'นางสาวพัชรินทร์  มูลทอง', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(21, 'dent12', '815', 'นางสาวศศิวิมล  กาวิละ', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(22, 'dent13', '816', 'นายธนธรณ์  ตาน้อย', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(23, 'dent14', '817', 'นางสาวกันยา  บรรพตพัฒนา', 'กลุ่มงานทันตกรรม', 2, '0000-00-00 00:00:00'),
(24, 'medt01', '1002', 'นายยุทธพล  จันดา', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(25, 'medt02', '1003', 'นางสาวจารุวรรณ  สุธรรมเม็ง', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(26, 'medt03', '1004', 'นางสาวพรสมัย  วงค์ชัย', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(27, 'medt04', '1005', 'นางสาวเกศินี  หมื่นอินต๊ะ', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(28, 'medt05', '1006', 'นางสาวเพ็ญนภา  ปินตาเป็ก', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(29, 'medt06', '1007', 'นายอัชนัย  เงินแท้', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(30, 'medt07', '1008', 'นางสาวพรทิพย์  กันทะวงศ์', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(31, 'medt08', '1009', 'นายบุญดี  บุดดี', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(32, 'medt09', '1010', 'นายภาณุพงษ์  ปันทะนะ', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(33, 'medt10', '1011', 'นายปุญญพัฒน์  มีอุดร', 'กลุ่มงานเทคนิคการแพทย์', 2, '0000-00-00 00:00:00'),
(34, 'pcuu01', '1202', 'นางวารุณี  อุดมพล', 'กลุ่มงานปฐมภูมิ (PCU)', 2, '0000-00-00 00:00:00'),
(35, 'pcuu02', '1203', 'นางขนิษฐา  ปองดอง', 'กลุ่มงานปฐมภูมิ (PCU)', 2, '0000-00-00 00:00:00'),
(36, 'pcuu03', '1204', 'นางฐิตาพร  สุขเกษม', 'กลุ่มงานปฐมภูมิ (PCU)', 2, '0000-00-00 00:00:00'),
(37, 'pcuu04', '1205', 'นายสถาพร มังคลาด', 'กลุ่มงานปฐมภูมิ (PCU)', 2, '0000-00-00 00:00:00'),
(38, 'pcuu05', '1206', 'นางสาวกัณจารี   คำสะอาด', 'กลุ่มงานปฐมภูมิ (PCU)', 2, '0000-00-00 00:00:00'),
(39, 'pcuu06', '1207', 'นายพัชรพล  แก้วแก่น', 'กลุ่มงานปฐมภูมิ (PCU)', 2, '0000-00-00 00:00:00'),
(40, 'tmed01', '1102', 'นางสาวอมรรัตน์  วรรณชัย', 'กลุ่มงานแพทย์แผนไทย', 2, '0000-00-00 00:00:00'),
(41, 'tmed02', '1103', 'นางสาวภัทรศยา  วิชา', 'กลุ่มงานแพทย์แผนไทย', 2, '0000-00-00 00:00:00'),
(42, 'tmed03', '1104', 'นางสาวนารีรัตน์ วงศ์ชัย', 'กลุ่มงานแพทย์แผนไทย', 2, '0000-00-00 00:00:00'),
(43, 'tmed04', '1105', 'นางสาวณัฐพร  พิมจันทร์', 'กลุ่มงานแพทย์แผนไทย', 2, '0000-00-00 00:00:00'),
(44, 'pharm01', 'nek123', 'นายอิ่นแก้ว  สิงห์แก้ว', 'กลุ่มงานเภสัชกรรม', 1, '0000-00-00 00:00:00'),
(45, 'pharm02', '2345', 'นายธวัชชาติ  เก้าเอี้ยน', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(46, 'pharm03', '3456', 'นางธิดารัตน์  วุฒิอดิเรก', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(47, 'pharm04', 'nook', 'นางทศพร  เตชะอัตตกุล', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(48, 'pharm05', '454343', 'นางสาวกฤติกา  สุภารินทร์', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(49, 'pharm06', '8407', 'นายอนุภาพ  ภูหลัก', 'กลุ่มงานเภสัชกรรม', 1, '0000-00-00 00:00:00'),
(50, 'pharm07', 'ploy', 'นางสาวอาภากร  สุภาศรี', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(51, 'pharm08', '1123', 'นายณพรรณอร  กิตติกรณ์รัตน์', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(52, 'pharm09', '404', 'นางสาวเมธาวี  เจริญทรัพย์', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(53, 'pharm10', '2508', 'นางสาวเมธาพร  หินทราย', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(54, 'pharm11', 'atp05', 'นางสาวพัชรพร  จันต๊ะขัติ', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(55, 'pharm12', 'kid45', 'นายสมคิด  สุวรรณทา', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(56, 'pharm13', '1992', 'นางสาวสุภัคพร     นวลใส', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(57, 'pharm14', '1478', 'นางสาวกฤตฐิรท    บุญต่อม', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(58, 'pharm15', 'naris01', 'นางสาวนริศรา  ศิริเทพ', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(59, 'pharm16', 'tine01', 'นางสาวลัดดาวรรณ  เขื่อนศิริ', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(60, 'pharm17', 'capt01', 'นายธนาวัฒน์  คัชมาตย์', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(61, 'pharm18', '294090', 'นางสาวนิวาริน  ศรีมา', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(62, 'pharm19', '9519025', 'นายปรัชญา  นพวงศ์', 'กลุ่มงานเภสัชกรรม', 1, '0000-00-00 00:00:00'),
(63, 'pharm20', '311044', 'นางสาวนพมาศ  ยอดวงค์', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(64, 'pharm21', '1234', 'นายอานันท์   สิงห์สถิตย์', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(65, 'pharm22', 'toey01', 'นางสาวธันยพร  เจริญผล', 'กลุ่มงานเภสัชกรรม', 2, '0000-00-00 00:00:00'),
(66, 'radi01', '1602', 'นายธรรมรัตน์  ยานะธรรม', 'กลุ่มงานรังษีวิทยา', 2, '0000-00-00 00:00:00'),
(67, 'radi02', '1603', 'นายทรงกลด  ธนอัศวนนท์', 'กลุ่มงานรังษีวิทยา', 2, '0000-00-00 00:00:00'),
(68, 'dadi03', '1604', 'นายณรงค์ฤทธิ์  อินต๊ะ', 'กลุ่มงานรังษีวิทยา', 2, '0000-00-00 00:00:00'),
(69, 'phys01', '1702', 'นายชุติวัต  รุมพ์ฟ', 'กลุ่มงานเวชกรรมฟื้นฟู', 2, '0000-00-00 00:00:00'),
(70, 'phys02', '1703', 'นายศิวารุธ  มาชม', 'กลุ่มงานเวชกรรมฟื้นฟู', 2, '0000-00-00 00:00:00'),
(71, 'phys03', '1704', 'นางสาววนาพร  คำพิละ', 'กลุ่มงานเวชกรรมฟื้นฟู', 2, '0000-00-00 00:00:00'),
(72, 'phys04', '1705', 'นางสาววรภร  พงศ์ทองคำ', 'กลุ่มงานเวชกรรมฟื้นฟู', 2, '0000-00-00 00:00:00'),
(73, 'phys05', '1706', 'นายนำพล  ชัยวิก', 'กลุ่มงานเวชกรรมฟื้นฟู', 2, '0000-00-00 00:00:00'),
(74, 'phys06', '1707', 'นายเอกภพ  แก้วก๋า', 'กลุ่มงานเวชกรรมฟื้นฟู', 2, '0000-00-00 00:00:00'),
(75, 'phys07', '1708', 'นายโกเมศ  โรงทา', 'กลุ่มงานเวชกรรมฟื้นฟู', 2, '0000-00-00 00:00:00'),
(76, 'phys08', '1709', 'นางสาวยอดขวัญ  แซ่อึ๊ง', 'กลุ่มงานเวชกรรมฟื้นฟู', 2, '0000-00-00 00:00:00'),
(77, 'nlrr01', '602', 'นางสุรารักษ์  เนียมปุก', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(78, 'nlrr02', '603', 'นางสาวเพ็ญจันทร์  ชัยชนะ', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(79, 'nlrr03', '604', 'นางรัตติกาล  รัตนประยูร', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(80, 'nlrr04', '605', 'นางสาวจุฑารัตน์  สมฤทธิ์', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(81, 'nlrr05', '606', 'นางสาววราภรณ์  วิลังคะ', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(82, 'nlrr06', '607', 'นางสาวขวัญฤดี  พูลสมบัติ', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(83, 'nlrr07', '608', 'นางสาวศรัญญา  อานุ', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(84, 'nlrr08', '609', 'นางพิมพ์พรรณ  สำนวนเย็น', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(85, 'nlrr09', '610', 'นางสุภาพร  มรคานันท์', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(86, 'nlrr10', '611', 'นางแววดาว  สุวรรณทา', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(87, 'nlrr11', '612', 'นางวันทนา  จันทะพรม', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(88, 'nlrr12', '613', 'นางสาวธัญลักษณ์  ภิญญา', 'งานพยาบาลผู้คลอด', 2, '0000-00-00 00:00:00'),
(89, 'nopd01', '202', 'นางอมรรัตน์  ปวงมะณี', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(90, 'nopd02', '203', 'นางจิตรทิวา  เทพวงศ์', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(91, 'nopd03', '204', 'นางทาริกา  อำมาตย์มณี', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(92, 'nopd04', '205', 'นางนันทนัช  มาดาวิศิษฎ์', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(93, 'nopd05', '206', 'นางสาวบัวลอย  ภูหลัก', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(94, 'nopd06', '207', 'นางสาวปฐวี  สุขกาย', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(95, 'nopd07', '208', 'นางนิภา  อนุลม', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(96, 'nopd08', '209', 'นางวีรวรรณ  เทพบินการ', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(97, 'nopd09', '210', 'นางสาวรพีพร  โนจิตร', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(98, 'nopd10', '211', 'นางสาวมะลิวัลย์  ก๋าแก้ว', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(99, 'nopd11', '212', 'นางสาวนงนุช  พรมเมือง', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(100, 'nopd12', '213', 'นางสาวอุษณีย์  ประเสริฐ', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(101, 'nopd13', '214', 'นางสาวอัญชณา  คำสม', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(102, 'nopd14', '215', 'นางสาวพรทิพย์  สมรักอมร', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(103, 'nopd15', '216', 'นางรจนา  ทาเหล้ก', 'งานพยาบาลผู้ป่วยนอก', 2, '0000-00-00 00:00:00'),
(104, 'nwdm01', '302', 'นายประสัน  หมั่นการ', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(105, 'nwdm02', '303', 'นางสง่าศรี  เนาวฤทธิ์', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(106, 'nwdm03', '304', 'นางธนัชญา  ศาสตราคม', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(107, 'nwdm04', '305', 'นางวารุณี  โนวิชัย', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(108, 'nwdm05', '306', 'นางนิตยา  แอ่นปัญญา', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(109, 'nwdm06', '307', 'นางสาวบัณฑิตา  วงศ์งาม', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(110, 'nwdm07', '308', 'นางสาวจันทกานต์  พรมภิภักดิ์', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(111, 'nwdm08', '309', 'นางสาวสุภาภรณ์  เขื่อนแก้ว', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(112, 'nwdm09', '310', 'นางสาวศุภาพิชญ์  ศรีธินนท์', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(113, 'nwdm10', '311', 'นางสาวกุลณัฐ  ไชยสี', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(114, 'nwdm11', '312', 'นางสาววรัชยา  ทัศนัยนา', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(115, 'nwdm12', '313', 'นายธนวัฒน์  ปัญญาไว', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(116, 'nwdm13', '314', 'นางสาวเตือนใจ  กันทา', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(117, 'nwdm14', '315', 'นายหัสนัย  ทุ่งเก้า', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(118, 'nwdm15', '316', 'นางสาวสิรีธร  ทามา', 'งานพยาบาลผู้ป่วยในชาย', 2, '0000-00-00 00:00:00'),
(119, 'nwdf01', '402', 'นางจินตนา  แสงเพชร์', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(120, 'nwdf02', '403', 'นางไมตรี  หมื่นจันทร์', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(121, 'nwdf03', '404', 'นางขนิษฐา  แสงเพชร์', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(122, 'nwdf04', '405', 'นางศุภกานต์  ยาวิเริง', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(123, 'nwdf05', '406', 'นางสาวสุภาภรณ์  สารกลม', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(124, 'nwdf06', '407', 'นางสาวรัตติกาล  วงค์ชัย', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(125, 'nwdf07', '408', 'นางสาวนภัสวรรณ  ยามเลย', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(126, 'nwdf08', '409', 'นางสาวเกตุศิรินทร์  อินต๊ะวงศ์', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(127, 'nwdf09', '410', 'นางสาวอภิณีย์  วงค์ชัย', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(128, 'nwdf10', '411', 'นางสาวสุดารัตน์  คงฝ้าย', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(129, 'nwdf11', '412', 'นางสาวสรัญชนา  บัวเสี้ยว', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(130, 'nwdf12', '413', 'นางสาววัลนิภา  ชัยวงค์', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(131, 'nwdf13', '414', 'นางสาวภาวิณี  มูลหล้า', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(132, 'nwdf14', '415', 'นางสาวกัญญารัตน์  นาราษฏร์', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(133, 'nwdf15', '416', 'นางสาววรรณารี  ไชยสิทธิ์', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(134, 'nwdf16', '417', 'นางสาวณัฐวดี  ศรีแก้ว', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(135, 'nwdf17', '418', 'นางสาวอารียา  กิลัย', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(136, 'nwdf18', '419', 'นางสาวปนัดดา หาทรัพย์', 'งานพยาบาลผู้ป่วยในหญิง', 2, '0000-00-00 00:00:00'),
(137, 'norr01', '702', 'นางสาวภัคพร  หน่อใส', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(138, 'norr02', '703', 'นางสาวทัศนีย์  กำเนิด', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(139, 'norr03', '704', 'นางเยาวเรศ  สถานเดิม', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(140, 'norr04', '705', 'นายยุทธการ  หาญกา', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(141, 'norr05', '706', 'นางสุชญา  เพชรพรรณ', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(142, 'norr06', '707', 'นางสาวภัทรวดี  ธุวะคำ', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(143, 'norr07', '708', 'นางสาวนาญิกา  จำปาคำ', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(144, 'norr08', '709', 'นางสาวรัตน์ชดาพร  แสงงาม', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(145, 'norr09', '710', 'นางสาวภัณฑิรา  บุตรดี', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(146, 'norr10', '711', 'นางสาวทิพย์สุดา  ศรีสวัสดิ์', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(147, 'norr11', '712', 'นายณัฐวุฒิ  มีอาหาร', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(148, 'norr12', '713', 'นางสาวภัทรา  ทวิชัย', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(149, 'norr13', '714', 'นางสาวพรภิมล  ทะพรม', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(150, 'norr15', '716', 'นางสาวสินีภัค  สมทะนะ', 'งานพยาบาลผู้ป่วยผ่าตัดและวิสัญญี', 2, '0000-00-00 00:00:00'),
(151, 'nerr01', '502', 'นางมยุรี  พิทักษ์ปรีดากุล', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(152, 'nerr02', '503', 'นายฤทธิรงค์  บุญตันตา', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(153, 'nerr03', '504', 'นางสาวดวงสมร  ธิชาญ', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(154, 'nerr04', '505', 'นางสาววธูสิริ  ตาซิว', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(155, 'nerr05', '506', 'นางสาวฐิติยา  ยอดออน', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(156, 'nerr06', '507', 'นางสาวนันทิชา  ไชยยะ', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(157, 'nerr07', '508', 'นางสาวมณีกาญจน์  ไกลถิ่น', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(158, 'nerr08', '509', 'นางสาวบุษบา  เดชะ', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(159, 'nerr09', '510', 'นางสาวศศิธร  จินะราช', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(160, 'nerr10', '511', 'นางสาวนันทนา  ใจผ่อง', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(161, 'nerr11', '512', 'นางสาวปลายฝน  หลวงมณี', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(162, 'nerr12', '513', 'นางสาวชมเพยทิพย์  โรงทา', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(163, 'nerr13', '514', 'นายสุรทิน   จินะราช', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(164, 'nerr14', '515', 'นางสาวจุฑาภรณ์  วิละทุก', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(165, 'nerr15', '516', 'นางพิศมัย  จินะการ', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(166, 'nerr16', '517', 'นายเกษม  กำเนิด', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(167, 'nerr17', '518', 'นางสาววรรณวิภา  แก้วระกา', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(168, 'nerr18', '519', 'นางสาวมาริสา  สุวรรณทา', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(169, 'nerr19', '520', 'นางรพีพรรณ  ใจแก้ว', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(170, 'nerr20', '521', 'นายสมชาติ ไชยลังการ', 'งานพยาบาลผู้ป่วยอุบัติเหตุและฉุกเฉิน', 2, '0000-00-00 00:00:00'),
(171, 'cocm01', '1502', 'นางวิไลวรรณ  มาคำ', 'งานรักษาพยาบาลชุมชน', 2, '0000-00-00 00:00:00'),
(172, 'cocm02', '1503', 'นายชินกร  มาคำ', 'งานรักษาพยาบาลชุมชน', 2, '0000-00-00 00:00:00'),
(173, 'cocm03', '1504', 'นางสาวอภิญญา  จันต๊ะคาด', 'งานรักษาพยาบาลชุมชน', 2, '0000-00-00 00:00:00'),
(174, 'cocm04', '1505', 'นายอนุพนธ์  ไชยช่อฟ้า', 'งานรักษาพยาบาลชุมชน', 2, '0000-00-00 00:00:00'),
(175, 'mrec01', '1802', 'นางสาวปรีชญา  กอใหญ่', 'งานเวชระเบียน', 2, '0000-00-00 00:00:00'),
(176, 'mrec02', '1803', 'นายพิชชากร  โนมูล', 'งานเวชระเบียน', 2, '0000-00-00 00:00:00'),
(177, 'mrec03', '1804', 'นางสาวอัจจิมารินทร์    มะโนวงค์', 'งานเวชระเบียน', 2, '0000-00-00 00:00:00'),
(178, 'mrec04', '1805', 'นางสาวมาริษา  ต๊ะปัน', 'งานเวชระเบียน', 2, '0000-00-00 00:00:00'),
(179, 'psyc01', '1402', 'นางพัชราวรรณ  ปัญญาวงศ์', 'งานสุขภาพจิตและจิตเวช', 2, '0000-00-00 00:00:00'),
(180, 'psyc02', '1403', 'นายศตวรรษ  ขันต๊ะ', 'งานสุขภาพจิตและจิตเวช', 2, '0000-00-00 00:00:00'),
(181, 'psyc03', '1404', 'นางรมย์มณี  พลสาร', 'งานสุขภาพจิตและจิตเวช', 2, '0000-00-00 00:00:00'),
(182, 'hnurs', '3021', 'นางเพ็ญศรี  คำเหล็ก', 'หัวหน้ากลุ่มการพยาบาล', 3, '0000-00-00 00:00:00'),
(183, 'hdscc', '3141', 'นางนิภา  จักรสมศักดิ์', 'หัวหน้ากลุ่มงานควบคุมและป้องกันโรค', 3, '0000-00-00 00:00:00'),
(184, 'hdent', '3091', 'นายสุเทียน  แก้วมะคำ', 'หัวหน้ากลุ่มงานทันตกรรม', 3, '0000-00-00 00:00:00'),
(185, 'hdent2', '3092', 'นางอารีย์  แก้วมะคำ', 'หัวหน้ากลุ่มงานทันตกรรม', 3, '0000-00-00 00:00:00'),
(186, 'hmedt', '3111', 'นายอภินันต์  ภาคน้อย', 'หัวหน้ากลุ่มงานเทคนิคการแพทย์', 3, '0000-00-00 00:00:00'),
(187, 'hpcuu', '3131', 'นางดลหทัย  จตุรคเชนทร์เดชา', 'หัวหน้ากลุ่มงานปฐมภูมิ (PCU)', 3, '0000-00-00 00:00:00'),
(188, 'htmed', '3121', 'นายณัฐกิตติ์  พงศ์ไกรสิทธิ์', 'หัวหน้ากลุ่มงานแพทย์แผนไทย', 3, '0000-00-00 00:00:00'),
(189, 'hphar', '3101', 'นายสมพงษ์  วุฒิอดิเรก', 'หัวหน้ากลุ่มงานเภสัชกรรม', 3, '0000-00-00 00:00:00'),
(190, 'hradi', '1501', 'นายสุวิชา  มณีรัตน์', 'หัวหน้ากลุ่มงานรังษีวิทยา', 3, '0000-00-00 00:00:00'),
(191, 'hphys', '3181', 'นายอัครพล  ดวงกุลสา', 'หัวหน้ากลุ่มงานเวชกรรมฟื้นฟู', 3, '0000-00-00 00:00:00'),
(192, 'hdoct', '3011', 'นพ.นพปฎล  พรรณราย', 'หัวหน้างานการแพทย์', 3, '0000-00-00 00:00:00'),
(193, 'hnpod', '3031', 'นางสาวพัชรินทร์  สิทธิกรรณ์', 'หัวหน้างานผู้ป่วยนอก', 3, '0000-00-00 00:00:00'),
(194, 'hnlrr', '3071', 'นางอ้อมใจ  อุปคำ', 'หัวหน้างานพยาบาลผู้คลอด', 3, '0000-00-00 00:00:00'),
(195, 'hnwdm', '3041', 'นางนิชาภา  ศิริมงคล', 'หัวหน้างานพยาบาลผู้ป่วยในชาย', 3, '0000-00-00 00:00:00'),
(196, 'hnwdf', '3051', 'นางชุติกาญจน์  สายบุญรอด', 'หัวหน้างานพยาบาลผู้ป่วยในหญิง', 3, '0000-00-00 00:00:00'),
(197, 'hmrec', '3191', 'นางสาวพิมพ์ชนก  สัตยดิษฐ์', 'หัวหน้างานเวชระเบียน', 3, '0000-00-00 00:00:00'),
(198, 'doct01', '102', 'นพ.ธงชัย  ผลดี', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(199, 'doct02', '103', 'พญ.อัชฌา  จิตตรง', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(200, 'doct03', '104', 'นพ.ทศพร  เทียมพันธ์', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(201, 'doct04', '105', 'นพ.สิโรดม  มาดาวิศิษฎ์', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(202, 'doct05', '106', 'นพ.วีระพงศ์  ดวงมณี', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(203, 'doct06', '107', 'นพ.ธีรพล  ธิอุด', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(204, 'doct07', '108', 'พญ.สิริพร  อึ้งอภินันท์', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(205, 'doct08', '109', 'นพ.สิรดนัย  วัฒนวงษ์คีรี', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(206, 'doct09', '110', 'พญ.สุชารีย์  ยะระนันท์', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(207, 'doct10', '111', 'นพ.ธีรพล  ทนงกิจ', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(208, 'doct11', '112', 'นพ.จิรายุ  จารุดำรงศักดิ์', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(209, 'doct12', '113', 'นพ.วิศรุต  ชัยชาญ', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00'),
(210, 'doct13', '114', 'พญ.ภลินี  ชินสว่างวัฒนกุล', 'องค์กรแพทย์', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mename`
--

CREATE TABLE `tbl_mename` (
  `id` int(11) NOT NULL,
  `menames` varchar(30) NOT NULL,
  `mesubname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_mename`
--

INSERT INTO `tbl_mename` (`id`, `menames`, `mesubname`) VALUES
(1, 'Administration error', 'ยาเตรียมผสมที่ไม่ถูกต้อง/ไม่เข้ากัน/ผิดเทคนิค'),
(2, 'Administration error', 'ให้ยาผิดคน'),
(3, 'Administration error', 'ให้ยาผิดชนิด'),
(4, 'Administration error', 'ให้ยาผิดรูปแบบ'),
(5, 'Administration error', 'ให้ยาผิดความแรง'),
(6, 'Administration error', 'ให้ยาผิดขนาด'),
(7, 'Administration error', 'ให้ยาที่แพทย์ไม่ได้สั่งพทย์สั่ง off แล้ว'),
(8, 'Administration error', 'ให้ยาผิดวิถีทาง'),
(9, 'Administration error', 'ให้ยาผิดเวลา'),
(10, 'Administration error', 'ให้ยาจำนวนครั้งมากกว่าที่สั่ง'),
(11, 'Administration error', 'ให้ยาจำนวนครั้งน้อยกว่าที่สั่ง'),
(12, 'Administration error', 'ให้ยา/สารน้ำ  rate เร็วกว่าที่กำหนด'),
(13, 'Administration error', 'ให้ยา/สารน้ำ  rateช้ากว่าที่กำหนด'),
(14, 'Administration error', 'ให้ยา/สารน้ำ ผิดวิธีใช้'),
(15, 'Administration error', 'ให้ยาโดยอุปกรณ์ไม่เหมาะสม'),
(16, 'Administration error', 'ให้ยาที่มีปฏิกิริยาต่อกัน'),
(17, 'Administration error', 'ให้ยาที่มีประวัติแพ้ยาอย่างชัดเจน'),
(18, 'Compliance error', 'ใช้ยามากกว่าที่สั่ง'),
(19, 'Compliance error', 'ใช้ยาขนาดน้อยกว่าที่สั่ง'),
(20, 'Compliance error', 'ไม่ได้ใช้ยาครบทุกรายการ'),
(21, 'Compliance error', 'ใช้ยาซ้ำซ้อน'),
(22, 'Compliance error', 'ไม่เข้าใจคำแนะนำการใช้ยา'),
(23, 'Compliance error', 'ฉลากยาไม่ชัดเจน'),
(24, 'Compliance error', 'เกิดผลข้างเคียงจากยา'),
(25, 'Compliance error', 'อ่านฉลากยาไม่ได้'),
(26, 'Compliance error', 'พฤติกรรมการลืมกินยา'),
(27, 'Compliance error', 'เทคนิคการใช้ยาพ่นไม่ถูกต้อง'),
(28, 'Compliance error', 'ใช้ยาฉีดอินซูลินไม่ถูกต้อง'),
(29, 'Compliance error', 'อื่นๆ'),
(30, 'Dispensing error', 'จ่ายยาผิดคน'),
(31, 'Dispensing error', 'จ่ายยาผิดชนิด'),
(32, 'Dispensing error', 'จ่ายยาซ้ำซ้อน'),
(33, 'Dispensing error', 'จ่ายยาผิดรูปแบบ'),
(34, 'Dispensing error', 'จ่ายยาผิดความแรง'),
(35, 'Dispensing error', 'จ่ายยาขนาดสูง'),
(36, 'Dispensing error', 'จ่ายยาขนาดต่ำ'),
(37, 'Dispensing error', 'จ่ายยาผิดวิธีใช้/ผิดความถี่'),
(38, 'Dispensing error', 'จ่ายยาจำนวนน้อยกว่าที่ควรได้รับ'),
(39, 'Dispensing error', 'จ่ายยามากกว่าจำนวนที่ควรได้รับ'),
(40, 'Dispensing error', 'จ่ายยาที่มีปฏิกิริยาต่อกัน'),
(41, 'Dispensing error', 'จ่ายยาไม่ครบ/ไม่จ่ายยาที่ควรได้รับ'),
(42, 'Dispensing error', 'จ่ายยาที่ไม่ควรได้รับ'),
(43, 'Dispensing error', 'จ่ายยาไม่เหมาะสมกับสภาวะผู้ป่วย'),
(44, 'Dispensing error', 'จ่ายยาที่ผู้ป่วยมีประวัติแพ้ยา'),
(45, 'Dispensing error', 'จ่ายยาที่ฉลากไม่สมบูรณ์'),
(46, 'Mornitoring error', 'ไม่ส่งตรวจประเมินตามแนวทางก่อนการใช้ยา'),
(47, 'Mornitoring error', 'ไม่ปฏิบัติตามแนวทางการติดตาม HAD'),
(48, 'Mornitoring error', 'ไม่เตือนแพทย์เมื่อเกิดอาการไม่พึงประสงค์'),
(49, 'Pre-dispensing error', 'จัดยาผิดคน'),
(50, 'Pre-dispensing error', 'จัดยาผิดชนิด'),
(51, 'Pre-dispensing error', 'จัดยาผิดรูปแบบ'),
(52, 'Pre-dispensing error', 'จัดยาผิดความแรง'),
(53, 'Pre-dispensing error', 'จัดยาผิดจำนวน'),
(54, 'Pre-dispenisng error', 'จัดยาไม่ครบ/ไม่ได้จัดยา'),
(55, 'Pre-dispensing error', 'จัดยาที่ผู้ป่วยมีประวัติแพ้ยา'),
(56, 'prescription error', 'สั่งยาผิดคน'),
(57, 'prescription error', 'สั่งยาผิดชนิด'),
(58, 'prescription error', 'สั่งยาซ้ำซ้อน'),
(59, 'prescription error', 'สั่งยาผิดรูปแบบ'),
(60, 'prescription error', 'สั่งยาผิดความแรง'),
(61, 'prescription error', 'สั่งยาขนาดสูง'),
(62, 'prescription error', 'สั่งยาขนาดต่ำ'),
(63, 'prescription error', 'สั่งใช้ยาผิดวิธีใช้ ความถี่'),
(64, 'prescription error', 'สั่งยาจำนวนน้อยกว่าที่ควรได้รับ'),
(65, 'prescription error', 'สั่งยามากกว่าจำนวนที่ควรได้รับ'),
(66, 'prescription error', 'สั่งที่มีปฏิกิริยาต่อกัน ( 17 คู่ )'),
(67, 'prescription error', 'สั่งยาไม่ครบ/ไม่สั่งยาที่ควรได้รับ'),
(68, 'prescription error', 'สั่งยาที่ไม่ควรได้รับ'),
(69, 'prescription error', 'สั่งยาไม่เหมาะสมกับสภาวะผู้ป่วย'),
(70, 'prescription error', 'สั่งยาที่ผู้ป่วยมีประวัติแพ้อย่างชัดเจน'),
(71, 'prescription error', 'สั่งยาโดยใช้คำย่อที่ไม่เป็นไปตามข้อตกลง'),
(72, 'prescription error', 'สั่งยาเดิมไม่ระบุชื่อยา'),
(73, 'prescription error', 'สั่งยาไม่ระบุวิธีใช้'),
(74, 'prescription error', 'สั่งยาไม่ระบุความแรง'),
(75, 'prescription error', 'สั่งยาลายมือไม่ชัดเจน'),
(76, 'Processing error', 'ไม่ปฏิบัติตามระบบป้องกันแพ้ยาซ้ำ'),
(77, 'Processing error', 'ไม่ปฏิบัติตามระบบส่งเบิกยาเวรดึก'),
(78, 'Processing error', 'ระบบการนัดผู้ป่วย OPD/IPD ผิดพลาด'),
(79, 'Processing error', 'ไม่ปฏิบัติตามระบบสำรองยาเสพติด'),
(80, 'Processing error', 'ไม่ปฏิบัติตามระบบยา DUE'),
(81, 'Processing error', 'ไม่ปฏิบัติตามระบบ med reconcile'),
(82, 'Processing error', 'สั่งใช้ยาที่มี order อยู่แล้ว'),
(83, 'Processing error', 'สั่งยา OPD ไม่บันทึกในคอมฯ'),
(84, 'Processing error', 'สั่งยา IPD ในส่วนที่ไม่มี coppy order'),
(85, 'Processing error', 'ไม่ได้หักแบ่งเม็ดยา'),
(86, 'Processing error', 'ไม่ระบุชื่อผู้ป่วยใน coppy order'),
(87, 'Processing error', 'สารน้ำ/ยาฉีด ไม่ระบุชื่อผู้ป่วย'),
(88, 'Processing error', 'ไม่ระบุเวลาให้/หมดของยา สารน้ำ'),
(89, 'Processing error', 'เซ็นต์ชื่อให้ยาก่อนให้ยา'),
(90, 'Processing error', 'ไม่ส่งคืนยาที่แพทย์ off ผู้ป่วย D/C'),
(91, 'Transcription error', 'คัดลอกผิดคน'),
(92, 'Transcription error', 'คัดลอกผิดชนิด'),
(93, 'Transcription error', 'คัดลอกซ้ำซ้อน'),
(94, 'Transcription error', 'คัดลอกผิดรูปแบบ'),
(95, 'Transcription error', 'คัดลอกผิดความแรง'),
(96, 'Transcription error', 'คัดลอกผิดขนาด'),
(97, 'Transcription error', 'คัดลอกผิดวิธีใช้ ความถี่'),
(98, 'Transcription error', 'คัดลอกผิดจำนวน'),
(99, 'Transcription error', 'คัดลอกยาที่มี DI ( 17 คู่ )'),
(100, 'Transcription error', 'คัดลอกไม่ครบ/ไม่ได้คัดลอก'),
(101, 'Transcription error', 'คัดลอกยาที่ไม่ควรได้รับ'),
(102, 'Transcription error', 'คัดลอกคำสั่งใช้ยาไม่เหมาะสมกับสภาวะผู้ป่วย'),
(103, 'Transcription error', 'คัดลอกยาที่ผู้ป่วยมีประวัติแพ้ยาอย่างชัดเจน');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_metype`
--

CREATE TABLE `tbl_metype` (
  `id` int(11) NOT NULL,
  `metypecode` varchar(5) NOT NULL,
  `menames` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_metype`
--

INSERT INTO `tbl_metype` (`id`, `metypecode`, `menames`) VALUES
(1, 'PRESC', 'Prescription error'),
(2, 'TRANS', 'Transcription error'),
(3, 'PDISP', 'Pre-dispensing error'),
(4, 'DISPE', 'Dispensing error'),
(5, 'ADMIN', 'Administration error'),
(6, 'MONIT', 'Monitoring error'),
(7, 'COMPL', 'Compliance error'),
(8, 'PROCS', 'Processing error');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_metypename`
--

CREATE TABLE `tbl_metypename` (
  `id` int(11) NOT NULL,
  `typename` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_metypename`
--

INSERT INTO `tbl_metypename` (`id`, `typename`) VALUES
(1, 'Administration error'),
(2, 'Compliance error'),
(3, 'Dispensing error'),
(4, 'Mornitoring error'),
(5, 'Pre-dispening error'),
(6, 'prescription error'),
(7, 'Processing error'),
(8, 'Transcription error');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pttype`
--

CREATE TABLE `tbl_pttype` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_pttype`
--

INSERT INTO `tbl_pttype` (`id`, `name`) VALUES
(1, 'OPD'),
(2, 'IPD'),
(3, 'NCD Refill');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_risk`
--

CREATE TABLE `tbl_risk` (
  `id` int(11) NOT NULL,
  `risk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_risk`
--

INSERT INTO `tbl_risk` (`id`, `risk`) VALUES
(1, 'A มีโอกาสเกิด error'),
(2, 'B เกิด error แล้วแต่ยังไม่ถึงผู้ป่วย'),
(3, 'C เกิด error ถึงผู้ป่วยแล้วแต่ไม่เกิดอันตราย'),
(4, 'D เกิด error ถึงผู้ป่วยแล้วต้องเฝ้าระวัง'),
(5, 'E เกิด error ถึงผู้ป่วยแล้วเกิดอันตรายต้องรักษา'),
(6, 'F เกิด error ถึงผู้ป่วยแล้วต้องนอน รพ.นานขึ้น'),
(7, 'G เกิด error ถึงผู้ป้วยแล้วเกิดอันตรายถาวร'),
(8, 'H เกิด error ถึงผู้ป่วยแล้วต้องช่วยชีวิต'),
(9, 'I เกิด error ผู้ป่วยเสียชีวิต');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcause`
--

CREATE TABLE `tbl_subcause` (
  `id` int(11) NOT NULL,
  `causename` varchar(100) NOT NULL,
  `sub_cause` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_subcause`
--

INSERT INTO `tbl_subcause` (`id`, `causename`, `sub_cause`) VALUES
(1, 'ปัญหาจากยา', 'ชื่อคล้ายกัน'),
(2, 'ปัญหาจากการสื่อสาร', 'ไม่มีการส่งต่อข้อมูลที่ดี'),
(3, 'ปัญหาจากบุคลากร', 'ขาดการตรวจสอบซ้ำ'),
(4, 'ปัญหาจากบุคลากร', 'อ่าน/แปลคำสั่งผิด');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urgenttime`
--

CREATE TABLE `tbl_urgenttime` (
  `id` int(11) NOT NULL,
  `urgent` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_urgenttime`
--

INSERT INTO `tbl_urgenttime` (`id`, `urgent`) VALUES
(1, 'ช่วงเวลาเร่งด่วน'),
(2, 'ช่วงเวลาไม่เร่งด่วน');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workday`
--

CREATE TABLE `tbl_workday` (
  `id` int(1) NOT NULL,
  `workday` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_workday`
--

INSERT INTO `tbl_workday` (`id`, `workday`) VALUES
(1, 'วันธรรมดา'),
(2, 'วันหยุดเสาร์-อาทิตย์'),
(3, 'วันหยุดนักขัตฤกษ์');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workperiod`
--

CREATE TABLE `tbl_workperiod` (
  `id` int(1) NOT NULL,
  `workperiod` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_workperiod`
--

INSERT INTO `tbl_workperiod` (`id`, `workperiod`) VALUES
(1, 'เวรเช้า'),
(2, 'เวรบ่าย'),
(3, 'เวรดึก');

-- --------------------------------------------------------

--
-- Table structure for table `tb_officer`
--

CREATE TABLE `tb_officer` (
  `id` int(11) NOT NULL,
  `dep_name` varchar(100) NOT NULL,
  `officer_name` varchar(100) NOT NULL,
  `login_name` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `userlevel` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_officer`
--

INSERT INTO `tb_officer` (`id`, `dep_name`, `officer_name`, `login_name`, `password`, `userlevel`) VALUES
(0, 'แพทย์', 'ken seeta', 'ken', '5678', '1'),
(0, 'กลุ่มงานเภสัชกรรม', 'ภก.อิ่นแก้ว สิงห์แก้ว', 'ken', 'nek123', '1'),
(0, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_adminerror`
--
ALTER TABLE `tbl_adminerror`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_causetype`
--
ALTER TABLE `tbl_causetype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `causetype` (`causetype`);

--
-- Indexes for table `tbl_commucause`
--
ALTER TABLE `tbl_commucause`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dispensingerror`
--
ALTER TABLE `tbl_dispensingerror`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_drugcause`
--
ALTER TABLE `tbl_drugcause`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_drugs`
--
ALTER TABLE `tbl_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_editable`
--
ALTER TABLE `tbl_editable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_errorname`
--
ALTER TABLE `tbl_errorname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mederrordata`
--
ALTER TABLE `tbl_mederrordata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mename`
--
ALTER TABLE `tbl_mename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_metype`
--
ALTER TABLE `tbl_metype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_metypename`
--
ALTER TABLE `tbl_metypename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pttype`
--
ALTER TABLE `tbl_pttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_risk`
--
ALTER TABLE `tbl_risk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcause`
--
ALTER TABLE `tbl_subcause`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_urgenttime`
--
ALTER TABLE `tbl_urgenttime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_workday`
--
ALTER TABLE `tbl_workday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_workperiod`
--
ALTER TABLE `tbl_workperiod`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_adminerror`
--
ALTER TABLE `tbl_adminerror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_causetype`
--
ALTER TABLE `tbl_causetype`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_commucause`
--
ALTER TABLE `tbl_commucause`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_dispensingerror`
--
ALTER TABLE `tbl_dispensingerror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_drugcause`
--
ALTER TABLE `tbl_drugcause`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_drugs`
--
ALTER TABLE `tbl_drugs`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT for table `tbl_editable`
--
ALTER TABLE `tbl_editable`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_errorname`
--
ALTER TABLE `tbl_errorname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_mederrordata`
--
ALTER TABLE `tbl_mederrordata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `tbl_mename`
--
ALTER TABLE `tbl_mename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tbl_metype`
--
ALTER TABLE `tbl_metype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_metypename`
--
ALTER TABLE `tbl_metypename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pttype`
--
ALTER TABLE `tbl_pttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_risk`
--
ALTER TABLE `tbl_risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_subcause`
--
ALTER TABLE `tbl_subcause`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_urgenttime`
--
ALTER TABLE `tbl_urgenttime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_workday`
--
ALTER TABLE `tbl_workday`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_workperiod`
--
ALTER TABLE `tbl_workperiod`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
