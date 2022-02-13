-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 10:54 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_15`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `guid` char(36) NOT NULL,
  `classID` char(6) NOT NULL,
  `semester` char(5) NOT NULL,
  `teacherID` char(9) NOT NULL,
  `subjectID` char(7) NOT NULL,
  `classroomName` varchar(9) NOT NULL,
  `studentClassID` char(6) NOT NULL,
  `schedule` varchar(100) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=819 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`guid`, `classID`, `semester`, `teacherID`, `subjectID`, `classroomName`, `studentClassID`, `schedule`) VALUES
('11452b0c-768e-5ff7-0d63-eeb1d8ed8cef', '368767', '20211', '08389', '98220', 'D3-105', '23214', 'XBB720206WQ19D2VYC568N45PIGRU7'),
('1152da18-24d8-65b6-0380-e8e2a817c80e', '487981', '20202', '60620', '49610', 'D4-504', '20921', '0'),
('11f7089b-33e6-371a-f817-7000f455f3d5', '842355', '20211', '11083', '08275', 'D5-316', '30090', 'X096G3H5XP9166A253JLVMIO7858K419I2FQDW4R3324KK0K0ADRP59582S872E15V88IX83E7UKD443C6APO02839Z66T4W'),
('13fc3540-52b5-3489-1163-eeb1d8ed8cef', '474826', '20202', '61825', '65010', 'D5-115', '68440', 'D80KZA0851DVDO4C2C60NS679BY6X1211L7L1KE679NTW35S77457X2773E2BMDS2DD9UT701J1G'),
('142cb08f-7c31-21fa-8e90-67245e8b283e', '804601', '20202', '60620', '17419', 'D5-116', '01551', 'JK1E7UKXI020499C3L1XC'),
('14c0ce35-1687-459c-1acb-66948daf6128', '167930', '20211', '21450', '54722', 'TC-534', '20435', 'I39V4EF1K8MSGU3EJJ9L79U8O87EG84M8J'),
('17120d02-6ab5-3e43-18cb-66948daf6128', '762300', '20202', '95990', '91222', 'D5-115', '71893', 'L2404P06C8AK68RH6698J642SJG15W8I1ZC4DTB'),
('179d5bc0-2405-67f7-9590-67245e8b283e', '407619', '20211', '68576', '39088', 'TC-486', '04613', '5CBIL'),
('1b336f56-7ee3-7ceb-1ccb-66948daf6128', '223300', '20202', '84538', '81761', 'D4-111', '87656', '65N7Q5FO0J45407DPM48A8TKJXLEJUS4I994797YW2G58SD1'),
('1c2187a3-6d94-2ded-21cb-66948daf6128', '502891', '20202', '84538', '33067', 'D8-313', '40595', '440X7M1RUV6V7O6L4O3T215S37JCQ5'),
('1ded3dd7-32db-5bc9-9190-67245e8b283e', '451627', '20211', '19536', '57701', 'TC-489', '01752', '1K91YP07PZ630U61G6YU7WK963543I657P85958'),
('1e5a953f-1c88-5769-addb-e5d54223c257', '750455', '20202', '26300', '36202', 'TC-252', '81191', '664841958C78QNL4ILCN5C4991MGKMFZDQC7'),
('1f22399e-14b4-5c2b-8132-6a1673ffca7c', '635550', '20211', '26403', '77884', 'TC-259', '91066', '683898'),
('1f74cd3f-6de4-5324-0180-e8e2a817c80e', '398695', '20202', '67161', '18546', 'TC-587', '60928', 'VLFM1D7A1A1UF8Z464475056XNN5'),
('1f8d7e46-1d1e-335f-79dd-867949feb8b5', '920482', '20211', '64683', '02822', 'D3-413', '50730', 'SNIVV7396M453PMOIF860Y14JW28G6J7KX5A73VZ9KFD206LFWI14QVPN2P21T7T0ZGJ9I5Q93P3O8S4728K37Y'),
('205a3e0a-13fe-3557-8232-6a1673ffca7c', '476304', '20211', '60620', '55080', 'D5-401', '81191', 'Q406JFW8R7700V'),
('20d0b9f3-3e65-1639-9d7d-e8c757976496', '603823', '20202', '68576', '81485', 'TC-366', '63501', '455466864D8RF0P585FE'),
('22032557-51a3-4005-1263-eeb1d8ed8cef', '152297', '20202', '61144', '66412', 'TC-340', '75446', 'D1RCJ'),
('24629593-3d34-32fd-997d-e8c757976496', '947426', '20202', '23452', '18964', 'TC-240', '42591', '48LS7YG94W1O8Z88XJWPZZ80Z91TLWB965E2I9IK62ZLIDKMH6J6DC4CZ2RQBF587CZ'),
('247986de-4165-651a-9490-67245e8b283e', '056141', '20211', '91873', '66412', 'D8-406', '40595', 'HL651V'),
('257ea484-501b-1644-7cdd-867949feb8b5', '302714', '20202', '33671', '33828', 'D8-112', '62928', '56K997T1'),
('25efaa0a-2220-4655-20cb-66948daf6128', '932276', '20211', '35911', '17517', 'D4-513', '09739', 'YLOK76Z6E3LPZSF809539'),
('284ccb05-337b-7e6f-9090-67245e8b283e', '231168', '20211', '32865', '15857', 'TC-330', '86930', '6Q73B0'),
('2b850d3d-6722-3f01-1bcb-66948daf6128', '328100', '20211', '94864', '57701', 'TC-427', '09739', '2P4TQ53XX15H9X2LS5396OW3F08W4E3OW'),
('2bbbd485-6df2-536a-7e32-6a1673ffca7c', '134115', '20211', '20288', '02822', 'D6-114', '25813', 'S5YG8IO'),
('2bf413d3-7a2c-217a-78dd-867949feb8b5', '700762', '20202', '19590', '63073', 'D6-111', '48243', 'MX699D7D988'),
('2dcedb9c-6c32-7d27-977d-e8c757976496', '201488', '20202', '82706', '65010', 'TC-497', '49037', 'I89T882OW8NO815KE5RCTNGKA610MU517OAPUI9U4988VEP9A2Y46447282'),
('2de001fe-529b-33ad-0280-e8e2a817c80e', '884504', '20202', '78868', '25845', 'TC-434', '36971', '2033VP6UW9JO1WFQUI51C4V66GC7962X'),
('2fb0b105-7808-503a-76dd-867949feb8b5', '878184', '20211', '64683', '57701', 'TC-365', '40595', '94B09H62RY90BO04W814S6J253SOEUM4'),
('2ff059da-69a9-17a4-fc17-7000f455f3d5', '687405', '20202', '16342', '09685', 'D6-415', '75446', 'MP4D9VGZ8PI2N09XZ13U5G423LNQIT3FHH4I61T28VIS4P'),
('30c8ee28-58a3-22f2-5e92-08c864661f9c', '989203', '20202', '43610', '08275', 'D5-206', '42721', '3PH9B75YA8O35HVWFCXZ3D851WC98E06295OH5380580K6OX5SA54DI5HA5PRJ72NRX6963I8ZBINU1C64RRD3J49K2DOKXU9CRS'),
('34cde64f-62e4-186c-77dd-867949feb8b5', '634381', '20202', '20288', '52722', 'TC-539', '04613', '7457H74VW1202ZA14A2'),
('3590dd80-43d2-1325-8732-6a1673ffca7c', '970497', '20202', '37479', '84639', 'TC-444', '45302', '87RJ200DV909R'),
('3599ef50-13ed-5404-0e63-eeb1d8ed8cef', '404620', '20202', '03175', '02822', 'TC-481', '54030', '9Y9R05591W29817R1370J137JM2N92SA89475HES3G535AG85Y58K6UVVE587EAWWQ1JT2E9IH4KG856T21Y2D2N86E4UAGYV7RQ'),
('38b1d642-47b7-7c97-6692-08c864661f9c', '615247', '20202', '61988', '17781', 'D8-213', '86989', '2S'),
('3ab17eb8-4928-4275-8332-6a1673ffca7c', '447862', '20202', '32856', '32239', 'TC-356', '41034', '2425465QEVPG62'),
('3abc4ce5-462f-5db9-9e7d-e8c757976496', '048993', '20211', '32856', '94267', 'TC-464', '09807', 'DHU4L6B727HO8RP669MYPUZZ01VW9RSTFP6H26'),
('3ef08d53-5bf3-1e97-9790-67245e8b283e', '576541', '20202', '61220', '33445', 'D6-503', '20435', 'G'),
('3f66f2d6-688b-4161-5f92-08c864661f9c', '517692', '20202', '75338', '25845', 'D5-111', '62928', '3P0B2H1O07694T2U'),
('40036f5e-657f-2c3d-9f7d-e8c757976496', '208300', '20211', '72884', '03029', 'TC-277', '05933', '0W5L81QX'),
('404fe340-1fd3-414b-aadb-e5d54223c257', '822183', '20211', '88655', '13038', 'D8-405', '90287', '5337032FFS8787I2MDW7V70LX219P511Y78H43320ZM7048SV5VCTJ9AQ87G8U1Y5903JP7F205YM'),
('4188bc78-6e7e-2c0a-7fdd-867949feb8b5', '715705', '20202', '78868', '18546', 'TC-486', '23214', '8'),
('4296b118-76aa-3241-7edd-867949feb8b5', '698091', '20211', '84538', '52722', 'D3-305', '20921', 'O1P5G987C977O0D3R1L2I6OL03556WN6T02T8831554EU66U81A8AN0D836APY2283NUHARY3A8D61W7AJURSGE84RA82390ELUJ'),
('438fec4c-2dad-30d7-a07d-e8c757976496', '573874', '20211', '72884', '09951', 'D5-515', '50730', '4L0327793BM7QNANMZBL3TP7FW843ZD3KH734958R562'),
('439cdac8-4380-1e2d-0f63-eeb1d8ed8cef', '106329', '20211', '50764', '55340', 'D7-315', '71162', 'N35V084E805TRQC0245QK862V26AT94TGO9GP9IY3J7W7796HRP2V4P9FD4T9R2V585YY4XGYPIV'),
('4448a185-202a-56da-8632-6a1673ffca7c', '520146', '20202', '94465', '49610', 'D6-213', '45948', '3MG41A5T75DP0723370JD79R56CDCR7OUR009Y30XGA'),
('4577565a-7e3e-493a-74dd-867949feb8b5', '496315', '20211', '66453', '14404', 'TC-433', '43887', 'KQ56XNM9TW2R60DN33Z2C1K7Y0EJ7G2'),
('469b3ece-744a-45d5-957d-e8c757976496', '922286', '20202', '37479', '76683', 'TC-247', '88490', 'DT0R5U1UZKR5446A'),
('46f514e3-3598-177c-6192-08c864661f9c', '481065', '20202', '50764', '87620', 'TC-398', '09807', '208OP9U3IN525QB57'),
('47405a55-5845-562c-7ddd-867949feb8b5', '003410', '20202', '42944', '17419', 'TC-272', '47291', 'C9UVYRRQL282K0CN7JZO18ZOCM192'),
('4760d71f-6e2f-5b32-19cb-66948daf6128', '891693', '20202', '35040', '06963', 'D8-114', '58852', '8X3UCNSYJI7JTB7S3SR8H4C8B2C10'),
('47f60f67-6087-2a86-abdb-e5d54223c257', '222599', '20211', '93954', '18574', 'D7-503', '71867', 'H1O5ADD3B'),
('4c2386b1-57fb-15fa-1063-eeb1d8ed8cef', '790908', '20211', '14052', '32239', 'TC-526', '75541', '096U50Q2O9YWK'),
('4d79d901-1edc-5c5b-0780-e8e2a817c80e', '399842', '20202', '83808', '32485', 'TC-582', '18296', 'TW2'),
('4d7b21db-2e02-12b7-a9db-e5d54223c257', '740141', '20202', '55831', '03029', 'TC-494', '20435', 'XNTN044X1TVQ37N642S9WLC2P304F2TG43086K0AV8NOC9VC8K6'),
('4e272fc4-7875-78d6-7d32-6a1673ffca7c', '849082', '20211', '65701', '81485', 'TC-576', '54518', 'FUJ55N0F2'),
('4eceddac-7dc2-38ea-7bdd-867949feb8b5', '586550', '20211', '33671', '10000', 'TC-578', '45948', 'YZ620'),
('52f7159d-5242-1af8-9c7d-e8c757976496', '898373', '20202', '35543', '30762', 'D3-112', '54828', '294F1Y'),
('53f6b59c-6af6-4204-6292-08c864661f9c', '210880', '20202', '19536', '40385', 'TC-505', '90345', 'GER2SG0HCSK9'),
('5608f456-3b97-2e05-5d92-08c864661f9c', '524936', '20202', '32856', '33941', 'TC-446', '37716', '4OG7OZ5IMRYN1WTQ41BPE0537534S71R671IP8M04C06GF3KNFR2OHU0VVO3S4W5N4321QJ385L3Z828Y44IVBF62UTVS6S88K82'),
('5660d465-6020-48f3-75dd-867949feb8b5', '335893', '20202', '21450', '18147', 'D7-206', '45302', 'QQC'),
('56957607-562f-5d6d-1ecb-66948daf6128', '714621', '20211', '98964', '18546', 'TC-218', '01551', '9EWOSZOXRT7AEU0M9J8LD65GT5JEZ0OUE2REG43SO853QHSB15N63'),
('59d19422-6657-452e-a7db-e5d54223c257', '937535', '20202', '57878', '23381', 'TC-205', '06826', 'X'),
('5ae2d70b-201d-3e23-7f32-6a1673ffca7c', '629760', '20202', '94465', '91651', 'D5-303', '75699', '22D4ZKY1482O0WU2N9LTSHR8U4RMWYS9119P1N78KV9'),
('5b2fcdf5-2050-7cb2-8f90-67245e8b283e', '795705', '20211', '19590', '68741', 'TC-478', '80185', 'W'),
('5badffd8-18c8-3f76-6492-08c864661f9c', '782066', '20202', '77722', '98220', 'TC-377', '86989', '659L5676700N856F7DLD0'),
('5c63ba8f-59bb-6d2f-9990-67245e8b283e', '910841', '20202', '88655', '38244', 'D6-303', '75541', 'X6XPGZW9Z4F8Q3S9YLPC10I2042Q6S0'),
('5fbbda7e-7566-416f-9b7d-e8c757976496', '541724', '20202', '61988', '08275', 'TC-438', '57077', '200V5'),
('60084fec-3509-2779-8432-6a1673ffca7c', '219404', '20202', '68576', '10000', 'D4-305', '70235', 'BEV3508'),
('6081dc00-4df0-5184-9690-67245e8b283e', '183432', '20211', '00392', '40385', 'D3-413', '09739', 'LZ4HOU33FBPEBN175Y3O'),
('61a45b9e-55c1-3dbb-f917-7000f455f3d5', '278688', '20202', '03175', '03156', 'TC-599', '41034', '475DE47V'),
('6429b0f4-1391-7f32-9390-67245e8b283e', '070628', '20202', '58886', '36669', 'D8-402', '90345', 'G1ZT497TLJK9FD9EXF658'),
('645f2e5c-7670-66a0-6092-08c864661f9c', '715944', '20211', '50764', '42979', 'TC-479', '13807', '2RNE58805BTLT4SAL82D6T9FTK445FH93OJ52U95N3UE008LB814DHREZ6R72I4J4IDL3NK396TO'),
('6764ab86-6fcc-2757-8032-6a1673ffca7c', '858204', '20211', '77677', '81075', 'TC-465', '59555', '5CXP3DBKWT55Q3162K9NXEM9M'),
('67b5c284-1c59-4a0a-0580-e8e2a817c80e', '286669', '20202', '78412', '13830', 'D6-415', '63545', 'JF1679800BCGR167MTC4B97SCPFA5BE8XRQY37B32KE8872B9GRREJQ38MI257XV907W945SPQKOAL45Z3'),
('68478414-705a-2626-5c92-08c864661f9c', '329326', '20202', '42944', '66412', 'D8-301', '81191', 'K15XH11928Q9T19B375C45RWB6SNZ822F65C58CZ1C9MK9185297'),
('6916f8cf-1279-16d8-9290-67245e8b283e', '089429', '20211', '26300', '94782', 'D3-101', '47291', '38JN6H5G67W4Q9ZK6K7L44A'),
('698623e9-1def-6cb3-fa17-7000f455f3d5', '390296', '20202', '98964', '53873', 'TC-506', '54518', 'Q509749TW1AC511F0UWN3Y8ZP9A7LV1H866WHF9K0Q9YZ5ZM64436RXNN4G277Y6X27Z9S334SD'),
('69cdb3c5-55bc-2a7a-9a7d-e8c757976496', '023688', '20202', '61220', '36669', 'D7-202', '56631', 'PO5BM91H648YOZ5U9AQKS7RJEFRJ7Y0O'),
('6a4d99cd-242a-6200-7add-867949feb8b5', '300364', '20202', '58886', '17517', 'TC-244', '05933', 'W'),
('6c97b353-5d7d-4095-1dcb-66948daf6128', '565998', '20202', '94047', '33445', 'D3-111', '59555', '7YV3P4P7MVD91015015MZ509S182MFJN'),
('6f2475a8-1ff5-13e7-0680-e8e2a817c80e', '509491', '20211', '35543', '33445', 'D8-514', '05933', '77DQPGE4WF4IX5F5F28R790ICN7ES9I9PN3K'),
('70253ec7-2e38-67a9-b1db-e5d54223c257', '679513', '20202', '99863', '42979', 'D6-412', '49037', 'K59UUMC3CLFC9QV518B9S92Y35Z737U2X8Z5DZF60M57FLW53F9UYA19KZK'),
('7050d79b-6948-3c66-1fcb-66948daf6128', '318603', '20211', '88655', '91222', 'TC-271', '30971', '2XLAS'),
('70af83de-413e-63ef-6592-08c864661f9c', '724021', '20211', '61825', '52722', 'D4-313', '05933', 'E07308A1AI1338YIY30A4GYJF12417LT1W2R48ML459352'),
('72ce912f-6015-2e14-fb17-7000f455f3d5', '095746', '20211', '61220', '02822', 'TC-429', '82415', 'R8C9A9JC4MEMC1XK65A'),
('7325f44f-127c-240c-afdb-e5d54223c257', '093376', '20211', '75489', '03029', 'D5-303', '96555', 'WQZ5E0R9QX291'),
('74017ba6-559b-3426-8532-6a1673ffca7c', '358630', '20211', '22563', '17781', 'D3-413', '90345', '841A96F338M93H81043AQVK188QV6B59G0372S7838K4GV1R82UWI764LSD4ZVLPOX7'),
('7623d42f-35f4-1ce5-987d-e8c757976496', '869646', '20211', '11004', '54722', 'TC-379', '40568', 'W74LNW0NUUY06B4S1'),
('767111e6-3dbc-615a-0880-e8e2a817c80e', '422763', '20202', '19536', '36669', 'D4-406', '60928', 'N2L3P4J5290N94BB3988GTCX1W0314045TH33I8NVEG1HE4AX57FJ4PYISXLZQX1D896859FE42WCZ804O2HVQPI7633MCT06U5A'),
('7686595d-16d5-33b3-0080-e8e2a817c80e', '878400', '20211', '22085', '94782', 'TC-444', '71867', 'D3WPF187092VE56S94S7QQ7S00U2V4I3HJ10Z0PZ43C9MR1R3N379'),
('768f8e64-7d10-20c9-967d-e8c757976496', '478644', '20202', '91260', '25845', 'D6-115', '48208', 'XB39F0Q14T4W7131B47V358827Z7U'),
('771e3dd1-42bb-2339-acdb-e5d54223c257', '370580', '20202', '59510', '33941', 'D7-102', '25376', 'K2TL3617P4CDD5654Y2M7R689C6I8F34A4F'),
('791b9e6b-6010-1e33-b0db-e5d54223c257', '979535', '20202', '82706', '44968', 'TC-249', '18296', 'T15E3A4US676WF1U15JSYK23BAC'),
('79fa8253-391f-4864-b2db-e5d54223c257', '905749', '20211', '35040', '54722', 'TC-216', '07607', '51U7'),
('7abe18db-2b8a-5fcb-aedb-e5d54223c257', '714178', '20202', '00392', '65118', 'TC-527', '81191', '5297NWSKJ93093DC3P76'),
('7bec5682-21c4-666f-a8db-e5d54223c257', '176457', '20211', '21711', '99986', 'D7-216', '63545', 'Q54DX2W98IUDDO9GG5EYKFN3L'),
('7e4a64ed-3925-5bb5-6392-08c864661f9c', '857855', '20211', '23452', '63073', 'D4-516', '17667', '462E9C2M'),
('7e8f50b2-5100-74d8-0480-e8e2a817c80e', '937286', '20202', '99642', '17781', 'D8-515', '30449', 'BC227W2C7869L9PWM13BI8ATH277T0J1W2G647I29Y61W28L0O'),
('7f4552ee-20f2-2f82-9890-67245e8b283e', '640212', '20211', '75338', '54722', 'D7-314', '64166', 'YO');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `guid` char(36) NOT NULL,
  `senderID` char(9) NOT NULL,
  `classID` char(6) NOT NULL,
  `sendTime` datetime NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=819 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`guid`, `senderID`, `classID`, `sendTime`, `title`, `message`) VALUES
('1146f657-259f-3d63-d0c7-6c0aeb6ec302', '08452', '878400', '1990-04-05 15:00:25', 'Fugiat et hic ipsum voluptatem eos.', 'Omnis numquam sunt doloribus quia nisi necessitatibus. Quia dolores ex ut minima placeat cupiditate. Ut autem dolor? Rerum vitae officia!'),
('11eea441-2a19-1735-6b78-553c0310877a', '27868', '520146', '1977-12-01 07:18:30', 'Deleniti consequuntur veniam et.', 'Nam facilis et dicta aperiam enim; laudantium aut voluptates sequi recusandae; et natus est quisquam ipsam error. Sint facilis dolorem?'),
('1235c88b-5f2a-78d9-e612-ebbbcf065d1c', '45501', '524936', '1990-09-30 14:28:06', 'Ullam est qui rem veritatis.', 'Alias illum aliquam qui. Id cumque iusto. Natus reprehenderit sed officia distinctio consequatur error? A voluptatibus vel. Voluptatum necessitatibus ut.'),
('12a3b1c2-3be3-4332-d0f8-494a84b910f4', '77836', '905749', '1996-10-16 14:17:49', 'Illum molestiae aut fuga.', 'Beatae et maiores hic; et aliquid quia qui. Rerum maxime culpa odit quia incidunt voluptatem; molestias eum amet. Tempore illum unde. Sint nihil ipsa.'),
('133b54c3-3b57-1e4d-b7ad-cb989f2177da', '65110', '891693', '1970-01-01 00:00:03', 'Pariatur consequatur labore et.', 'Voluptatem quae dicta voluptate corrupti. Sit et quasi totam dolorem? Modi dolorem qui est suscipit qui. Nam nemo odit aliquid.'),
('1696afd7-6db8-201b-0d28-030d4265475f', '23345', '795705', '1985-06-04 00:06:40', 'Adipisci explicabo quod nisi ut quia.', 'Consequatur debitis corporis repudiandae adipisci vel accusantium. Quibusdam sed distinctio! Velit aperiam vel. Et commodi sit. Ab tenetur veniam. Corrupti!'),
('16f20a3e-4e43-1b90-cbc7-6c0aeb6ec302', '52349', '003410', '1974-05-17 18:52:51', 'Placeat molestiae dolorem.', 'Autem ea adipisci natus ullam sint reprehenderit.'),
('1731fa87-79fd-4cc1-6978-553c0310877a', '05134', '286669', '1983-05-13 11:48:51', 'Architecto tempore porro ut tempore.', 'Suscipit et sed. Doloribus consequuntur ea. Dolores eius et. Nihil blanditiis voluptates. Iste fugit similique? Quia qui et. Ut assumenda vero. Natus...'),
('1786e061-1526-3304-e712-ebbbcf065d1c', '05242', '223300', '1977-03-01 09:38:22', 'Natus aspernatur dolores qui iste.', 'Possimus ullam quo iure similique. Eius hic cum quia qui. Aut et aut! Sequi consequatur qui magnam...'),
('185f84ed-4563-51a0-cac7-6c0aeb6ec302', '43675', '947426', '1987-09-04 23:58:14', 'Commodi aperiam natus.', 'Facilis animi a. Fugiat saepe inventore; et eum animi. Ut tenetur animi. Aspernatur et veniam. Quae placeat dolorem. Voluptas dolores unde. Ea vel sit. Sed.'),
('19165ed7-212e-21c4-0428-030d4265475f', '56857', '407619', '2018-07-06 13:29:31', 'Et quia quaerat.', 'Eaque commodi est. Qui at optio; rem quisquam sit. Nemo et nihil; ut libero ea. Beatae est unde? Et est aut.'),
('194f6516-1a6a-7e46-cfc7-6c0aeb6ec302', '64831', '640212', '1986-04-21 01:42:53', 'Vero error natus aut.', 'Eaque dolor porro sunt ipsa. Dicta quia sed eaque nostrum numquam. Qui dolores exercitationem velit. Pariatur fugit laudantium; dolore sed doloremque.'),
('194fda9a-2129-413c-e529-16c01537719a', '38672', '970497', '2002-04-04 01:59:51', 'Natus molestiae voluptas.', 'Repellat iste perferendis. Aliquid voluptas corrupti. Voluptatem aliquid nam. Voluptate minima nemo. Id eius natus! Perspiciatis cupiditate sed. Nihil quia!'),
('19e4e385-6d33-58ac-b6ad-cb989f2177da', '04309', '920482', '2019-10-09 04:02:58', 'Sit similique nemo distinctio.', 'Eaque velit et quaerat. Beatae necessitatibus quaerat omnis et perspiciatis quidem. Officia expedita iste quibusdam laboriosam est beatae.'),
('1a5df1f7-1200-63f1-0628-030d4265475f', '89796', '368767', '2003-12-16 06:35:14', 'Sint labore esse corrupti ex.', 'Et aliquid odit in sed. Sed non sit pariatur possimus et est. Est voluptates ipsum. Praesentium vel magni! Voluptatem quo sed.'),
('1b561f86-2664-2a3e-efdc-845b5dcdad45', '22326', '023688', '2020-01-05 22:21:39', 'Sit at illum.', 'Ex ut illum unde quibusdam et quia. Porro dignissimos quis. Iste qui consectetur aut; voluptas aut sunt? A quia cum sed et dicta!'),
('1ce192a3-6b70-712d-fa74-9471face0ab4', '22845', '937286', '1987-06-08 20:03:25', 'Aspernatur ratione sint iure unde.', 'Ut consequatur mollitia natus. Quo maiores tempora harum omnis aspernatur omnis! Atque esse veniam minima et? Labore autem ullam enim qui voluptatem maiores.'),
('20624ddc-1412-159d-88c3-d3ede7a72094', '44616', '858204', '2019-01-12 05:51:56', 'Earum velit et.', 'Qui molestias neque. Quo architecto deserunt. Pariatur consequatur ea? Quia sed qui! Et ipsam cumque. Perspiciatis libero aut. Nemo minus et. Odit.'),
('225de1fd-4256-3711-f4dc-845b5dcdad45', '88942', '700762', '1994-10-03 17:02:55', 'Repudiandae adipisci necessitatibus.', 'Fugit est eos; ullam sit quo? Qui excepturi dignissimos; quia fuga dolorum. Aut cupiditate qui. Omnis quidem dignissimos? Vel a odio. Iusto ipsam non.'),
('23f585fb-3a2d-505d-b4ad-cb989f2177da', '64540', '878400', '2003-03-20 20:17:34', 'Cumque ut eum autem qui ullam.', 'Pariatur et obcaecati voluptas minima neque omnis. Est nesciunt fugiat. Dolorem sed ipsa. In totam voluptatem. Qui debitis a. Earum et fuga!'),
('25b365f2-2435-14d4-caf8-494a84b910f4', '01253', '302714', '1970-01-01 00:00:44', 'Explicabo eaque vero omnis.', 'Ut laborum error dicta totam veritatis. Est necessitatibus ut nobis nulla non eius. Dolor sapiente temporibus.'),
('25dcc068-2088-213d-0928-030d4265475f', '67329', '509491', '2000-01-01 23:33:22', 'Ea corrupti dolores esse expedita eos.', 'Aperiam dolores voluptas eius. Culpa error iure eaque; porro dolor nobis. Hic corporis quam quas dicta ullam dignissimos; ut tempora exercitationem? Ipsum.'),
('25f99060-45d4-4d94-6c78-553c0310877a', '85342', '565998', '2004-05-14 04:25:49', 'Unde dolores quibusdam placeat qui.', 'Error exercitationem voluptatem. Quam eligendi quibusdam! Quae rerum aut? Animi et incidunt; hic iste quidem. Sunt et nulla. Omnis quibusdam error. Ullam!'),
('27366e4a-5248-12e3-e312-ebbbcf065d1c', '69493', '481065', '1970-01-01 00:04:54', 'Impedit doloremque nemo aut.', 'Nulla et sed. Voluptatem quia minima! Nemo hic quia. Et quam nulla! Autem sit natus; adipisci amet et. Dolorem nisi nihil.'),
('2795b5a7-2489-7959-8ec3-d3ede7a72094', '35768', '152297', '1970-01-01 00:00:51', NULL, 'Natus aut vel facere mollitia odit ipsam; ut delectus optio ut et facilis est.'),
('28462535-1b23-3184-e329-16c01537719a', '06604', '176457', '1990-08-22 09:44:45', 'Illo iste nihil aliquam natus fugiat.', 'Mollitia necessitatibus magni accusantium illo odio in.'),
('28d35b6d-40bb-4aee-bbad-cb989f2177da', '00249', '869646', '1995-07-06 14:39:20', NULL, 'Rerum molestias sint. Non unde voluptatem. Architecto veniam neque; cumque dolore consequatur. Ut rerum asperiores? Architecto incidunt consequatur. Id.'),
('2924c34d-68f1-1d0a-c9c7-6c0aeb6ec302', '46790', '476304', '1992-09-04 08:44:44', 'Accusantium sapiente autem error et.', 'Quisquam ut suscipit accusantium omnis vero alias.'),
('2962d1d5-1c2f-65b3-f1dc-845b5dcdad45', '11583', '300364', '1995-01-15 08:51:20', 'Ut quis deserunt.', 'Et omnis eligendi et quo. Velit et impedit quia porro quas. Eius facilis omnis est harum! Obcaecati neque tempore officia dolor rerum.'),
('29d431fd-2d4b-248f-b2ad-cb989f2177da', '47383', '869646', '1983-03-18 20:48:03', 'Doloribus sit necessitatibus ipsam.', 'Quis debitis et quasi voluptatem. Voluptatibus incidunt ipsam suscipit omnis incidunt ab. Error iusto nostrum non illo dolorem vel!'),
('2be43597-32d1-5030-0b28-030d4265475f', '09328', '724021', '1995-10-08 20:28:17', 'Sed qui inventore odit nobis sed.', 'Et error quidem. Esse quibusdam corporis. Perspiciatis nesciunt incidunt? Est cupiditate dolorum. Tempora totam nam. Qui sed facere. Omnis sed est.'),
('2cb2bad7-3b25-1669-0828-030d4265475f', '77561', '714178', '1970-01-01 02:04:26', 'Sed ea et reiciendis vitae sit.', 'Aspernatur ut eos aspernatur temporibus. Error voluptatem fuga omnis ad voluptas; sed sit placeat eum autem aut laudantium.'),
('2d7c4ad9-5762-3f18-fc74-9471face0ab4', '29903', '208300', '1970-01-01 00:00:04', 'Consectetur atque fugiat.', 'Ea odit iusto. Explicabo qui quod reiciendis explicabo repellat expedita; vero neque placeat voluptates quia minus voluptatem. Reiciendis beatae totam.'),
('2d7c5749-57b4-3c7a-eddc-845b5dcdad45', '14056', '922286', '1970-01-01 00:08:32', 'Error iste aut quia voluptatibus ut.', 'Quisquam consequuntur natus aut quo porro; quo debitis qui voluptates. Inventore pariatur explicabo assumenda quod corporis id.'),
('2e9243c3-466b-239d-6f78-553c0310877a', '92309', '231168', '1972-02-04 06:34:46', 'Cum eos commodi atque est.', 'Nulla consectetur dolor saepe sed optio; quia ut debitis; ratione consequatur ab. Non voluptas eveniet! Voluptatem qui accusantium. Est quae rerum!'),
('31f1d9d4-1568-4117-e829-16c01537719a', '52060', '762300', '1970-01-01 00:06:47', NULL, 'Repellat sed quo. Iste sit sed. Veniam quo sed. Quo dolorum tempora. Maxime nesciunt debitis. Qui tempore error. Sit totam error! Omnis iste deleniti. Quia.'),
('3574b9f0-74a9-5b51-cef8-494a84b910f4', '83407', '476304', '1978-10-01 11:38:25', 'Natus similique autem.', 'Voluptatem quia eos. Praesentium unde saepe. Ea unde sit. Saepe quia quo! Velit ut quia. Magni enim eum. Saepe sit quis.'),
('3631011e-4559-4ad8-b0ad-cb989f2177da', '08272', '629760', '1990-07-10 13:48:01', 'Quos ducimus rerum sit deserunt.', 'Aliquam perspiciatis quasi. Necessitatibus voluptas quos. Omnis minus voluptatem? Tempora earum quidem. Cum tempore porro. Est tempora error. Qui error et.'),
('37defbdb-2f28-502e-b8ad-cb989f2177da', '92626', '573874', '2020-08-07 21:11:13', NULL, 'Accusantium saepe quas; consequatur dolores quas. Quia saepe et. Delectus quidem officia. Aliquam qui iste? Rerum voluptatem et. Aut quo nisi. Error autem.'),
('392fa796-4918-764e-6d78-553c0310877a', '42754', '541724', '1975-02-14 16:06:27', 'Deleniti animi voluptates debitis.', 'In quod ipsam omnis. Qui delectus id laboriosam. Non et sint quibusdam; veniam animi ullam nam nemo quam possimus.'),
('3a10e21a-7b72-4e25-e512-ebbbcf065d1c', '56780', '302714', '1971-02-15 16:53:57', 'Ut facilis aut sit iure labore.', 'Eos minus a. Corporis quo dolorem. Nihil at consequatur! Incidunt voluptatem perspiciatis. Quia enim vel; sint sequi doloribus. Perspiciatis natus nesciunt.'),
('3be7f5cf-7438-6ede-83c3-d3ede7a72094', '32786', '048993', '1996-09-25 14:09:00', 'Ipsam quasi ut et a rerum.', 'Harum autem accusamus; quo sunt aut. Assumenda quos voluptatem. Praesentium vel qui; sed qui autem. Qui nostrum et. Dolorem soluta et. Unde deleniti aut.'),
('3c1063e8-464b-245e-c9f8-494a84b910f4', '76947', '451627', '2005-04-29 23:58:17', 'Dolorum debitis necessitatibus ut.', 'Iusto libero aliquam perferendis quia tempora ea. Et quibusdam omnis? Officia quae voluptate at. Laborum a sit incidunt veniam assumenda autem! Autem beatae.'),
('3d7f2a35-42d8-229a-e429-16c01537719a', '81385', '932276', '1970-01-01 00:09:09', NULL, 'Id sit pariatur. Consectetur sit molestiae aut eveniet. Architecto recusandae ullam voluptas pariatur? Accusantium quos velit.'),
('3f93d93d-2236-468c-fd74-9471face0ab4', '67961', '937286', '1970-01-01 01:37:34', 'Eveniet et natus voluptatem eaque.', 'Ad aut soluta magni ut sit accusantium.'),
('405cd8be-1160-35ff-85c3-d3ede7a72094', '69402', '932276', '1976-05-27 18:29:31', 'Sint reprehenderit libero alias omnis.', 'Omnis cum facilis voluptate nobis. Provident quaerat voluptatem. Libero velit ut non minus commodi ut! Voluptatibus inventore quia. Est tempore doloribus!'),
('437ca88e-2dde-4dea-b3ad-cb989f2177da', '63249', '634381', '1970-01-01 02:03:38', 'Tempore et eum animi exercitationem.', 'Vitae aperiam natus. Non sed inventore. Facere voluptatum neque. Consequatur dicta voluptatem. Molestiae quasi voluptatem; ratione ex quibusdam. Placeat ut.'),
('43871870-33a0-7343-0a28-030d4265475f', '85767', '822183', '1979-11-15 01:02:46', 'Magnam aut commodi ut aut et.', 'Minima qui perspiciatis. Aperiam odit quis. Provident velit nemo. Magni sed quia! Dolor omnis sit. Facere ut quod. Laudantium ea reprehenderit!'),
('450bb33b-2a2d-352b-e412-ebbbcf065d1c', '76337', '795705', '1994-10-01 10:42:35', 'Sunt nisi aliquam dolores error quod.', 'Consequuntur eligendi sit; velit soluta officia. Ipsa dignissimos molestias; placeat nihil cum. Dolores voluptatem sed. Et sequi et. Maiores dolores nemo? Ad.'),
('4628f6df-6e4d-4115-fb74-9471face0ab4', '00071', '329326', '1983-03-30 13:08:16', 'Quibusdam neque aliquam.', 'Sunt deserunt est expedita. Ullam nam hic unde omnis ut omnis! Adipisci necessitatibus voluptatem praesentium sint est voluptate.'),
('46fdb2bd-631c-3043-8cc3-d3ede7a72094', '51321', '565998', '2013-03-12 06:07:00', 'Totam quasi dolores natus odit.', 'Nihil rerum excepturi beatae delectus dolore omnis. Pariatur nisi quibusdam; modi voluptas at. Dolor et iusto. Id soluta et. Praesentium vel quaerat...'),
('471530a2-44fe-7395-b1ad-cb989f2177da', '39121', '093376', '1970-01-01 00:08:53', 'Qui error et aliquam officia quam.', 'Aut sunt delectus. Delectus voluptatem molestias fugiat! Maiores ipsum magni nam et vel. Et dolorem illo! Officia doloremque unde.'),
('4792e258-7219-77c2-f2dc-845b5dcdad45', '65749', '762300', '1976-01-16 13:28:08', 'Commodi ea nihil dicta non.', 'Accusamus optio qui. Autem suscipit et? Incidunt quasi optio. Et est unde. Beatae consequatur sit. Error cum ipsam. Corporis debitis magni. Ducimus tempore.'),
('48cb1e24-1d08-5f4f-e729-16c01537719a', '03129', '335893', '1982-08-05 21:55:13', 'Est consequatur et non ullam.', 'Eum sed vel enim quod cum. Sed cum unde ea neque. Sed ut distinctio error tempora unde? Fugit aut quae.'),
('4bbd29f0-5a04-602f-0175-9471face0ab4', '13804', '715705', '2010-08-19 20:36:27', 'Explicabo ab necessitatibus nemo.', 'Ea sit et. Necessitatibus ut molestiae! Suscipit necessitatibus fugit. Temporibus dolor impedit! Sed aut molestias. Expedita ducimus eius! Numquam.'),
('4c630b2d-7305-5ed5-0075-9471face0ab4', '49471', '640212', '1977-04-06 10:32:06', 'Repellat rerum porro aut qui deserunt.', 'Laudantium accusantium enim velit. Unde et quo cumque dolorum. Voluptatem non eius. Aut cum enim. Non rerum nihil. Quidem voluptatem omnis.'),
('4cf2dd43-5f4b-71b6-e212-ebbbcf065d1c', '30199', '451627', '1992-09-28 13:54:03', 'Aut qui recusandae maxime magnam.', 'Qui harum officiis. Unde repellendus beatae cumque. Nulla nihil quo rerum consequuntur dolorem? Ea alias omnis quos sit maxime. Laudantium adipisci culpa...'),
('4d1ff813-25eb-7909-cbf8-494a84b910f4', '61226', '869646', '1970-10-13 02:44:03', 'Deleniti recusandae sed tempora.', 'Laudantium aliquam culpa exercitationem voluptatum rerum ut. Deserunt id harum? Commodi veritatis nulla! Voluptatum est ea.'),
('4f91dc93-6918-692d-87c3-d3ede7a72094', '62852', '615247', '1970-01-01 00:00:02', NULL, 'Autem repellendus natus dignissimos impedit qui unde.'),
('503e0367-3ef6-188b-7178-553c0310877a', '69296', '857855', '1970-01-01 00:35:58', 'Vel voluptatem dolores voluptatem.', 'Placeat recusandae enim. Consequatur rem aut. Non omnis iste. Enim qui molestias. Quas commodi qui; eos qui eveniet. Dignissimos distinctio officia. Labore.'),
('527e8338-572e-1c59-e929-16c01537719a', '65044', '698091', '2000-05-29 23:03:47', NULL, 'Voluptatem cupiditate est. Nobis qui itaque? Iusto expedita nobis; illo asperiores inventore? Temporibus et est. Animi aperiam reiciendis? Quos iure aperiam.'),
('5285286f-749f-52c2-8bc3-d3ede7a72094', '94796', '878400', '2004-05-27 19:02:02', 'A corporis qui minus cumque velit ex.', 'Ut eveniet repellendus nam. Error similique odio est rem qui et! Architecto alias provident recusandae et quod natus.'),
('54a11339-4527-4d4c-ccc7-6c0aeb6ec302', '45399', '989203', '1991-07-21 08:00:03', 'Ut dolor quia.', 'Qui consequatur assumenda et inventore. Natus sit illum fugit! Beatae magnam aut. Omnis tempora voluptatem! Et laboriosam enim. Maxime tempore quo.'),
('54b663bd-1ea7-5260-f0dc-845b5dcdad45', '75456', '849082', '1974-06-26 11:16:29', 'Sit sunt sit pariatur qui repudiandae.', 'Vel temporibus qui non fugit. Et sit accusantium voluptatem ea labore nihil. A libero rerum dicta architecto obcaecati quisquam...'),
('5626a583-2f8f-4518-e229-16c01537719a', '67808', '093376', '1998-09-07 15:03:30', 'Suscipit accusantium omnis vero alias.', 'Illum quasi quam. Voluptatem itaque quas. Aut commodi ut! Blanditiis non eos. Quisquam perspiciatis quia. Non suscipit assumenda! Qui inventore odit.'),
('5835bc5a-49a5-3026-86c3-d3ede7a72094', '67222', '208300', '2008-05-16 13:19:31', 'Quidem aspernatur voluptatem eius.', 'Dicta cumque quo. Ratione ad et. Incidunt rerum fugit. Voluptas facere vel. Perspiciatis excepturi quisquam! Iure ad voluptatum. Voluptas eum dolores.'),
('58452b3e-773c-3047-7478-553c0310877a', '23634', '070628', '1991-03-11 02:51:07', 'Et iste ipsam inventore tenetur.', 'Non eum obcaecati maxime voluptates odit consequatur. In iure quia ut tempora aut adipisci.'),
('5a6d957e-29e7-4a12-84c3-d3ede7a72094', '66073', '586550', '2010-03-02 22:47:39', 'Sit minus debitis libero reiciendis.', 'Quidem eum repudiandae voluptatem impedit excepturi. Tempora eum incidunt rerum. Id qui assumenda? Error necessitatibus aut illum! Quia ut quasi iusto omnis.'),
('5cdf3d20-7ceb-6ff6-89c3-d3ede7a72094', '49959', '715705', '1975-01-19 07:01:03', 'Ipsam dolorem ut vel velit placeat.', 'Sed quo quod. Earum quasi non quaerat porro! Possimus commodi voluptatem iste iure voluptas. Animi ex voluptatem quidem voluptatem obcaecati ab! Error.'),
('5e012159-7981-6022-b9ad-cb989f2177da', '21742', '095746', '1974-01-30 10:40:52', 'Ipsam suscipit omnis incidunt.', 'Inventore ad recusandae. Esse omnis perspiciatis voluptatem eos ab. Sit voluptas error; cupiditate esse et. Fuga voluptatem voluptate? Ab sed nisi.'),
('5e80a452-2a94-3680-cec7-6c0aeb6ec302', '52943', '487981', '1970-01-01 00:15:57', 'Dignissimos assumenda numquam quia.', 'Officiis adipisci cumque unde velit voluptatem quibusdam.'),
('5f620c85-55d9-7632-6a78-553c0310877a', '43325', '878184', '2012-03-23 01:41:44', 'Doloribus magni veritatis temporibus.', 'Dicta et aspernatur. Optio enim qui! Explicabo ipsa recusandae. Tempora pariatur quo! Sit similique nemo. Similique aliquid ea. Error esse expedita. Nam.'),
('5f7b48e5-16f9-2f2f-ecdc-845b5dcdad45', '96161', '422763', '1996-07-21 10:11:14', 'Numquam harum error atque sed.', 'Quia aut commodi. Est aut iure delectus iusto. Animi non perspiciatis quis ut quia! Quaerat numquam et quia blanditiis voluptas eius. Voluptatem fuga et...'),
('616b4521-3576-5c0c-7278-553c0310877a', '64344', '474826', '1978-11-01 11:57:59', 'Error iusto nostrum.', 'Fuga similique voluptatem. In ullam dolorem. Non debitis quae ea inventore? Molestiae soluta sapiente omnis porro dolor voluptate.'),
('61724bba-285f-3a43-7578-553c0310877a', '66765', '782066', '1970-01-01 00:00:39', 'Molestiae autem quia id.', 'Et ad voluptatem autem dolorum nemo nihil.'),
('62452262-64e1-492b-0728-030d4265475f', '93025', '804601', '1999-03-01 16:50:35', 'Nulla laborum corrupti fuga omnis.', 'Omnis eveniet eaque velit in architecto. Sit vitae ipsa a et! Iure eius sit et id. Molestias totam et tenetur.'),
('626218bf-7539-37c4-e629-16c01537719a', '60255', '095746', '2008-04-18 04:29:51', 'Sunt sed temporibus repellendus.', 'Aut nemo aliquid. Est eos rem. Repellendus quasi nobis. Dolores voluptas corrupti. Voluptatem ut odio. Dolor eligendi error. Aut facere possimus! Ipsam odio.'),
('62d5360d-27b8-1ff8-cdc7-6c0aeb6ec302', '20367', '687405', '2011-11-26 15:36:20', 'Rem delectus amet qui nemo eos fugit.', 'Non unde animi dolores. Perspiciatis omnis quaerat. Placeat aspernatur qui architecto aut. Numquam ea porro. Sed omnis ut. Sed dolor enim.'),
('64982a26-5d67-270d-b5ad-cb989f2177da', '20454', '715944', '1989-12-16 03:21:32', 'Et aspernatur error optio enim qui.', 'Dolore sit sunt; possimus rerum suscipit. Dolorem aut architecto; aut ad perspiciatis. Et laboriosam id. Laudantium voluptas sequi. Sit expedita excepturi.'),
('6743babc-319b-3256-7078-553c0310877a', '64077', '937286', '1990-11-23 18:24:13', 'Vero nihil cum ex blanditiis fuga.', 'Sed quibusdam qui. Veniam quia neque culpa qui a unde. Illum ratione et illum maiores veritatis possimus.'),
('67d2e2b2-6db2-39a5-cdf8-494a84b910f4', '45326', '937286', '2017-04-01 15:13:03', 'Quae quisquam autem maiores sequi.', 'Incidunt alias nesciunt. Eum omnis voluptatibus. Sint voluptas veniam. Voluptatem ut voluptatum. Enim facilis amet; molestias voluptatem at. Omnis voluptas.'),
('68299245-1769-51e3-8ac3-d3ede7a72094', '06442', '795705', '1982-05-25 07:18:40', 'Et harum eius est voluptatem nesciunt.', 'Voluptatibus accusamus rerum. Consequuntur nemo voluptatem! Officia harum vel. Ipsam tempora maxime. Quod iste error. Ea reprehenderit itaque. Labore nemo.'),
('6e52efd1-769c-2ea0-eedc-845b5dcdad45', '91056', '857855', '1970-01-01 02:37:34', 'Aut sunt delectus qui illum autem in.', 'Modi ab est aspernatur qui. Minus a sit eos; iure nisi sit mollitia autem error. Sit quia tempora! Nostrum sed expedita.'),
('6efdd59f-6a51-5c23-e812-ebbbcf065d1c', '62308', '524936', '1986-01-13 23:47:25', 'Dolores nemo sit omnis et in animi.', 'Et enim et ducimus soluta et magnam.'),
('7256e784-793a-380a-ff74-9471face0ab4', '80227', '541724', '1970-01-01 00:01:09', 'Cupiditate sint doloribus ullam qui.', 'Est mollitia at. Vel tempore temporibus! Omnis fuga voluptates. Rerum eos praesentium. Voluptatem aut dignissimos? Similique laboriosam iste; soluta.'),
('72d5a42d-1de5-5146-6e78-553c0310877a', '60928', '629760', '1992-04-21 04:05:13', 'Tempore voluptatem doloremque.', 'Natus nisi beatae molestias maiores temporibus voluptatem. Magni labore perspiciatis! Veritatis sapiente blanditiis ut velit enim. Perspiciatis hic eum.'),
('73df2fb4-4efc-4196-cff8-494a84b910f4', '53526', '884504', '1972-12-25 09:58:17', 'Ut delectus nihil provident.', 'Beatae totam rem. Suscipit fugit sunt. Libero et culpa. Expedita autem accusantium. Perferendis consequatur repellendus; dolor accusamus amet. At sequi alias.'),
('7521d1ba-3c9c-4bf9-e912-ebbbcf065d1c', '21916', '541724', '1970-01-01 00:00:03', NULL, 'Id aut qui. Est blanditiis ut! Placeat laborum dolor. Incidunt et laboriosam. Est laudantium aspernatur. Minima autem unde; esse delectus necessitatibus. Ut!'),
('76a8af11-194b-5e74-7378-553c0310877a', '53232', '451627', '1982-06-09 05:48:43', 'Alias voluptate consequatur.', 'Rerum optio provident. Et adipisci amet ut natus veritatis! Quisquam quia quam? Sunt repellendus velit. Eum facilis delectus. Dicta numquam tempore!'),
('7748d729-74bf-3c52-ccf8-494a84b910f4', '71828', '286669', '1970-01-01 00:01:24', 'Consectetur et expedita velit.', 'Debitis provident ratione. Fugiat sit aliquam. Qui iste voluptate. Quia pariatur iusto! Tempore adipisci eligendi. Delectus aut in? Labore est non. Totam.'),
('78d3e2b4-1c61-2d4c-f3dc-845b5dcdad45', '42590', '222599', '1994-10-19 16:29:28', 'Praesentium quia nesciunt quae quia.', 'Eaque vel porro voluptates sunt. Voluptates omnis quia ad consequatur debitis. Sed ullam enim. Dolorem totam dolorem ad? Molestiae ut et.'),
('79e2659b-1e78-7dc9-0528-030d4265475f', '35066', '219404', '1970-01-01 00:00:06', NULL, 'Consequatur dolor ullam. Aspernatur et molestias. Consequatur dignissimos assumenda! Consequatur aspernatur inventore? In architecto accusantium! Adipisci.'),
('7a04d0df-4c77-6ae7-8dc3-d3ede7a72094', '73086', '517692', '1986-04-30 17:37:38', 'Et natus est.', 'Sed neque perspiciatis. Quia et numquam; sunt officiis reiciendis. Aspernatur exercitationem sed; et consequuntur unde. Ut consequatur et. Eius reiciendis.'),
('7a0b757e-41eb-4df6-c6f8-494a84b910f4', '71802', '231168', '1993-02-18 09:09:26', 'Error rerum aut odit sit quos nulla.', 'Error nesciunt illum. Vel ad dolorum. Voluptas soluta fugit; distinctio fugit vel? Eum quia et. Omnis sit expedita. Natus minus nobis!'),
('7b01963d-2bc0-5b15-82c3-d3ede7a72094', '35930', '849082', '2007-03-05 03:24:25', 'Id totam itaque ad.', 'Placeat rerum doloribus; animi voluptates debitis. Expedita molestiae soluta; rem veritatis repudiandae. Atque quidem aspernatur. Amet omnis at? Explicabo.'),
('7b9c3016-2ff6-283a-0c28-030d4265475f', '03470', '404620', '1970-01-01 00:00:45', NULL, 'Ut doloremque alias. Dolor et nobis. Explicabo ut et. Perspiciatis consequuntur non. Exercitationem dolorem aperiam. Voluptatem vel totam. Aliquam deleniti...'),
('7d059f54-6028-5fac-baad-cb989f2177da', '57447', '947426', '2000-03-27 03:28:47', 'Rerum et labore fuga et odit.', 'Non et veniam voluptatum ut quisquam natus. Assumenda rerum voluptatem placeat voluptatem quaerat. Nemo ex nisi exercitationem explicabo! Ipsum voluptatem.'),
('7dcdc0cb-212f-604b-c7f8-494a84b910f4', '48859', '634381', '1970-01-01 02:05:18', 'Dolores illo omnis ut et.', 'Natus saepe animi; impedit totam beatae. Dolores nemo sit? Blanditiis hic dolor. Qui cumque enim. Sed fugit hic. Voluptatem ut nobis. Et non ullam.'),
('7e73697c-79be-7250-fe74-9471face0ab4', '28523', '891693', '1970-01-01 00:16:16', 'Cumque temporibus dolorem sed.', 'Rerum rem et ut et eos ea. Quo et rerum et neque sint unde!'),
('7e760549-7d28-2394-c8f8-494a84b910f4', '80179', '134115', '1979-03-31 19:00:11', 'Corrupti aut et id nam id error.', 'Totam quasi dolores. Blanditiis nostrum temporibus. Molestias vitae ex. Sed dolorum sit. Unde sapiente voluptatem! Ad aut amet. Et sit reprehenderit. Tenetur?');

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE `point` (
  `guid` char(36) NOT NULL,
  `studentID` char(9) NOT NULL,
  `midterm` float NOT NULL,
  `final` float NOT NULL,
  `classID` char(6) NOT NULL DEFAULT ''
) ENGINE=InnoDB AVG_ROW_LENGTH=819 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `point`
--

INSERT INTO `point` (`guid`, `studentID`, `midterm`, `final`, `classID`) VALUES
('64a59a25-2488-54b0-f6b4-c8af08a50cbf', '20182897', 3, 5, '422763'),
('674934cc-42cf-20cf-1d4a-aea48a10ed18', '20208643', 3, 7, '328100'),
('34bd2cef-5026-567c-3b71-153b37881afe', '20196044', 4, 7, '858204'),
('43a6bdf5-1b6b-451b-3695-2c566fa88632', '20197286', 3, 7, '520146'),
('438598e2-2574-4fc8-2626-978952f080e4', '20173235', 3, 6, '404620'),
('2b5f15b9-17d9-57e8-1e4a-aea48a10ed18', '20208643', 5, 7, '368767'),
('174b8763-2707-7cb1-3c71-153b37881afe', '20176502', 4, 7, '629760'),
('48d04691-671b-2f98-de69-4afe230d73a5', '20193776', 5, 6, '318603'),
('6fcbca4a-7938-4339-51cb-b8d37b68af4d', '20200310', 4, 6, '422763'),
('271a41be-5739-6088-3795-2c566fa88632', '20171413', 3, 7, '679513'),
('3052c754-3516-667a-3980-3a2297d01534', '20179600', 5, 6, '003410'),
('2a3cacd6-1a30-6760-3769-9f77bda75690', '20209478', 5, 6, '565998'),
('536f0d7b-6fd5-2bb9-52cb-b8d37b68af4d', '20187801', 5, 7, '390296'),
('7fc94edc-2827-7327-1f1e-21c6d80fbd76', '20176502', 5, 7, '509491'),
('3c91bd67-6353-1edc-1f4a-aea48a10ed18', '20200310', 3, 7, '223300'),
('3c39055f-64c2-11b9-f7b4-c8af08a50cbf', '20196727', 5, 6, '474826'),
('7e336cda-7f4c-3a8e-3895-2c566fa88632', '20202751', 5, 7, '698091'),
('794ca02a-1314-6ec3-df69-4afe230d73a5', '20177042', 3, 7, '714621'),
('188263d8-1426-370e-3869-9f77bda75690', '20196540', 3, 6, '989203'),
('79c13594-4781-1b7c-204a-aea48a10ed18', '20196540', 5, 6, '910841'),
('3ef40874-7653-5c65-2726-978952f080e4', '20207522', 4, 6, '300364'),
('1ef50b1c-1203-7f02-3a80-3a2297d01534', '20188017', 4, 5, '509491'),
('3679a94f-304b-6e8d-53cb-b8d37b68af4d', '20187460', 5, 7, '782066'),
('3cf1ead4-291e-575d-3b80-3a2297d01534', '20193776', 5, 5, '398695'),
('70edc7b9-702f-70b2-3d71-153b37881afe', '20196461', 4, 5, '679513'),
('131cd73b-3657-43f5-201e-21c6d80fbd76', '20194898', 3, 5, '979535'),
('16fc94ab-327e-4d3a-3995-2c566fa88632', '20191273', 5, 5, '502891'),
('1aa330a8-4e48-7daf-214a-aea48a10ed18', '20203722', 3, 5, '478644'),
('751d9b3c-4512-268d-2826-978952f080e4', '20181677', 4, 7, '447862'),
('4569f996-12b0-64d5-54cb-b8d37b68af4d', '20194898', 4, 7, '451627'),
('724a3873-137c-6563-3a95-2c566fa88632', '20174839', 4, 5, '750455'),
('67408602-4805-48a7-224a-aea48a10ed18', '20183848', 4, 5, '328100'),
('36c45179-1fc2-27b2-3b95-2c566fa88632', '20208643', 5, 7, '795705'),
('11db07ea-3a3f-169b-3c80-3a2297d01534', '20183848', 5, 6, '762300'),
('2cca9dd5-1228-294d-3e71-153b37881afe', '20183848', 3, 5, '782066'),
('6d5cc407-7288-2823-55cb-b8d37b68af4d', '20207522', 3, 6, '724021'),
('492c33d2-2e7e-39f3-2926-978952f080e4', '20199492', 4, 6, '762300'),
('48ecd789-755b-3d53-3f71-153b37881afe', '20201066', 3, 7, '635550'),
('228b85f5-52b1-2110-e069-4afe230d73a5', '20184037', 3, 7, '451627'),
('7a7d008f-16e6-64f9-234a-aea48a10ed18', '20199492', 5, 5, '932276'),
('44eaf230-462a-493b-3d80-3a2297d01534', '20184118', 5, 7, '804601'),
('6acf37bb-5f8e-320e-3969-9f77bda75690', '20203749', 5, 6, '878184'),
('69b684a9-3962-48e7-56cb-b8d37b68af4d', '20186999', 5, 5, '370580'),
('2a4dcb61-3cde-2171-2a26-978952f080e4', '20179600', 4, 7, '782066'),
('5e95cda4-3f52-314f-f9b4-c8af08a50cbf', '20196461', 3, 5, '152297'),
('5c9053fa-24e2-218e-e169-4afe230d73a5', '20187801', 3, 6, '979535'),
('1eb42cb0-2796-7c6b-4071-153b37881afe', '20181723', 3, 7, '790908'),
('64a92470-6127-1432-211e-21c6d80fbd76', '20179107', 3, 7, '700762'),
('6fe7520c-5758-2461-3a69-9f77bda75690', '20183211', 3, 7, '210880'),
('180dd722-49a7-2b93-fab4-c8af08a50cbf', '20207080', 5, 6, '679513'),
('236283fa-1c9f-2733-221e-21c6d80fbd76', '20195936', 5, 5, '842355'),
('13145f26-13f8-7f78-3e80-3a2297d01534', '20176502', 5, 7, '804601'),
('25d65c3f-4a6c-3a01-3c95-2c566fa88632', '20181723', 3, 7, '404620'),
('7f2f326b-4385-3beb-244a-aea48a10ed18', '20190829', 5, 5, '167930'),
('6d3b9bea-50e2-3fe2-3d95-2c566fa88632', '20179600', 4, 6, '878184'),
('2af78bcb-2bab-51c2-57cb-b8d37b68af4d', '20193776', 3, 6, '714178'),
('3e805329-4dde-7c42-3f80-3a2297d01534', '20206624', 3, 7, '573874'),
('23d3e425-72b1-1755-254a-aea48a10ed18', '20182897', 3, 6, '210880'),
('406501b7-7932-293c-3e95-2c566fa88632', '20207976', 3, 6, '979535'),
('1f818a24-3e97-339a-3b69-9f77bda75690', '20183211', 5, 5, '390296'),
('4efb4721-715b-2d1c-264a-aea48a10ed18', '20198835', 3, 5, '979535'),
('2cf45a23-4a27-72fb-3f95-2c566fa88632', '20207522', 5, 6, '937286'),
('16901daa-2657-688d-274a-aea48a10ed18', '20193093', 4, 6, '932276'),
('128c9c31-1636-6547-e269-4afe230d73a5', '20190303', 5, 5, '858204'),
('176a9101-657e-3593-231e-21c6d80fbd76', '20173489', 4, 7, '329326'),
('77f9db4f-5327-23f3-2b26-978952f080e4', '20186999', 5, 6, '517692'),
('42e76f39-5529-3e7f-e369-4afe230d73a5', '20189293', 3, 5, '937535'),
('44edba69-403e-3174-4171-153b37881afe', '20172029', 4, 5, '586550'),
('534b8747-70b5-36a6-58cb-b8d37b68af4d', '20188697', 5, 7, '231168'),
('38d0c8d3-7e6b-7ced-4095-2c566fa88632', '20182281', 4, 5, '390296'),
('59d2ec76-7794-6092-284a-aea48a10ed18', '20197286', 5, 6, '565998'),
('63605f9a-664d-1c51-fcb4-c8af08a50cbf', '20192288', 5, 5, '724021'),
('2997b570-182c-1e2e-2c26-978952f080e4', '20208961', 5, 6, '176457'),
('59c8e347-352c-11cc-4195-2c566fa88632', '20201066', 5, 5, '208300'),
('5330491b-2e0d-76e5-294a-aea48a10ed18', '20188017', 4, 7, '715705'),
('2510011f-7734-4a66-3c69-9f77bda75690', '20201066', 4, 7, '003410'),
('17550e17-585d-701d-fdb4-c8af08a50cbf', '20195538', 3, 5, '520146'),
('122a77f9-5685-12de-4080-3a2297d01534', '20193801', 3, 6, '576541'),
('6558b3ce-3021-5467-4295-2c566fa88632', '20184703', 5, 6, '404620'),
('43c28052-24df-5238-2a4a-aea48a10ed18', '20205747', 4, 6, '724021'),
('1cd29b36-735e-4507-4395-2c566fa88632', '20173310', 4, 7, '795705'),
('2bd742e7-2f5a-3eae-241e-21c6d80fbd76', '20193801', 3, 7, '878184'),
('42950a9c-2cfa-3933-4271-153b37881afe', '20173235', 3, 7, '208300'),
('153ab8dd-24df-3392-e569-4afe230d73a5', '20202751', 5, 5, '603823'),
('4abe5367-730a-5742-59cb-b8d37b68af4d', '20174990', 4, 7, '687405'),
('3e1a01ba-4a49-2570-2d26-978952f080e4', '20204676', 3, 7, '634381'),
('4511c5e9-17d7-743e-2b4a-aea48a10ed18', '20171413', 4, 7, '979535'),
('15b74345-3676-3005-feb4-c8af08a50cbf', '20195936', 3, 6, '615247'),
('26e66448-44a8-39c1-e669-4afe230d73a5', '20200361', 4, 5, '635550'),
('5cf37f24-5c9d-49a9-4371-153b37881afe', '20201481', 3, 7, '869646'),
('5fc77644-30f7-78aa-3d69-9f77bda75690', '20184037', 4, 5, '300364'),
('29318abd-6a6c-7a98-ffb4-c8af08a50cbf', '20200610', 4, 7, '603823'),
('3a8da253-7acf-2c70-2e26-978952f080e4', '20170262', 3, 5, '922286'),
('4b7e1819-5124-575e-4471-153b37881afe', '20188677', 5, 7, '635550'),
('42784277-1650-434a-251e-21c6d80fbd76', '20177919', 4, 5, '822183'),
('3762edc1-6275-6d66-e769-4afe230d73a5', '20196044', 5, 6, '517692'),
('4c14b14c-7023-7881-2f26-978952f080e4', '20200310', 3, 5, '932276');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `guid` char(36) NOT NULL,
  `studentID` char(9) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` char(3) DEFAULT NULL,
  `phoneNumber` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `studentClassID` char(6) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=819 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`guid`, `studentID`, `password`, `fullName`, `birthday`, `gender`, `phoneNumber`, `email`, `studentClassID`) VALUES
('11643064-22fb-7e14-1399-04b3a3d51ef2', '20190303', '3', 'Erasmo Abel', '2022-06-20', 'M', '1834664696', 'Thornburg757@example.com', '49037'),
('11fbda18-5d9f-396c-1299-04b3a3d51ef2', '20202751', '93O5A829B0', 'Wilfredo Southern', '2015-10-24', 'M', '0021608394', 'Asbury@example.com', '42591'),
('14ee894d-495a-2395-1944-cfd00e0a9b3b', '20189116', 'JU', 'Major Pitts', '2022-05-24', 'F', '0919381824', 'GirouxA9@nowhere.com', '49037'),
('15b4ab0a-3b8f-6f6f-2a8f-4d82f3a13455', '20179805', 'HWAW9C5BW', 'Ali Darling', '2022-02-17', 'M', '3874204959', 'Abernathy797@example.com', '31862'),
('15f0f2b5-5e6d-6d8a-df78-cf6d4dd5c4a3', '20208961', '39A01J', 'Floyd Simon', '2014-04-01', 'M', '5020887447', 'Denice_Reich@example.com', '01551'),
('15f49a4f-6117-2234-1544-cfd00e0a9b3b', '20204676', 'E', 'Clayton Almeida', '2021-05-07', 'F', '2153574363', 'Violeta_Abel@example.com', '70503'),
('1876fb44-59e4-7596-dcb8-94f47731937d', '20200310', '0HL', 'Jude Conley', '2022-10-15', 'M', '9056638499', 'Ewing@example.com', '09807'),
('18bce813-54a9-6649-f8c3-4d1f326d5ebd', '20209478', '493', 'Joana Abbott', '2017-10-02', 'M', '1325573882', 'CaroleAcker@example.com', '68440'),
('19808d63-3353-4f60-1a99-04b3a3d51ef2', '20208643', 'V8', 'Fritz Marr', '2012-03-25', 'M', '5687264730', 'AnamariaFreitas@example.com', '45302'),
('1beedfca-2f14-1d94-8865-390639088226', '20177919', '54', 'Oren Beltran', '2021-10-04', 'F', '2676592968', 'Frame75@nowhere.com', '45948'),
('1e3c96c9-1471-23e0-8765-390639088226', '20187460', 'ZS7FKB6', 'Nelia Garmon', '2021-01-18', 'M', '0366910943', 'Clancy193@nowhere.com', '07607'),
('1fee0bc4-513a-2c25-004e-8601bf3d85d8', '20187455', '75769RPRJJ', 'Kerry Kitchens', '2015-07-10', 'F', '4392362051', 'Davis372@example.com', '59555'),
('21b4d2b7-4eb1-4254-1899-04b3a3d51ef2', '20184118', '86', 'Donnell Haywood', '2013-04-06', 'F', '5147757974', 'Mata69@example.com', '09807'),
('21db52f7-79ad-469d-731a-bb545470e80c', '20171413', 'Z85LG1911', 'Huey Kaiser', '2021-10-22', 'F', '7261139554', 'Langlois@example.com', '05361'),
('2203f09a-3751-72c6-8e65-390639088226', '20172029', 'N', 'Hayley Martz', '2021-01-22', 'M', '8562672775', 'ybbl7082@example.com', '63545'),
('22594698-4923-5add-1999-04b3a3d51ef2', '20201063', 'SV7362CUN1E5JH2', 'Carrie Randle', '2013-09-08', 'M', '8137631074', 'Wade_KAcevedo71@example.com', '25813'),
('258edc27-45f1-4975-fbc3-4d1f326d5ebd', '20179125', '387', 'Santo Meade', '2014-03-23', 'M', '8744856653', 'Rigoberto_B.Ackerman@nowhere.com', '60928'),
('25a6a745-28ef-12a1-328f-4d82f3a13455', '20174990', '4Z', 'Zonia Bader', '2013-05-12', 'M', '6839110918', 'Abraham25@nowhere.com', '25376'),
('27df14de-61da-4c3a-ddb8-94f47731937d', '20179600', '0N8W', 'Dorian Jarrett', '2017-11-05', 'F', '8413035535', 'mdcxmjf2@example.com', '76114'),
('28369db6-6a7b-25be-e378-cf6d4dd5c4a3', '20185889', 'JR', 'Fannie Nevarez', NULL, NULL, '2243468887', NULL, NULL),
('2adb98f6-2266-1c69-751a-bb545470e80c', '20201481', '034TT', 'Ellis Mowery', '2021-04-08', 'F', '8887061439', 'Abbott396@example.com', '92462'),
('2dfe3bbf-37e6-1b09-1799-04b3a3d51ef2', '20182897', '2CG85', 'Carli Antonio', '2012-04-07', 'M', '5957381716', 'Alvarado@example.com', '09807'),
('2e41b1ec-1c05-1bc6-dab8-94f47731937d', '20190829', '0SQ2H', 'Abraham Cheney', '2012-01-03', 'M', '3197348276', 'RollerO1@example.com', '71893'),
('2e7dea28-7218-5290-064e-8601bf3d85d8', '20206624', 'LL5', 'Mauro Alger', '2021-07-25', 'F', '4577949630', 'AdalbertoLemon@example.com', '45495'),
('2ff554db-1bde-573a-701a-bb545470e80c', '20183948', '5YV', 'Bruna Morales', '2015-10-09', 'F', '1958184604', 'Kelly.Pinckney@example.com', '71867'),
('30d623f2-31cf-5d4c-f7c3-4d1f326d5ebd', '20206433', '9', 'Geoffrey Hammonds', '2021-04-22', 'M', '7196216346', 'pgatpfig_zooib@example.com', '71867'),
('32aea797-5520-7390-e3b8-94f47731937d', '20207976', 'WB9ICY', 'Alicia Lilley', '2022-08-22', 'M', '0995418894', 'KingFerrara@example.com', '13807'),
('332ce3a5-12cd-33ed-014e-8601bf3d85d8', '20206404', '7', 'Chong Donohue', '2019-07-18', 'M', '0240422613', 'Benjamin_Chapman@example.com', '72694'),
('33c6f0f4-3591-2c8e-1244-cfd00e0a9b3b', '20180200', 'T', 'Aubrey Boyce', NULL, NULL, '1012360963', NULL, NULL),
('33fad8ab-365a-2815-e078-cf6d4dd5c4a3', '20203722', '322N', 'Tomas Keyes', '2020-09-07', 'F', '5154161438', 'Clanton@example.com', '92422'),
('36b6bf67-351b-4b82-f903-13a65cc92c97', '20172126', '2B', 'Porfirio Abbott', '2012-01-09', 'F', '4839223256', 'Colbert36@example.com', '13807'),
('37347d52-7eeb-3f66-ff4d-8601bf3d85d8', '20170239', 'W8N7T9', 'Erick Angulo', '2022-08-29', 'M', '7527359082', 'HubertThomason@example.com', '20088'),
('395cfbe7-3cce-6eb8-f603-13a65cc92c97', '20194898', 'JG4', 'Jim Christiansen', '2022-08-19', 'M', '4357903508', 'xzymlsbo_tgza@nowhere.com', '91066'),
('3cc58118-77ec-59ed-711a-bb545470e80c', '20183674', 'JS', 'Russel Ritchey', '2021-03-06', 'F', '6714465062', 'Chang.Ferrell5@nowhere.com', '25376'),
('3d1c5555-3e10-56cf-2b8f-4d82f3a13455', '20209336', '3', 'Tamika Wampler', '2012-04-19', 'F', '6534145580', 'pspu1089@nowhere.com', '42721'),
('3d6207a1-1e88-4e30-f403-13a65cc92c97', '20191273', '9', 'Adan Walter', '2022-02-26', 'M', '9861530699', 'Elliot.Cannon@example.com', '75446'),
('3f744815-6989-3a7f-1b99-04b3a3d51ef2', '20173310', '8', 'Scotty Carl', '2015-10-27', 'F', '5209567983', 'EmmettNGrooms5@nowhere.com', '68570'),
('4015dcc0-372a-38f0-8b65-390639088226', '20190359', '67', 'Willard Sims', '2012-05-08', 'M', '4731925436', 'lprhgqei3216@example.com', '48760'),
('412d134d-6bed-125f-1644-cfd00e0a9b3b', '20192563', 'W7', 'Raina French', '2014-06-25', 'M', '7559576309', 'LynneMackay629@nowhere.com', '86989'),
('42ffc170-3a47-7d4f-fa03-13a65cc92c97', '20170262', '5DYUZ94U', 'Brunilda Wilder', '2020-01-21', 'F', '3508189869', 'BlakeAbraham73@nowhere.com', '13807'),
('44777721-49ea-3346-f703-13a65cc92c97', '20186999', 'ER2', 'Brittanie Quintero', NULL, NULL, '1004713886', NULL, NULL),
('45742fd1-27d5-4bf5-1c99-04b3a3d51ef2', '20202404', 'Y', 'Orval Valdez', '2016-06-29', 'M', '2410145104', 'AngelaXLemke5@nowhere.com', '72694'),
('4715a96a-6e8c-2acb-1499-04b3a3d51ef2', '20196044', 'HJGZ5', 'Hong Woods', '2022-02-15', 'M', '3607228250', 'FelicitasBowden@example.com', '72694'),
('499e3b76-34a8-76c9-1599-04b3a3d51ef2', '20174839', 'WBT763OFY0', 'Lucius Harlan', '2021-02-26', 'M', '5385532592', 'Leak@nowhere.com', '01752'),
('4a0e751e-750e-45c3-de78-cf6d4dd5c4a3', '20203749', '0', 'Moises Adame', '2015-11-20', 'F', '8113898805', 'EliasZPotts68@nowhere.com', '82506'),
('4b635464-5ee2-2a80-f103-13a65cc92c97', '20193776', 'C5F0', 'Neville Armenta', '2012-01-29', 'M', '5664570713', 'Robbie_Abel@nowhere.com', '57077'),
('4bfe55ba-57df-274c-1144-cfd00e0a9b3b', '20200610', '69VZ6H71U', 'Leonila Malone', '2012-02-28', 'F', '3547225943', 'Quincy_Angel@example.com', '18296'),
('4cb86274-1799-3522-e0b8-94f47731937d', '20188589', 'XL', 'Claude Cho', '2020-08-11', 'M', '0248641639', 'CoriAlbers77@nowhere.com', '87684'),
('4e3e50b0-55de-5c2f-2d8f-4d82f3a13455', '20176502', '37Q5D', 'Stanley Merritt', '2022-09-05', 'M', '9868969984', 'Will593@example.com', '87656'),
('4e53ab23-4fbb-7431-fe4d-8601bf3d85d8', '20198835', 'A9G3', 'Gale Echevarria', '2021-10-30', 'M', '1784903606', 'Valentine.Q.Meeks@example.com', '89303'),
('513249a5-2e3b-401a-8d65-390639088226', '20195149', '09C8H', 'Brock Altman', '2012-12-26', 'M', '8373901708', 'JimmyW_Downey@example.com', '91066'),
('5203528e-7767-5d0b-318f-4d82f3a13455', '20191943', '8OB', 'Mack Bruce', '2022-03-29', 'M', '3689120665', 'iili8187@nowhere.com', '27014'),
('53e82cd5-3e05-49e3-8f65-390639088226', '20205747', '4', 'Adolph Wallace', NULL, NULL, '8884683443', NULL, NULL),
('5ada22d3-3248-6596-6e1a-bb545470e80c', '20200983', '3W63', 'Vivienne Goodson', '2014-01-26', 'F', '2612357133', 'Chandler@example.com', '73964'),
('5aff2bf8-1ff5-6aec-074e-8601bf3d85d8', '20203382', '6M83', 'Haley Blount', '2015-01-19', 'M', '8121388341', 'Adkins822@example.com', '71162'),
('5bfe5648-65c2-7d1a-f203-13a65cc92c97', '20195538', 'D', 'Fredia Ames', '2022-11-11', 'F', '1600146843', 'TwannaAndrus@example.com', '57077'),
('5c1244db-1795-49df-741a-bb545470e80c', '20179078', 'L', 'Ernesto Willson', '2022-12-05', 'M', '9573446071', 'gevsvl9116@example.com', '30449'),
('5d1d6827-31a8-60f7-fc03-13a65cc92c97', '20196461', 'SVO130A', 'Sonny Tirado', '2014-12-05', 'M', '5276095928', 'Jimmy.Holiday@example.com', '13550'),
('5e272913-6cff-509f-d8b8-94f47731937d', '20193801', 'YA9F7', 'Loree Wooden', '2017-07-10', 'F', '4114259050', 'Geoffrey.IKnott9@example.com', '01551'),
('5e53ba73-42ef-659f-fb03-13a65cc92c97', '20189293', 'Y', 'Trena Guyton', '2012-10-29', 'F', '6840930015', 'Jenise.Upchurch@nowhere.com', '19425'),
('5e6695e2-5aad-3241-6c1a-bb545470e80c', '20184037', '1ZP9U', 'Yadira Villanueva', '2022-02-05', 'F', '4375733847', 'rmfz953@example.com', '43887'),
('5ecbef15-142f-60db-dfb8-94f47731937d', '20183848', 'R', 'Hipolito Obryan', '2021-09-27', 'M', '8653666291', 'Sweeney@nowhere.com', '81191'),
('5ef3b4c9-75c9-482e-1699-04b3a3d51ef2', '20188992', 'T33', 'Lisette Roberts', '2014-02-04', 'F', '9999940513', 'Fuchs@example.com', '30971'),
('5f2ba8ae-7bf9-6786-721a-bb545470e80c', '20192214', 'ZTL46190FE1292780WI', 'Amos Applegate', NULL, NULL, '1229598618', NULL, NULL),
('609d0ea1-772a-1b4a-8965-390639088226', '20195936', 'UIP7', 'Geraldo Camacho', '2012-01-10', 'M', '5142183936', 'Allen_Abel42@example.com', '54030'),
('60e226cb-63fb-4363-fc4d-8601bf3d85d8', '20207522', 'FK8X0', 'Merle Reiter', NULL, NULL, '6758649858', NULL, NULL),
('616a50e2-56d9-332c-308f-4d82f3a13455', '20173489', 'P', 'Abram Andrade', '2017-12-09', 'M', '5246144846', 'AdamBailey5@nowhere.com', '42721'),
('6207a9a7-3bf9-7288-8565-390639088226', '20185302', '3B3F1RQ', 'Britta Ayres', '2020-08-26', 'F', '2324803317', 'StuartZ.Kinder@nowhere.com', '63545'),
('621899dc-177b-65d2-dbb8-94f47731937d', '20201566', 'ZGU1P0', 'Cassondra Barlow', NULL, NULL, '0301950138', NULL, NULL),
('627b5063-3595-3219-1844-cfd00e0a9b3b', '20188697', 'CU1366', 'Clare Antonio', NULL, NULL, '1555798712', NULL, NULL),
('652655c9-69fb-24be-024e-8601bf3d85d8', '20200361', 'Q1', 'Donnie Grigsby', '2022-09-07', 'F', '8663266274', 'Kimball@example.com', '37716'),
('679a9983-33d4-7141-e1b8-94f47731937d', '20197534', 'FT', 'Denice Reich', '2012-03-26', 'M', '9350322359', 'ClemmieBecnel@example.com', '72694'),
('68069d95-76b4-1dce-f503-13a65cc92c97', '20207080', '9J', 'Fransisca Abraham', '2022-11-05', 'F', '9692273890', 'Michael96@example.com', '30449'),
('6830aac6-79ba-6cdc-8c65-390639088226', '20182281', 'RS55U94', 'Lorna Giroux', '2012-01-14', 'M', '6599739512', 'eipypwl8885@nowhere.com', '71867'),
('694c75bd-3b3d-2034-6f1a-bb545470e80c', '20182225', 'MI6', 'Keva Linkous', '2018-10-10', 'M', '9516196287', 'Broadway@example.com', '47291'),
('697be7ba-1738-6adf-298f-4d82f3a13455', '20187801', 'C26G8ZY3', 'Dorian Conaway', '2013-09-17', 'M', '3892817618', 'Bagwell@nowhere.com', '80185'),
('6d81a322-63f0-7270-6d1a-bb545470e80c', '20198967', 'JI', 'Bernard Creighton', '2020-07-28', 'F', '3854988873', 'Acker@example.com', '89303'),
('6ed2e962-178c-712c-fd4d-8601bf3d85d8', '20192288', 'Z', 'Francis Shannon', '2014-02-18', 'F', '6530042296', 'EltonStanton941@nowhere.com', '74561'),
('6f10885a-526e-7c3d-2f8f-4d82f3a13455', '20197286', 'G72', 'Alda Ames', '2022-11-27', 'F', '5769994074', 'MargeretAlonzo295@example.com', '88490'),
('6f2979d3-58ec-3673-f303-13a65cc92c97', '20188603', '63F', 'Doreen Luna', '2014-05-11', 'F', '4113137288', 'Alba@example.com', '86989'),
('71608749-38cc-653c-fac3-4d1f326d5ebd', '20184703', 'E', 'Carlos Broussard', '2022-08-27', 'M', '4164281104', 'cqmkzush_uyhthxiabl@nowhere.com', '73964'),
('72d87dc3-3c79-6b03-054e-8601bf3d85d8', '20188017', '3', 'Raul Acevedo', '2022-11-02', 'M', '4182248376', 'Wilfredo.Brunner6@example.com', '34195'),
('72d9da9b-1928-2cfb-1744-cfd00e0a9b3b', '20179107', 'R4', 'Chante Shuler', '2013-04-30', 'M', '6899249147', 'LuttrellZ@example.com', '54609'),
('73590e81-11f7-3cf4-e2b8-94f47731937d', '20196540', '2W9NJ', 'Ossie Davies', '2021-09-25', 'M', '1485035771', 'JamarAhrens@nowhere.com', '92422'),
('749718aa-2270-77cc-1444-cfd00e0a9b3b', '20199492', '84418Y88', 'Ward King', '2016-09-02', 'M', '9103957996', 'Rhea@example.com', '64166'),
('75a6e3de-4d9c-798c-e178-cf6d4dd5c4a3', '20173235', '9C', 'Sasha Angel', '2013-03-16', 'M', '3214273971', 'AlessandraPruett@example.com', '45948'),
('75de26bb-5a5c-467f-2c8f-4d82f3a13455', '20192210', 'E0M', 'Sherly Prewitt', NULL, NULL, '9212883892', NULL, NULL),
('7628c898-4362-7f2e-044e-8601bf3d85d8', '20186603', 'LH84E5D', 'Charita Fortier', '2013-09-20', 'M', '2929262633', 'Pence495@example.com', '54030'),
('76598eb0-20b1-664e-8665-390639088226', '20180279', '73L629L', 'April Fife', '2022-10-14', 'M', '8240474332', 'nlwccgg0@nowhere.com', '20435'),
('76753dc8-4972-2ecd-2e8f-4d82f3a13455', '20186102', '7YLLUL7S11', 'Adolfo Christenson', '2014-04-10', 'M', '1891107838', 'Pritchett172@example.com', '57077'),
('7854149a-5d85-4ae7-034e-8601bf3d85d8', '20193093', '57', 'Cecille Williamson', '2022-02-14', 'M', '2677625679', 'TamaraAmes7@example.com', '09807'),
('78f9adfc-16b6-5ed3-f9c3-4d1f326d5ebd', '20181677', 'I', 'Zelda Alvarez', '2022-03-08', 'M', '5297502151', 'Ahern16@example.com', '76114'),
('7943d7b8-2d13-622d-f803-13a65cc92c97', '20188677', '8O4P', 'Karol Dang', '2015-01-05', 'F', '9951675963', 'Emily_Betz@example.com', '26634'),
('79ea6ce2-1f5d-1880-8a65-390639088226', '20196727', '4', 'Francisco Carl', '2021-05-04', 'F', '6809575396', 'ArdenAlcorn@example.com', '27014'),
('7ac8b8cf-6a0d-6fa3-d9b8-94f47731937d', '20177042', 'BH77H4', 'Laurence Cottrell', '2022-09-14', 'F', '8581183222', 'Rutherford@nowhere.com', '86989'),
('7cd170a1-5bd8-4b7b-761a-bb545470e80c', '20201066', 'S', 'Denis Pritchett', '2019-02-12', 'M', '5730462779', 'PercyS.Alger@example.com', '06712'),
('7ce29e58-2f31-7668-deb8-94f47731937d', '20179746', '324', 'Bertram Abreu', '2014-08-31', 'M', '5932447813', 'Christie_AReedy34@example.com', '50590'),
('7cfa82aa-3fcb-550a-e278-cf6d4dd5c4a3', '20205307', 'LOU', 'Zula Lange', NULL, NULL, '6707255925', NULL, NULL),
('7de0e887-6ace-4435-1344-cfd00e0a9b3b', '20183211', '16N679N42QI98L', 'Garth Vasquez', '2013-12-12', 'F', '0332904892', 'Johnathon_Sander@example.com', '18296'),
('7ee83def-7a24-5f62-e4b8-94f47731937d', '20181723', '0D49F1', 'Beckie Loveless', '2012-02-29', 'F', '5927435071', 'Hein1@example.com', '05361');

-- --------------------------------------------------------

--
-- Table structure for table `studentclass`
--

CREATE TABLE `studentclass` (
  `guid` char(36) NOT NULL,
  `studentclassID` char(6) NOT NULL,
  `studentclassName` varchar(255) DEFAULT NULL,
  `nbOfStudent` int(11) DEFAULT NULL,
  `K` int(11) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=819 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentclass`
--

INSERT INTO `studentclass` (`guid`, `studentclassID`, `studentclassName`, `nbOfStudent`, `K`) VALUES
('114b715b-430f-74cd-d5c6-21b180c0988f', '42721', 'Antwan324', 48, 62),
('1242d680-4f02-3bbb-9d66-a58ab8ff47ca', '26634', 'Bachman1', 63, 61),
('131fafbd-7380-1764-f0db-93dede770727', '20435', 'Southern111', 57, 62),
('13a507d0-342d-6292-6de3-2ceaa9cf3765', '30090', 'Ohara2004', 45, 62),
('149b5163-45c5-1322-5c98-ae38c5379e4b', '88490', 'Cochrane1954', 42, 65),
('15c803b5-3d5d-6af0-a666-a58ab8ff47ca', '76114', 'Albina2008', 60, 65),
('161329cc-523a-6b93-57b6-94da9cd298ec', '93128', 'Emerita2008', 54, 63),
('174f1b87-34b0-4139-eedb-93dede770727', '34195', 'Jann2025', 60, 60),
('18c682ac-53b8-1398-d990-152dfadf6d0d', '87684', 'Dierdre1972', 58, 64),
('1909378c-24a6-4883-d590-152dfadf6d0d', '73964', 'Elizbeth2020', 52, 62),
('193ee03f-15cd-70e7-bd7b-a3ff9b28ff75', '96555', 'Buckner3', 42, 61),
('1949dae3-4d44-217e-9c66-a58ab8ff47ca', '25376', 'Maki144', 61, 61),
('19e75dad-32fc-2844-efdb-93dede770727', '05361', 'Amador817', 60, 60),
('1ad8322d-3635-2296-436b-1629b83affd2', '72694', 'Abraham419', 65, 63),
('1b700a15-7350-3189-78e3-2ceaa9cf3765', '37716', 'Dorcas1983', 44, 65),
('1f60e54f-196f-45f3-5498-ae38c5379e4b', '31862', 'Gale949', 63, 60),
('20c95e5a-1bdb-76c4-c37b-a3ff9b28ff75', '62928', 'Adelaida1995', 47, 60),
('213d2ade-5ef3-647c-75e3-2ceaa9cf3765', '30449', 'Glenda966', 63, 60),
('234be17d-3820-7daa-5698-ae38c5379e4b', '68440', 'Libbie1956', 41, 61),
('23df2104-50d7-1d9c-eadb-93dede770727', '91066', 'Arletha1965', 46, 61),
('24b8283e-35c3-4fc4-73e3-2ceaa9cf3765', '36971', 'Dixie968', 51, 60),
('25a1ce30-4ae1-2133-9f66-a58ab8ff47ca', '28477', 'Wingate6', 48, 64),
('26895d47-1420-68d0-9e66-a58ab8ff47ca', '48208', 'Marc37', 43, 63),
('27fedb27-2178-5245-d890-152dfadf6d0d', '04613', 'Luisa2005', 57, 61),
('2bdb9093-15d5-3e78-446b-1629b83affd2', '09739', 'Benton277', 47, 60),
('2c3aaf64-7f31-2318-8e1b-27d9d367aeb0', '01551', 'Garland247', 62, 64),
('2e038ac5-76c8-3031-dcc6-21b180c0988f', '54609', 'Shyla1987', 40, 62),
('2ed98b4b-4f60-6e40-5798-ae38c5379e4b', '25813', 'Dick4', 47, 60),
('2f2b6ad0-3b1b-3acf-c17b-a3ff9b28ff75', '59555', 'Shoshana48', 59, 61),
('2f7031bd-34a5-17c2-74e3-2ceaa9cf3765', '47291', 'Diamond271', 48, 62),
('3198e88a-43ba-6e4f-a366-a58ab8ff47ca', '82415', 'Reilly187', 41, 64),
('32eb6bd6-6c74-4c19-d7c6-21b180c0988f', '75446', 'Acker9', 48, 60),
('33afd48f-4b95-5b32-59b6-94da9cd298ec', '71867', 'Cotton2025', 53, 63),
('33f9a3a3-70b9-1ff6-dbc6-21b180c0988f', '40595', 'Abram65', 46, 65),
('34d489e2-6add-5426-d390-152dfadf6d0d', '30971', 'Pedro874', 42, 60),
('3564d2c8-2839-5bf7-851b-27d9d367aeb0', '06826', 'Falls2016', 63, 65),
('357ec50e-37ed-43fc-d6c6-21b180c0988f', '45302', 'Pinckney2010', 52, 61),
('3650c04e-62b1-6908-5598-ae38c5379e4b', '80185', 'Ressie658', 44, 62),
('379fc390-1dbe-6268-d690-152dfadf6d0d', '42591', 'Rigsby2025', 53, 61),
('3800012e-758c-1328-861b-27d9d367aeb0', '05933', 'Woodall819', 42, 60),
('392c604e-2041-2310-76e3-2ceaa9cf3765', '20921', 'Buckner895', 63, 62),
('399fc05a-6ef7-1a2d-3f6b-1629b83affd2', '23214', 'Claudio1961', 61, 61),
('3a0a7c7d-432b-6cf9-871b-27d9d367aeb0', '07607', 'Nick485', 52, 62),
('3a7b8eaf-7fe7-5959-d8c6-21b180c0988f', '20088', 'Adolfo3', 48, 62),
('3d5b1131-38b5-2128-ebdb-93dede770727', '54518', 'Fumiko89', 63, 65),
('3daf1e94-6707-2749-c27b-a3ff9b28ff75', '92462', 'Warner2001', 46, 61),
('3e34c4f2-3a6c-62c5-a266-a58ab8ff47ca', '54828', 'Courtney595', 56, 63),
('405dc491-6216-5bb5-5e98-ae38c5379e4b', '71893', 'Cooke67', 57, 64),
('42057b24-694d-4ae8-a166-a58ab8ff47ca', '90287', 'Jayna2026', 59, 64),
('446c9f77-34e0-2453-8b1b-27d9d367aeb0', '17667', 'Solange2021', 60, 60),
('4520aa7f-492a-3c02-a066-a58ab8ff47ca', '57077', 'Adolfo8', 47, 60),
('45e44dc8-211f-27ef-881b-27d9d367aeb0', '92422', 'Alexandria497', 65, 63),
('47782bc9-1bf1-7c7b-6ee3-2ceaa9cf3765', '58852', 'Desirae866', 58, 64),
('4782d29d-4baf-7371-d290-152dfadf6d0d', '56631', 'Ross2011', 45, 60),
('4958949d-17c9-454d-841b-27d9d367aeb0', '54030', 'Hoyt334', 62, 61),
('4ba825b4-6631-78d1-5998-ae38c5379e4b', '89303', 'Montes36', 54, 61),
('4c411322-7cb4-657d-6fe3-2ceaa9cf3765', '73759', 'Elizabet2025', 44, 62),
('4c71f23e-61cb-1bde-8c1b-27d9d367aeb0', '48243', 'Phyllis217', 44, 61),
('4db4853b-53b9-32e5-f1db-93dede770727', '86930', 'Arthur298', 42, 61),
('4f423847-292e-7ff7-5d98-ae38c5379e4b', '41034', 'Solano775', 42, 60),
('54878d33-29de-72c5-891b-27d9d367aeb0', '51343', 'Cinthia9', 42, 65),
('5499db4b-17be-2f25-72e3-2ceaa9cf3765', '50730', 'Carvalho1988', 62, 60),
('5735931e-471e-4e0a-a466-a58ab8ff47ca', '82506', 'Benson995', 56, 62),
('5793fca9-1c52-32af-eddb-93dede770727', '70503', 'Abney924', 48, 64),
('592d4ad8-3675-2016-ecdb-93dede770727', '09807', 'Austin912', 60, 64),
('59348356-7135-202a-426b-1629b83affd2', '10334', 'Ada1986', 59, 62),
('5a5de79d-72a6-5a6b-d790-152dfadf6d0d', '18296', 'Rash2004', 40, 65),
('5bfcc262-674e-3d3f-5ab6-94da9cd298ec', '40568', 'Zina1993', 59, 61),
('5f8db56d-26f9-6c95-dac6-21b180c0988f', '81191', 'Robt1954', 47, 63),
('5fb3c498-209d-6825-d9c6-21b180c0988f', '13807', 'Hawes155', 60, 60),
('6123f364-3fd4-3ffe-3e6b-1629b83affd2', '86989', 'Shaffer2014', 63, 65),
('623ff46d-702b-2f3b-56b6-94da9cd298ec', '71162', 'Cordell85', 56, 60),
('642909e7-4836-2f9b-da90-152dfadf6d0d', '90345', 'Brunilda1966', 53, 62),
('6462f381-27bb-2826-d490-152dfadf6d0d', '50590', 'Ian2027', 59, 65),
('66280e0e-3101-6114-5b98-ae38c5379e4b', '87656', 'Lindberg496', 54, 60),
('67cb2614-27d9-36f4-406b-1629b83affd2', '64166', 'Ernestine93', 62, 60),
('6827e1c0-5b98-6d19-831b-27d9d367aeb0', '70235', 'Alva2028', 52, 61),
('6a8868dd-5a5c-6163-a866-a58ab8ff47ca', '03354', 'Chanel1998', 47, 62),
('6cf688f3-65a0-7909-5f98-ae38c5379e4b', '60928', 'Aleta249', 52, 60),
('6d06ab6a-3d86-34bb-f2db-93dede770727', '69732', 'Florine1986', 55, 63),
('6e0dc48e-3eac-6143-9b66-a58ab8ff47ca', '13550', 'Alonzo512', 48, 61),
('6f293a3c-605f-76ba-a766-a58ab8ff47ca', '45948', 'Holm2004', 58, 63),
('6ff002a7-47b1-79ff-8a1b-27d9d367aeb0', '75541', 'Correia2001', 56, 62),
('7086df02-56bd-3b91-a566-a58ab8ff47ca', '45495', 'Michelle1992', 52, 61),
('71422680-7641-670b-58b6-94da9cd298ec', '63501', 'Euna2014', 51, 64),
('7202aaab-47c8-2e5d-5898-ae38c5379e4b', '88184', 'Charlette17', 59, 63),
('7310a7ce-72fc-6d87-55b6-94da9cd298ec', '75699', 'Bella766', 61, 61),
('742a059b-4ece-7f86-bf7b-a3ff9b28ff75', '48760', 'Andrus76', 46, 64),
('74ceacc3-3385-445b-5a98-ae38c5379e4b', '27014', 'Hand4', 62, 61),
('75c44418-37aa-50bc-70e3-2ceaa9cf3765', '49037', 'Kelley1958', 56, 63),
('75f40ce6-1292-41d6-c07b-a3ff9b28ff75', '53460', 'Atherton2029', 53, 62),
('7ad93a48-1626-77f4-77e3-2ceaa9cf3765', '63545', 'Russ649', 59, 61),
('7c3b7b80-7de9-412e-54b6-94da9cd298ec', '19425', 'Albina1960', 41, 63),
('7d518bb3-5f27-5be7-8d1b-27d9d367aeb0', '43887', 'Scotty2023', 65, 63),
('7d765e2c-410d-67ac-71e3-2ceaa9cf3765', '87437', 'Ramon2015', 44, 60),
('7f12d9bb-4aab-7b8f-c47b-a3ff9b28ff75', '74561', 'Theodore596', 40, 62),
('7f333d8e-5137-568f-be7b-a3ff9b28ff75', '06712', 'Angel91', 57, 63),
('7f8ef1c0-388a-287b-416b-1629b83affd2', '43197', 'Luis1953', 44, 64),
('7fa72f44-2825-2b26-d190-152dfadf6d0d', '01752', 'Abraham137', 53, 61),
('7fe29953-43eb-5e44-8f1b-27d9d367aeb0', '68570', 'Ferdinand645', 47, 65),
('967f9baf-d690-4a06-873c-fb7310d497a5', '63', NULL, 0, 0),
('fb1a44a2-e0c0-43c6-ae74-ba378b4b5293', 'IT2-02', 'Kỹ thuật máy tính-02', 60, 63);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `guid` char(36) NOT NULL,
  `subjectID` char(7) NOT NULL,
  `ratio` int(11) NOT NULL,
  `subjectName` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=2730 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`guid`, `subjectID`, `ratio`, `subjectName`, `description`) VALUES
('11131843-6f2a-7a2b-5052-ee3684e78c27', '13830', 4, 'Abbott2007', 'Omnis et neque perspiciatis ut perspiciatis quasi. Enim aut omnis. Et consequatur repellat. Facere atque id! Error est qui. Blanditiis ea et!'),
('134d2384-5136-14b7-3907-70859f4ff30d', '09685', 3, 'Goodman777', NULL),
('1355f11a-5e9d-1861-aa35-f63bd3f197bd', '38135', 3, 'Katz8', 'Quasi sapiente non. Aliquid praesentium ut. Iste porro facilis! Vitae molestiae ex. Id voluptatum placeat. Et omnis laborum? Consequatur inventore non.'),
('13a5d383-769f-5003-3a07-70859f4ff30d', '18546', 5, 'Lynn1975', 'Sunt et ut. Voluptatem et blanditiis et? Qui sunt sit eaque non consequatur. Nemo aut et minima quam repellendus autem!'),
('148bf03b-6be0-6d0d-5552-ee3684e78c27', '76683', 5, 'Abraham1986', 'Qui laborum et quia minima iste aut. Natus modi ut cupiditate architecto harum repudiandae.'),
('15eff4b8-6a0b-79eb-56f6-9777a5de214b', '81485', 5, 'Adela2010', 'Fugiat sequi rerum voluptatem porro voluptas laboriosam.'),
('191b53ff-4a53-52aa-6641-16298a76bb64', '01612', 5, 'Bible1956', 'Autem et placeat. Optio aut non. Distinctio itaque perferendis harum corporis fugit error. Deserunt odio esse provident. Consectetur doloribus consequatur.'),
('1a29883a-617d-6e80-7ca4-4b24de418577', '02822', 5, 'Dean1990', 'Voluptatem perspiciatis distinctio. Nihil ut voluptatem! Voluptates culpa id. Sequi voluptas vero. Recusandae quo optio. Facere architecto reprehenderit.'),
('1b59f90d-1944-1898-4dee-40eadd5993d6', '65010', 5, 'Jody1964', 'Dignissimos sunt quia nisi voluptas sed voluptatem. Beatae natus eaque tempore dolor aperiam? Voluptatem eum unde. Impedit blanditiis praesentium! Magni.'),
('1d48f0b6-7684-29f4-4aee-40eadd5993d6', '44968', 3, 'Indira2003', NULL),
('1fa5fe24-74ef-4964-4cee-40eadd5993d6', '56560', 5, 'Dalia1', 'Aut culpa sed. Est ducimus odit quibusdam eius; pariatur officiis nisi tempora autem earum minus. Ipsum porro sint. Unde debitis perspiciatis!'),
('2000637a-2a69-2e7e-a135-f63bd3f197bd', '91651', 5, 'Jorge1997', 'Quia a sit. Repellendus iste nemo. Quod dolores eveniet. Aliquid modi excepturi. Dolore ea soluta. A et est; inventore voluptatem vitae. Corrupti numquam.'),
('201dc1fa-3b47-13b7-55f6-9777a5de214b', '55886', 4, 'Charline4', 'Aut porro suscipit molestias nam iusto praesentium. Sequi amet impedit vel et. Corporis cupiditate ratione quasi officia voluptatum nobis!'),
('209e2ead-6376-2411-a935-f63bd3f197bd', '91222', 5, 'Adrian448', 'Perferendis ipsa quia. Error magni possimus. Veritatis similique adipisci. Voluptatibus expedita rerum; qui blanditiis sit. Nihil fugiat et. Sit delectus ex.'),
('222ae1bf-41d0-3e43-81a4-4b24de418577', '48471', 3, 'Anibal61', 'Aut rem minima; architecto mollitia aut. Alias cumque nesciunt. Recusandae aut similique. Impedit velit placeat; odit soluta enim; qui dignissimos reiciendis.'),
('22995693-7652-2167-6439-bf9bc2f12cf0', '33941', 3, 'Abel2021', 'Harum sed ea adipisci repudiandae et placeat. Et laboriosam exercitationem! Rerum aut corrupti. Quam ipsam ut. Voluptas et aliquam! Ab ea adipisci.'),
('2746148a-1bd9-644d-84a4-4b24de418577', '33067', 5, 'Marlin1999', 'Et quo ipsum asperiores blanditiis praesentium vitae.'),
('27f91d6c-14b1-6c74-92ef-c9d5c2d91e91', '53873', 3, 'Johnathan1980', 'Nemo possimus amet adipisci sit esse omnis.'),
('27fe6187-1fa8-5028-50ee-40eadd5993d6', '99986', 5, 'Nye189', 'Dolor quisquam voluptatibus. Error est ullam! Sint sequi recusandae; odio asperiores inventore. Mollitia ab iusto! Non cumque nemo. Voluptatem quia dolor?'),
('28b1a496-46f5-3b69-4ff6-9777a5de214b', '46198', 5, 'Trish74', 'In ratione facilis. Qui et rerum. Ipsam voluptas consequatur; excepturi minus quidem. Nihil quae incidunt? Ut esse doloribus! Consequatur iste natus.'),
('28e5fb2c-277e-7ba7-89ea-778aee59fea3', '51924', 3, 'Zina161', 'Pariatur aut eum. Eaque veniam fugiat. Explicabo iste nostrum. Quas rerum molestias? Voluptatibus unde corporis. Unde aut non. Perspiciatis velit natus.'),
('2ad9c7a4-14f0-5ff3-97ef-c9d5c2d91e91', '87620', 3, 'Owen38', 'Iste quia beatae officia. Laudantium illum dicta assumenda et. Similique cum sequi suscipit et corrupti quaerat! Perspiciatis atque in amet et eum.'),
('2b39c2a6-5c06-23f5-a635-f63bd3f197bd', '84639', 5, 'Marcene1983', 'Quia dolores iste unde dolores non enim.'),
('2b3fccea-6f3f-650d-6e41-16298a76bb64', '87152', 4, 'Strauss46', 'Voluptates culpa iure est. Iste sint non sequi. Tempora est ducimus dolor numquam omnis. Natus rerum aspernatur velit.'),
('2bb84278-33cb-5311-8fea-778aee59fea3', '77943', 5, 'Rolland2016', 'Nobis error est porro et autem. Quod perspiciatis praesentium consectetur et. Recusandae tempore et dolor fugit id illo.'),
('2cae53dc-6c39-2a1e-4df6-9777a5de214b', '30762', 4, 'Edmond212', 'Et deserunt quod. Odio temporibus dolores perspiciatis maxime illo est. Cumque quos sit possimus vitae! Omnis accusamus consequatur. Fugit sint quo.'),
('2f26fe39-4c98-690e-a235-f63bd3f197bd', '81075', 4, 'Blackwood1955', 'Vel ut autem ab iste illum non. Ut velit aliquam neque sed velit ratione.'),
('30007451-29ff-4fe4-3707-70859f4ff30d', '27856', 5, 'Devito2008', 'Unde mollitia quis recusandae. Rerum quia laudantium tempora culpa laboriosam asperiores. Delectus minima vel et maiores ut maiores.'),
('307c219d-17d9-2082-80a4-4b24de418577', '54722', 4, 'Brad897', 'Ut repellat ullam; iure cumque perspiciatis. Corporis sit saepe! Magni rem omnis. Unde sequi reprehenderit. Tempora velit commodi! Unde neque dignissimos.'),
('309d2263-2362-1f28-93ef-c9d5c2d91e91', '33445', 5, 'Roth1988', 'Odit nihil voluptate unde omnis eum. Voluptas labore hic qui excepturi. Eveniet aut quae veritatis dolorum perspiciatis est! Consequatur magnam et.'),
('32c2928a-4785-7235-9eef-c9d5c2d91e91', '99462', 5, 'Carylon1991', NULL),
('32faea28-6190-63e6-a535-f63bd3f197bd', '03156', 5, 'Roach2022', 'Magnam quibusdam quia. Qui tempore perspiciatis. Voluptas consequatur a. Culpa vel voluptatum; cumque aspernatur rerum. Tempore autem libero. Iste quae.'),
('34e2b4cc-3758-293d-7aa4-4b24de418577', '54625', 4, 'Jay2017', 'Dolores ipsum iste dicta qui aut. Molestias sit et quasi quisquam nobis. Culpa dolor consequatur. Omnis repellendus omnis quasi.'),
('366e1ce9-5d37-5aad-5152-ee3684e78c27', '42979', 4, 'Branden174', 'Modi facere aliquid; quia harum eveniet. Natus dolor itaque. Commodi ut quo. Qui aut qui. Veritatis eum quia. Perspiciatis sunt placeat. Quisquam et quo.'),
('396b685d-50ce-2efb-82a4-4b24de418577', '18140', 5, 'Trinidad2000', NULL),
('398a3f9b-4b3b-27cb-95ef-c9d5c2d91e91', '18070', 3, 'Shackelford944', 'Autem saepe est. Perspiciatis magni exercitationem. Aut vel perspiciatis! Sit est excepturi. Beatae harum error! Neque veritatis quis? Sint ea veritatis.'),
('3c0ada46-731e-5ecf-98ef-c9d5c2d91e91', '39148', 3, 'Abbie226', 'Rerum velit sint mollitia et omnis ipsum.'),
('3d07af6a-1a69-3f26-51f6-9777a5de214b', '15857', 3, 'Lane6', 'Alias voluptatibus ut sed cumque hic commodi.'),
('3db54477-7ccc-7a85-9def-c9d5c2d91e91', '11049', 4, 'Wilkes2', 'Voluptate ut in qui. Soluta similique voluptas sed unde adipisci ut. Voluptatem est harum asperiores perspiciatis tempora optio.'),
('3e39129b-279f-623f-88ea-778aee59fea3', '68741', 3, 'Burleson579', 'Perspiciatis quam ut voluptatem sint assumenda. Ut nulla voluptatem aliquam autem perspiciatis. Beatae sed consectetur nihil delectus laudantium error.'),
('3efbb52a-6620-382f-54f6-9777a5de214b', '66527', 4, 'Barbra2015', 'Repudiandae laudantium laboriosam. Error sit eos. Mollitia eos aperiam. Dolores culpa eius! Nihil alias quasi. Et consequatur sed! Labore quia et. Suscipit...'),
('429ce6a6-62b9-6ad6-8aea-778aee59fea3', '08138', 3, 'Adam192', 'Molestiae qui ut inventore at. Libero saepe mollitia eos possimus expedita animi! Amet et voluptatem qui quod; labore voluptatem aliquid maiores rerum.'),
('42e8a1e0-70da-14a6-6139-bf9bc2f12cf0', '75149', 4, 'Elmore2', 'Ea est quas omnis et. Illum itaque et voluptatem! In quibusdam unde similique quos officiis voluptates; libero voluptas veniam.'),
('43237e77-4d66-1f43-8cea-778aee59fea3', '13038', 5, 'Joya1993', 'Earum sed cumque voluptatem non et necessitatibus. Perferendis necessitatibus accusamus quasi nam perspiciatis dolorem!'),
('43a9a081-5293-549a-92ea-778aee59fea3', '02761', 4, 'Grisel474', 'Culpa voluptatem nostrum sed corporis quia voluptas.'),
('457cc84f-45c1-2619-9cef-c9d5c2d91e91', '36202', 5, 'Rusty1990', 'Ullam minima consectetur dolore voluptatem dolor aperiam.'),
('4597b763-6c7c-54f2-52f6-9777a5de214b', '63920', 5, 'Gene2004', 'Sed est dolor. Ut deleniti qui. Sunt culpa ipsa. Nihil aut dolorem. Ea iure quisquam. Ut repellendus ipsam! Aliquam possimus harum. Unde aut et.'),
('45bf5354-16e2-3601-6339-bf9bc2f12cf0', '52722', 4, 'Krystin1999', 'Quam delectus sed. Veritatis sed voluptatibus! Exercitationem qui in. Ea aliquid autem! Illum minus doloribus. Ut error voluptatem! Omnis voluptatem aut.'),
('46fa175f-5fa8-7749-a335-f63bd3f197bd', '33689', 4, 'Devries91', 'Possimus illum omnis voluptas modi quidem nam.'),
('471b1cba-3520-42cc-5252-ee3684e78c27', '18964', 4, 'Frank746', 'Eum et similique. Earum ut sunt. Asperiores impedit ducimus. Nemo ipsum unde. Facere sed doloribus! Dolorem et quisquam. Maxime ea natus! Ut vel ut. Enim!'),
('473b2454-579c-3cdd-3d07-70859f4ff30d', '32485', 3, 'Crosby2025', 'Quis sunt amet. Enim eaque voluptatem. Omnis facilis quis? Repellendus reiciendis ipsa. Accusamus sit vel! Animi sed in; consequuntur possimus quia.'),
('47894a73-1415-6141-85a4-4b24de418577', '17517', 3, 'Stacee296', NULL),
('48fbe85d-4c8e-1365-6b41-16298a76bb64', '81761', 3, 'Dannie621', 'Maiores omnis vel. Error quibusdam voluptas. Vitae aut nostrum. Necessitatibus qui expedita. Commodi assumenda et. Ducimus illo laboriosam! Earum molestiae?'),
('4b601f25-521d-2c02-ab35-f63bd3f197bd', '63073', 5, 'Schmid1984', 'Totam est aut molestiae ullam sit laborum.'),
('4c6ece0b-56ad-51b0-5452-ee3684e78c27', '39088', 4, 'Dewayne822', 'Explicabo sint cum. Fugit nobis sed. Delectus repellendus non. Deserunt sint inventore; voluptas ab porro. Accusamus eius qui. Amet autem natus! Voluptas.'),
('4c7eab88-5994-5915-4fee-40eadd5993d6', '15114', 5, 'Ainsworth1992', NULL),
('4cb9a854-3c3c-142a-8dea-778aee59fea3', '49610', 5, 'Adolph4', 'Consequatur molestiae natus eligendi a fugiat est. Itaque voluptatibus modi sunt. Facere aliquid sunt natus culpa perspiciatis debitis...'),
('50437c1e-33cd-52be-6a41-16298a76bb64', '27328', 5, 'Amelia2029', 'Dolorum enim error ut. Placeat ea aut expedita aut. Est beatae rerum unde temporibus. Rem rerum sed harum id nesciunt.'),
('50b6cbae-2288-3b4a-9aef-c9d5c2d91e91', '91223', 3, 'Sharee2024', 'Molestias optio consequatur. Eos nobis consequuntur. Numquam voluptatem modi; soluta sed unde. Velit dolores ullam; ex est nobis. Quasi repellendus.'),
('51113397-7e2f-490e-83a4-4b24de418577', '10000', 4, 'Nicki595', 'Sunt ut quia; nesciunt reiciendis rerum; ut ducimus perspiciatis. Eos consequuntur vel. Maxime est et! Corporis magnam vel. Accusamus quibusdam error.'),
('51b6f7f2-2494-7c15-3c07-70859f4ff30d', '65118', 5, 'Lopes553', 'Rerum a omnis. Voluptatem repellendus dolore! Et mollitia sed. Ut molestiae quis! Sed quia nulla; voluptas iste vero. Nulla veniam iure. Aliquam deserunt.'),
('52538abf-7ce7-42f6-6841-16298a76bb64', '09951', 4, 'Cantu547', 'Sed nesciunt quos earum sit eum dolore. Est dolores architecto omnis et eos; repellendus hic cupiditate autem quia. Sit illo velit.'),
('529ef8c0-4625-74c5-7ba4-4b24de418577', '96680', 3, 'Alarcon2008', 'Quia adipisci voluptatem. Ut fugiat unde. Eveniet soluta qui asperiores ut dignissimos. Obcaecati aperiam asperiores recusandae ea distinctio illum.'),
('5366e0e7-43d7-66ed-6239-bf9bc2f12cf0', '25845', 3, 'Justin487', 'Dolor ipsa ipsam. Delectus optio quia! Unde nostrum voluptatem; ut in aliquid? Modi non aut. Inventore veritatis suscipit. Aut ea similique.'),
('57c4d997-7a97-5cf3-94ef-c9d5c2d91e91', '57701', 5, 'Pierson193', 'Eligendi ipsam quas. Quia ullam aut. Pariatur quia harum. Doloribus voluptatem repudiandae! Eum eius dolorem. Eum aperiam officia. Est excepturi nihil;'),
('57c8445b-1efd-7040-6941-16298a76bb64', '94267', 4, 'Adela15', 'Enim omnis harum. Molestiae laborum aut. Nihil iste laboriosam; odit laudantium voluptatem. Quasi aperiam omnis! Deleniti ea sit. Enim nihil sequi. Fugit aut!'),
('580aecdb-127b-39e1-6741-16298a76bb64', '40908', 3, 'Scot9', 'Tempore nam quisquam. Voluptatem earum vero. Exercitationem accusantium ipsa. Excepturi iure laboriosam! Velit in assumenda. Nihil dolor error. Eius atque.'),
('59deeb64-4299-286e-8bea-778aee59fea3', '44198', 5, 'Mark49', 'Ipsa dolores ut repellat. Accusamus et consequuntur qui iure ut omnis. Sit commodi ut cupiditate et cum quo.'),
('5c8aae2d-4668-5d6e-9bef-c9d5c2d91e91', '40385', 3, 'Lloyd1963', 'Dolores ipsa exercitationem. Explicabo velit delectus? Fugit velit incidunt. Architecto explicabo perspiciatis. Neque quisquam et. Sed libero quos. Omnis sed!'),
('5c987ea5-6255-29be-49ee-40eadd5993d6', '32239', 4, 'Doris1986', 'Nostrum hic et tempora distinctio aut eligendi.'),
('5ce8858e-3428-2293-4eee-40eadd5993d6', '18574', 3, 'Earl179', NULL),
('5d571807-5b04-119e-3807-70859f4ff30d', '10258', 5, 'Cleveland812', 'Labore est dolorum. Est omnis magni. Autem voluptas tempora. Amet error est? A voluptas cupiditate. Fuga dolores non. Autem aut possimus...'),
('5e4914b1-7abb-6d37-8eea-778aee59fea3', '33828', 3, 'Matthew2012', 'Vitae a culpa molestias. Et doloribus omnis harum ipsam incidunt consequuntur? Dolore ut possimus tempora quia fuga et.'),
('610e08c4-5baf-708b-5f39-bf9bc2f12cf0', '72947', 4, 'Tibbs614', 'Dicta voluptas ut et. Distinctio ipsa rerum nam non enim eaque! Quo animi rerum eveniet ut qui non.'),
('61529d3a-416b-23ee-6539-bf9bc2f12cf0', '06963', 4, 'Leesa659', 'Quas quae tenetur. Odio nihil aliquam commodi dolorem recusandae tenetur. Ipsam consequatur ad minus distinctio unde. Ut error perferendis eligendi ab vero.'),
('6180e992-3227-5c43-a835-f63bd3f197bd', '30248', 4, 'Hilario572', 'Perspiciatis et error veniam ex. Animi molestiae eius laboriosam perspiciatis est ea! Excepturi sit repellat. Eos voluptatem qui! Sed est in.'),
('62e52909-4e63-7598-90ea-778aee59fea3', '14404', 4, 'Lawerence95', 'Perspiciatis et corporis. Velit reiciendis ut. A sed in; ratione dolor est. Perspiciatis maxime consequatur! Deleniti in quaerat? Quaerat eum sit!'),
('639cc23e-473e-43a6-a735-f63bd3f197bd', '03249', 4, 'Cathrine2007', 'Necessitatibus laborum natus fugiat aut in accusantium.'),
('6528b15d-6674-724f-79a4-4b24de418577', '23381', 3, 'Ahmed2013', 'Reiciendis ea quia. Amet qui recusandae. Ut ipsam ducimus! Corrupti vel qui. Aut quod sit. Maiores error ut. Perspiciatis est cupiditate. Assumenda vero!'),
('652eb931-75d6-5411-a435-f63bd3f197bd', '77884', 5, 'Milan2024', 'Et non placeat. Consequatur suscipit officia. Officiis quae eos; est numquam vel. Rem magnam sed. Minus ipsum eum! Sit repellendus quae; odit quia sit.'),
('65b700d7-1a87-7576-3b07-70859f4ff30d', '66412', 4, 'Moshe2027', 'Quas delectus vel. Quidem perspiciatis commodi provident minus qui; error magni sed et labore et facilis. Quia sed vel.'),
('6604cf28-7859-3bc0-6739-bf9bc2f12cf0', '18147', 4, 'Ulrike1987', NULL),
('67ac0252-58aa-72c8-4ef6-9777a5de214b', '87953', 4, 'Sherman438', 'Exercitationem sit itaque nulla et accusantium quam. Aut pariatur assumenda. Natus dolor autem. Et ut voluptatem? Hic dignissimos eos. In enim quo...'),
('6898dca0-5b94-15b1-4bee-40eadd5993d6', '98220', 3, 'Vida2003', 'Est rerum fugiat. Quia accusantium vitae; quasi labore eaque. Porro molestiae excepturi. Non esse sapiente! Eius ducimus itaque. Corporis et voluptatem...'),
('68a2bbac-1e44-778d-91ea-778aee59fea3', '08275', 3, 'Lilley2023', 'Minima sit officia. Rerum quia quidem. Adipisci perspiciatis autem; ut molestias aut? Dolor nostrum sed. Et modi aut! Laboriosam minima est. Consequatur iste.'),
('6a38bdbd-3189-7a55-5352-ee3684e78c27', '17781', 3, 'Pearce2018', 'Unde neque sit pariatur velit quam. Magnam iste exercitationem deleniti molestiae. Iusto distinctio dolorum beatae autem sint neque. Est in ut! Voluptatem.'),
('6e76a6f4-3d99-582b-7ea4-4b24de418577', '97103', 5, 'Celia8', 'Eos inventore sunt quisquam. Qui sed dolorem ducimus aut. Quidem voluptatem enim iste ab natus? Officia quia aut. Est suscipit nostrum!'),
('6fa4b5ef-3555-5ad5-96ef-c9d5c2d91e91', '79418', 3, 'Arthur1966', 'Ratione ut sed in labore. Sed omnis illo voluptatum omnis illo quis; eius sit natus; distinctio dolorem id. Est totam sed! Ipsam in voluptatem.'),
('6ff3e53f-78bb-3aa0-6639-bf9bc2f12cf0', '55340', 3, 'Jason332', 'Id non qui. Unde soluta quas. Perferendis quod alias! Harum expedita omnis. Molestias sapiente consequuntur. Dicta possimus pariatur. Illum neque odio. Et.'),
('7020d495-4bd6-4097-6039-bf9bc2f12cf0', '55080', 5, 'Darnell1999', 'Dolorem quis unde sunt sit et. Vero veritatis quam; unde porro rerum quasi? Aliquid tempora corrupti.'),
('7491c9a2-3b3c-409c-6c41-16298a76bb64', '06067', 4, 'Aubrey2022', 'Maiores excepturi ullam. Voluptates natus ut! Magni omnis dolor. Quibusdam labore obcaecati. Placeat sed voluptatibus. Aut illo est. Aut voluptatum facilis.'),
('75fdcb49-30b1-57f4-99ef-c9d5c2d91e91', '36669', 4, 'Ezell1979', 'Et delectus velit. Velit dignissimos deserunt. Eum culpa est! Corrupti repudiandae laborum. Facere molestiae omnis. Perferendis ab magni! Recusandae ut.'),
('779579c4-5994-254b-7fa4-4b24de418577', '38244', 3, 'Coletta797', 'Voluptatem voluptas maiores. Quis labore sed! Error ut accusantium. Quia soluta nostrum. Voluptatem eos omnis; eaque natus esse. Asperiores suscipit dolorem.'),
('7a52457e-551f-1a6d-5652-ee3684e78c27', '62966', 3, 'Harden6', NULL),
('7ad481c8-65b5-13a5-6d41-16298a76bb64', '17419', 3, 'Baum626', 'Aut omnis natus asperiores nobis. Omnis aperiam qui ut voluptas; voluptate qui quasi ab adipisci rerum quae.'),
('7afa340c-29d9-2846-7da4-4b24de418577', '68497', 5, 'Risa64', 'Et est error. Hic quod minima quia rerum officia. Sed ut natus soluta autem? Sed voluptates voluptatem natus aut. Sit explicabo magni.'),
('7b17edbe-338a-25e3-53f6-9777a5de214b', '88966', 5, 'Brannon2010', 'In sint fugit cumque obcaecati. Ut sed esse. Laborum dolorem sequi et omnis sed dolores!'),
('7ce0344e-4056-1111-50f6-9777a5de214b', '76327', 5, 'Furr2007', 'Doloremque est enim et eos explicabo. Voluptatibus sapiente qui incidunt nam aspernatur; veritatis voluptatem quos est; voluptatem quas et.'),
('7f3d7587-683e-7583-6f41-16298a76bb64', '03029', 3, 'Cruse2010', NULL),
('7f7a6256-757c-2861-51ee-40eadd5993d6', '94782', 3, 'Aisha2029', 'Nulla ratione exercitationem nam error sunt et.');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `guid` char(36) NOT NULL,
  `teacherID` char(9) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` char(3) DEFAULT NULL,
  `phoneNumber` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `brief` text DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=819 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`guid`, `teacherID`, `password`, `fullName`, `birthday`, `gender`, `phoneNumber`, `email`, `department`, `brief`) VALUES
('126339f9-1e9c-7ed8-8a2a-acc8fc2f00af', '91873', 'R75OF', 'Leon Whitten', '2022-12-20', 'F', '29732', 'Cesar.Huey@example.com', 'Executive', 'PM'),
('1294ae7e-2858-2074-4429-0204eeb736fa', '11651', '19X1', 'Garret Bundy', '2022-02-14', 'M', '67370', 'Gooden@example.com', 'Human Resources', '5159646WXYSBN966V1UM09NAV22D66HK8N6AB1WA3I7E658P330GI7GTH'),
('13e90e15-7e80-37d9-9e99-4d3edfe18939', '61988', '7', 'Fausto Cabral', '2014-04-22', 'F', '73551', 'Croft2@example.com', 'Customer Support', 'LX904YNDIOEX8A92H97S35DU'),
('1720654b-2559-3acc-c50c-0dd710d1548d', '94731', '4T1', 'Tabatha Chavarria', '2014-04-16', 'M', '30134', 'ErvinCohn811@nowhere.com', 'Sales', '4AND5109G3314O44LELIPL30L1ELHVCDG5EFK09QPN6055FLE2048Z2U08QX3623357DITNR6D'),
('18866bec-1af3-5d61-9f75-2a7ae1c799c8', '58886', '25', 'Adelaida Alvarez', '2013-02-07', 'M', '12971', 'Billups3@example.com', 'Consulting', 'FYL9FGK1'),
('18a0bc9d-5f33-2803-4529-0204eeb736fa', '21711', '9B44TD', 'Lester Alvarez', '2018-06-29', 'F', '31663', 'reyjtsc6491@nowhere.com', 'Human Resources', '8ZH0CAE546PS8A8YBWP75LMQP'),
('1904c499-616b-7809-8e2a-acc8fc2f00af', '20288', '4H9O', 'Clinton Alonso', '2015-04-14', 'M', '01817', 'Karl_Archuleta@example.com', 'Consulting', 'L8Z682T7RNA80Z5754QPCT9U0Q4BE8'),
('19199813-4275-601e-a175-2a7ae1c799c8', '44894', 'RQ', 'Jonathan Espino', '2012-03-19', 'F', '01685', 'LionelParham473@nowhere.com', 'Information Technology', '8VVB9J5P6V0D8CG90CQHDF38YJ'),
('19410667-2b94-5075-9a99-4d3edfe18939', '93954', '83QE7', 'Anthony Boyd', '2019-04-06', 'M', '14585', 'Hess@nowhere.com', 'Executive', '7Y7KI64F56'),
('1b11f02b-60af-55a2-b8e4-cbefc3792353', '78868', '4O8535DMN', 'Winford Bernard', NULL, NULL, '85183', NULL, NULL, '4Z9XODX0AQBK2756'),
('1bf7eb6f-2837-7f1f-acc1-8e252c39bb73', '67173', '4TV', 'Josiah Sample', NULL, NULL, '39804', NULL, NULL, NULL),
('1c40c330-4ddd-3094-c20c-0dd710d1548d', '75249', 'N', 'Asuncion Candelaria', '2022-01-06', 'F', '43408', 'Naquin63@nowhere.com', 'Finance', '25'),
('1cfbbaf9-31e9-68a1-4929-0204eeb736fa', '38888', 'L', 'Cory Heath', NULL, NULL, '44954', NULL, NULL, '67M5Z4U16Q6L06D74WE5N10AK16'),
('1d9109a1-6797-4bdb-8c2a-acc8fc2f00af', '60620', '1', 'Shellie Anders', '2014-08-19', 'F', '00474', 'Twanda_Blanco935@example.com', 'Marketing', '1F6VTDLT15R52L1'),
('1f3754af-7196-5287-efb5-aae5d250830a', '67161', '9', 'Concepcion Yanez', '2014-07-19', 'M', '79960', 'Vega@example.com', 'Research and Development', 'O6LZP2U507UUPN913P160L3Y2'),
('22868de9-28b6-679c-b4e4-cbefc3792353', '21450', '0ELV9', 'Dusty Serrano', '2020-03-11', 'M', '28421', 'HoustonZ_Luther@example.com', 'Executive', 'G8'),
('22b4de13-354d-506e-31de-835209209de0', '94864', '9', 'Abraham Lockwood', '2019-06-19', 'M', '15285', 'AmmieNGainey@nowhere.com', 'Executive', 'OD853IZ7OC5116OYF5QCC76C23'),
('24fa226e-1800-7304-a575-2a7ae1c799c8', '77677', 'L308E23', 'Delmer Hess', '2012-04-01', 'M', '91477', 'ufuq3576@nowhere.com', 'Executive', '9J9LTTPOXL2'),
('2593be8d-5c97-23fc-afc1-8e252c39bb73', '61220', 'VC', 'Vinita Freund', '2012-12-04', 'M', '29690', 'Haywood_Howland@example.com', 'Sales', '16'),
('25f20752-5f67-6e6d-0b01-2997b7e81c24', '80927', '8XG', 'Myung Dowd', '2021-03-03', 'M', '94055', 'ColumbusLimon@example.com', 'Manufacturing', '6M2351N67J5FB1H4HQ'),
('26021185-77af-263c-842a-acc8fc2f00af', '27992', '7', 'Arthur Glover', '2013-10-04', 'M', '16153', 'Glover@example.com', 'Consulting', 'GD5MALZ3H1943652D516QOH'),
('2602a715-3eca-389d-0c01-2997b7e81c24', '84538', '4', 'Ellamae Barr', '2021-03-29', 'M', '80995', 'Kacie_Shelley738@nowhere.com', 'Executive', '8Y82ENSNK00SPF7Q96G9107BH80X9ZL083WJW4'),
('2b031b59-5276-589c-9d75-2a7ae1c799c8', '59510', '5', 'Judi Herron', '2022-07-24', 'M', '07564', 'ArdenN.Chan9@example.com', 'Information Technology', 'XQ8TW2O2AXPB630A8186'),
('2c3dfa7b-4a6e-57e9-a675-2a7ae1c799c8', '19590', 'L1UK6L0I', 'Shandra Gould', '2021-08-16', 'M', '46707', 'BernaCastro8@nowhere.com', 'Human Resources', 'L44WTV0'),
('2c5d5b86-3963-7786-aac1-8e252c39bb73', '99642', 'O', 'Cornell Sibley', NULL, NULL, '39158', NULL, NULL, '56NVDC575BOK16SEMVOAOWEZ7919Q285A95TP83723T509G63P7D7HJMG021U1'),
('300bd270-340d-5844-c30c-0dd710d1548d', '16342', 'SI8W9C7TD', 'Barrett Solomon', '2012-09-24', 'F', '84567', 'Eusebio_JAbel@example.com', 'Finance', 'B3D039IJ15X1F279GRCFE91JPXNQ92EF37A01M936E51H631VYN94JGB'),
('3084625b-7b81-5184-9e75-2a7ae1c799c8', '99863', 'L', 'Roxanne Boothe', '2013-02-20', 'M', '47420', 'CliffFinn122@example.com', 'Sales', '06D328F09Q66Q4CHVA2U4CVL163E58H8584RZ16S7CN47Z9HYEZR6H0R29ORNDDFT2SIBC653P53Q5VJA346K175I16PQSP4JJW'),
('3115ec3d-5fca-18ff-f1b5-aae5d250830a', '43610', '9862V', 'Abe Bock', '2021-11-13', 'M', '43314', 'Abreu152@nowhere.com', 'Finance', 'D5'),
('32d509b9-2d1a-43b5-9d99-4d3edfe18939', '79877', '1VCJ2CRT', 'Bessie Sweet', '2017-08-28', 'M', '55848', 'DwainGarrison@nowhere.com', 'Finance', '1BA0YFM0EV8WRRH3NTF0MOP9OX08793F8HN0724993891350LPK7Y7WUPWVVXV3GR6Y6B6X3U6H9OO48GN4PZBKWT60R'),
('336d2cf7-566c-5782-8d2a-acc8fc2f00af', '78412', 'T', 'Odis Mccain', '2022-01-01', 'F', '40427', 'Zielinski5@example.com', 'Facilities', 'FF2W4B14T5FQ0BI9B8680BNTO494K630BU5KHZ672RGHLFT5YQ26OF28NI6YC9IZJZQ4QC'),
('35417e78-4185-2ed3-a099-4d3edfe18939', '76935', '3Y1QE11', 'Theressa Doss', '2015-10-29', 'F', '46271', 'Ocasio418@example.com', 'Research and Development', '24O7HZ8Q02Y6LE5Q49V3M4N26ZUTAB0EX52N4Q2DNNQXT3J022BN7W7E8XT4KXHC0516Q'),
('3667fcb5-1dc2-1281-a075-2a7ae1c799c8', '11083', '9Y8SC', 'Ashanti Casillas', '2012-03-28', 'F', '01366', 'AnamariaCleary@nowhere.com', 'Human Resources', 'P'),
('369e22f6-221c-56bd-852a-acc8fc2f00af', '41899', '851D', 'Juliet Bordelon', '2017-12-21', 'M', '38357', 'vqslgkx9351@nowhere.com', 'Manufacturing', NULL),
('381c645b-5faf-335d-4329-0204eeb736fa', '95990', 'U0', 'Antonina Marchand', '2021-06-03', 'M', '14012', 'DessieDickinson4@example.com', 'Research and Development', NULL),
('39bcc42a-41e8-56e3-adc1-8e252c39bb73', '91260', 'L', 'Cristopher Broughton', '2012-04-09', 'F', '83197', 'Miles.Eldridge7@example.com', 'Information Technology', 'I36669KIS1Q6NW0E5DUW8H122U77L082ODIOP0S5GWRDDPTP'),
('3a059606-6b9b-251d-4829-0204eeb736fa', '66453', 'MQ4', 'Rhea Stroud', '2021-04-20', 'F', '53596', 'Abdul_Swan393@example.com', 'Information Technology', 'JBZ184F2VF3803HZ2FLVD36AYW2E24835W8D'),
('3ac07f71-2a4f-7b22-0801-2997b7e81c24', '54585', 'H', 'Isaac Irwin', '2014-12-09', 'M', '73960', 'AllenDougherty@nowhere.com', 'Facilities', '7G9RN2F4F12N8J6DM91P7505U9HA8LUEO50PC3CU092EDRM'),
('3b4dfb92-4df0-335b-ca0c-0dd710d1548d', '35831', 'T0C903', 'Barry Cantu', '2012-04-14', 'F', '79138', 'Fulton78@example.com', 'Information Technology', 'GAUT1RZN8460009F1UQ4M7C740QLV434740AE1O45XW8U4H1Y76N6RS'),
('3b572f28-195a-18fb-b6e4-cbefc3792353', '35911', 'KKF13216', 'Rodolfo Vick', '2015-04-26', 'M', '30158', 'BrainFullerton141@example.com', 'Finance', '683ND1'),
('3b57e252-4ad1-7aad-b5e4-cbefc3792353', '32865', '69SH3', 'Senaida Ojeda', '2017-09-13', 'M', '42679', 'Mckay@example.com', 'Information Technology', '94Z8JW1K8'),
('3b82d534-3f90-28b8-cb0c-0dd710d1548d', '53898', 'JN', 'Cliff Alcorn', '2018-07-29', 'F', '63461', 'Concepcion@nowhere.com', 'Customer Support', '34E22IW41K89W21QUBR4TXH1T8M42Z03402J5U3688OPR3BN3'),
('3d9f943c-13ab-6f79-a375-2a7ae1c799c8', '23452', 'IEN145W68TP', 'Ray Luckett', '2012-01-02', 'F', '04643', 'lawnt16@nowhere.com', 'Facilities', '5I6S9E6B4ENN24792B684953'),
('3e128bcd-6f37-235d-c40c-0dd710d1548d', '75489', '6Q38P4', 'Jermaine Bowie', '2015-06-29', 'F', '07851', 'LindseyDWeatherford@example.com', 'Sales', 'JBUX'),
('3e215306-6cea-7d33-b7e4-cbefc3792353', '22085', '0T', 'Flavia Goldman', '2015-02-13', 'F', '58278', 'SammyD.Alcorn@nowhere.com', 'Executive', 'X140MM8BM3TWF3M99146N142Y846U562IFI9Z4P4UDH5RD825CQ17YHGHI882V5BYIF7Y35064G9G6F1KEQWFAX86M88Z0HF2SGML62KF75TG65'),
('40bf870e-4bc3-2f45-c80c-0dd710d1548d', '27703', '79DM7', 'Chauncey Beall', NULL, NULL, '37567', NULL, NULL, '362J4I87E9N1QL94F9BAPQZQ4CV74G2G491Z3PF'),
('417ca6e2-1840-20f2-862a-acc8fc2f00af', '68576', '85LFE85W6896N763L207', 'Alice Desantis', '2013-11-22', 'M', '77891', 'Haas@example.com', 'Research and Development', '22F2Y0204PP199B8NQ9P28'),
('421e2782-45f7-4711-4729-0204eeb736fa', '37479', 'W8Z9V', 'Roman Gomez', '2012-01-02', 'F', '52484', 'Chang2@nowhere.com', 'Operations', 'R23SP90H675ZE3C50HPIHW9'),
('427b1814-60ed-47cf-edb5-aae5d250830a', '88655', 'D', 'Lottie Almanza', '2013-07-23', 'M', '17759', 'fynhv372@example.com', 'Research and Development', 'RKW62JPW'),
('42d62f66-610e-1f31-2cde-835209209de0', '30664', 'HCUIL6', 'Tegan Hamer', NULL, NULL, '03732', NULL, NULL, '26289ZB1T849YUT2ANY4966U72YD8K0D9E056156'),
('44b37cd4-36f8-4c5b-abc1-8e252c39bb73', '35040', 'W61', 'Lynn Devito', '2022-02-20', 'M', '63370', 'Pedro.Randolph@example.com', 'Information Technology', 'MBU98'),
('45b3d25e-5546-45e9-0d01-2997b7e81c24', '32856', '27R5', 'Tonja Uribe', '2012-08-03', 'M', '48556', 'ntmzlalx_ntjnzc@nowhere.com', 'Information Technology', NULL),
('4670b40b-7c68-40b2-f2b5-aae5d250830a', '42944', 'B', 'Dean Cormier', '2014-03-30', 'F', '18648', 'Leyva16@example.com', 'Customer Support', '2E372493Y2A213W9E1X'),
('487befbc-7c2a-3ac3-872a-acc8fc2f00af', '33671', '3Z3T', 'Abel Gary', '2021-05-20', 'M', '68850', 'Ai_Breen99@example.com', 'Finance', 'K0Z9'),
('492e5de6-2d6f-1574-4629-0204eeb736fa', '82706', 'T', 'Fernando Chesser', '2015-07-20', 'F', '14267', 'Milan_Acevedo@nowhere.com', 'Information Technology', '1C6ZD72B'),
('4aecc8b0-7071-3081-c60c-0dd710d1548d', '69247', '45', 'Arlene Ybarra', '2013-04-02', 'M', '12561', 'Christiansen@nowhere.com', 'Consulting', '05GVW09RM8W634GXEQ3S1162237YKSFY29TAMJ3CXI69VM2X20X'),
('4c06e440-6942-4221-b3e4-cbefc3792353', '19536', '3', 'Santos Cowles', '2017-05-03', 'F', '91266', 'Crystle_Cardona491@example.com', 'Customer Support', 'A77'),
('4d79b6cb-6e6c-245b-4229-0204eeb736fa', '64683', '16', 'Joy Church', '2021-05-12', 'F', '02933', 'Phoebe_PAbel@nowhere.com', 'Sales', '5C49Q542S'),
('4ddef077-112a-710f-b0c1-8e252c39bb73', '94465', 'I45', 'Kim Escobar', '2014-06-13', 'F', '47265', 'Dannielle.Klinger@nowhere.com', 'Research and Development', '3R105QDDPE0'),
('4deb7bab-1210-21a4-bae4-cbefc3792353', '57351', 'C', 'King Rich', '2022-11-10', 'M', '20208', 'msulpwzm_snxkusii@nowhere.com', 'Research and Development', '141VO9G80LO5O86K37YS9CU63H0356UW'),
('4e96c84a-2f05-44c3-f5b5-aae5d250830a', '22563', 'A5Q53', 'Gudrun Fitzpatrick', '2014-11-20', 'M', '87664', 'AntioneMccutcheon5@example.com', 'Research and Development', 'CU4C1HQH65Y51R75SZA8P0GVC1R99E5M1Q72F534SL6O7958VU653C9N2C0942'),
('4ee0b2e1-6e22-2c1e-a199-4d3edfe18939', '35543', 'U0LH', 'Burl Mortensen', '2021-09-15', 'M', '85980', 'Denton1@example.com', 'Information Technology', '87V55O9W8K'),
('4ef42792-4d27-23d2-9b99-4d3edfe18939', '26403', '99YL7', 'Lang Byrnes', '2019-04-21', 'M', '81470', 'Giordano@example.com', 'Finance', 'UH7QO0PT'),
('50a57f9b-5cd0-4e34-4129-0204eeb736fa', '08389', '2EY2S6YFRM', 'Carmel Crain', '2017-09-14', 'M', '53246', 'Alley259@example.com', 'Marketing', '97CYMZ3RZYDQNBB3S2I6G6S613O37O69HQ70'),
('51bf90cb-53bf-21af-4a29-0204eeb736fa', '61825', '2T', 'Carmen Grimes', '2015-02-11', 'M', '08747', 'iafl4478@nowhere.com', 'Customer Support', 'F77O378F8QR7TIT5'),
('51dc4120-17f5-2cfb-f0b5-aae5d250830a', '65701', 'K60', 'Verla Wenger', '2013-12-20', 'F', '43101', 'Terrell_Acevedo23@example.com', 'Finance', NULL),
('5377db31-6fb2-3491-f3b5-aae5d250830a', '94047', '7E395', 'Ehtel Adler', '2022-01-29', 'F', '72440', 'bpnd1@example.com', 'Finance', '0M3UF7KK2094GV6YC594L7ZJ3B434DE'),
('537f1d22-1428-3a5a-0701-2997b7e81c24', '61144', '81BQ8GF', 'Abby Abernathy', '2022-02-21', 'F', '08756', 'uhazfn2787@example.com', 'Consulting', '7'),
('54b4739a-2ddd-77f0-882a-acc8fc2f00af', '00392', '2', 'Myra Lentz', NULL, NULL, '69192', NULL, NULL, 'ZC6BM8BS9A5BJ6723Y1Z2KYJ928304D4LHT2LN3920LRZGKS26EDHTC2M84'),
('55068fee-1a3b-6ee9-2dde-835209209de0', '27349', 'ZG', 'Matthew Putnam', '2012-09-28', 'F', '30248', 'MohamedAlicea314@example.com', 'Finance', 'WD'),
('5689a9c9-34f6-401e-9f99-4d3edfe18939', '98964', 'ZPV6', 'Markus Andrew', '2022-12-12', 'M', '12078', 'Kohler17@example.com', 'Executive', '69Z2181NTG2A13P1RZUF5I8K4T036ZI2N2U2788D9N'),
('5712bbe2-5d36-269a-4029-0204eeb736fa', '66974', 'P', 'Moshe Wilkinson', '2021-03-15', 'M', '89927', 'hbnggf1033@example.com', 'Finance', '39O9'),
('57bb6657-794f-1158-bbe4-cbefc3792353', '10491', 'W', 'Janessa Kidd', '2022-07-23', 'M', '63231', 'KrebsG@example.com', 'Customer Support', '9'),
('5aa1d37c-74b5-6b49-c90c-0dd710d1548d', '83808', '9Z', 'Jamie Andrews', NULL, NULL, '70686', NULL, NULL, 'TI9537W3UMB2D626TNZ6A4QF65503J'),
('60b528b8-1e15-4791-a275-2a7ae1c799c8', '85726', 'L', 'Cecil Acker', '2022-03-06', 'F', '71572', 'Ethan.Stinson8@nowhere.com', 'Marketing', 'KWTB56FBEU981TE9'),
('6118a7ff-742b-25db-a9c1-8e252c39bb73', '41578', 'UF', 'Takisha Hagan', '2022-06-17', 'M', '08545', 'lwxztzel.prfbht@example.com', 'Information Technology', '2G5I0TXWP7KBF9C6ZDJ5U1E8W6A1SXH512J9I6X'),
('61cc038b-3ccf-196d-2bde-835209209de0', '72124', 'VI', 'Bernardine Loomis', '2022-03-02', 'M', '05932', 'Tribble@nowhere.com', 'Research and Development', '6A'),
('643bbbfa-17f4-3102-0a01-2997b7e81c24', '30344', 'HS', 'Temika Hook', '2016-12-12', 'F', '06849', 'Vincent687@nowhere.com', 'Consulting', '19V2K914IQ7E5M80ZN72GVHK976T1933091R7EQ1LCQKN04KK'),
('65fbd1c8-561c-547f-2ade-835209209de0', '57878', 'K746K', 'Arturo Cole', '2021-05-14', 'M', '54611', 'Chamberlain@example.com', 'Sales', NULL),
('663bbae0-498a-7076-892a-acc8fc2f00af', '50797', 'ES', 'Laurie Knutson', '2014-01-09', 'M', '59890', 'HefnerW7@example.com', 'Manufacturing', 'UR9785Y2OI710Y3AHCV4UMGLHY'),
('697bc7f2-20a4-3bb3-b2c1-8e252c39bb73', '39217', 'BAKH1CAZ', 'Newton Colburn', '2022-08-22', 'M', '51547', 'Allan.Balderas@example.com', 'Finance', '8SH8273'),
('69badedd-678a-4647-a299-4d3edfe18939', '98358', '2540W0', 'Brooks Paine', '2015-07-21', 'M', '19973', 'MitchellSpaulding46@example.com', 'Information Technology', NULL),
('6b19b4ee-7366-54ac-30de-835209209de0', '14052', 'Y49', 'Suzi Amador', '2019-12-24', 'F', '82061', 'Abernathy@nowhere.com', 'Executive', '1A72263UE71'),
('6be49482-2599-2757-35de-835209209de0', '42561', '2', 'Abigail Spinks', '2022-01-23', 'M', '93514', 'Pinkston24@example.com', 'Customer Support', '8SU2M'),
('6c112468-3598-188e-2ede-835209209de0', '19139', '9B', 'Leonila Mccutcheon', '2013-06-08', 'F', '45021', 'LannyL_Clem@example.com', 'Sales', NULL),
('6c8c2dea-5d2d-746f-0901-2997b7e81c24', '99833', 'HFO5', 'Loren Bader', '2022-02-21', 'M', '67522', 'Mcelroy1@example.com', 'Sales', 'SJ929U839H0R1MW00Z0Z647TJX3271Z2EU9H65C02H6X7PW8PMN2G3K8A565BQ8'),
('6db0df65-13aa-7da7-33de-835209209de0', '50764', '9', 'Barton Lanham', '2022-06-14', 'M', '02345', 'AdeleStarnes@nowhere.com', 'Research and Development', 'W'),
('6ed4c996-741b-3446-eeb5-aae5d250830a', '11004', 'F1LI', 'Emery Cochran', '2018-11-04', 'F', '27379', 'JeremyU.Calvert@example.com', 'Executive', '2SN8J36H8'),
('712929e7-477f-6e15-2fde-835209209de0', '53194', 'C97X', 'Rolando Alvarado', '2013-12-20', 'M', '63603', 'Carlson@example.com', 'Customer Support', 'K296W2F092B0WG5C6'),
('73dacf44-1a6c-6d83-c70c-0dd710d1548d', '76409', '15S', 'Irving Carr', '2021-09-19', 'F', '19130', 'HollisWinchester@example.com', 'Manufacturing', '3'),
('744dbe4b-32cd-6b08-32de-835209209de0', '46101', 'F20F30', 'Ada Abel', '2016-12-17', 'F', '75958', 'Adalberto_Cary239@example.com', 'Consulting', '9GMZUR2'),
('759cf7c8-1d08-5f03-a475-2a7ae1c799c8', '48156', 'R98128', 'Chelsea Gibbs', NULL, NULL, '51303', NULL, NULL, 'V'),
('76f19e79-7669-7fbf-f4b5-aae5d250830a', '26300', 'O5', 'Lisbeth Muller', '2016-08-24', 'M', '07367', 'pour4885@example.com', 'Information Technology', '619GKOI37UT9TZOR3E1P9VT3Z1432T61Z2'),
('77bbde9a-7f1b-2323-b9e4-cbefc3792353', '37788', 'F2', 'Anita Hedges', '2015-09-22', 'F', '40278', 'dqvodo8@example.com', 'Human Resources', 'RBHV0'),
('799e147a-7a5f-1fce-0601-2997b7e81c24', '03175', 'DJN74QR3', 'Gaylord Whitworth', '2013-08-11', 'M', '34510', 'Rigby@example.com', 'Marketing', 'OF6OX7UCRU0V'),
('7b6e6577-4059-6c7d-b1c1-8e252c39bb73', '75338', 'T8', 'Randolph Ackerman', '2012-01-03', 'F', '08612', 'Devon.Engel565@nowhere.com', 'Consulting', '0US98M835Y8664NC0645389P2715L5Z55NF476X8RKY5PMQ8XQC2K0G5X9T7M30P'),
('7cc1d6cc-118b-3d57-34de-835209209de0', '46137', 'Y', 'Haywood Irwin', NULL, NULL, '81401', NULL, NULL, NULL),
('7d0ea0ec-3a10-75b9-aec1-8e252c39bb73', '55831', '33', 'Anastasia Abney', '2022-01-26', 'F', '40953', 'KatharinaZTurpin@nowhere.com', 'Information Technology', NULL),
('7dffc738-249f-4e30-8b2a-acc8fc2f00af', '77722', '449V9PC23', 'Adella Marcus', '2021-03-20', 'F', '10807', 'Bolling929@example.com', 'Sales', '46UY0R342WXQ21V24A6I68VLRZ496CA69LDAG0E74H46092M003TTGE4L13WLYU48L94KGY8IVC0ZHD2ABL7550944V6I978103G72'),
('7ef6cb0d-70d2-7d69-4b29-0204eeb736fa', '72884', '1EJ7KNJ', 'Despina Whitson', '2014-07-28', 'F', '52204', 'RyannHass@example.com', 'Sales', '7'),
('7f17104c-30e1-48f4-9c99-4d3edfe18939', '39848', 'N', 'Page Gann', '2014-10-03', 'M', '06621', 'gfpyivz0388@nowhere.com', 'Manufacturing', '55BP5R26O63OE133XT1PLQDP159X58H392');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE KEY `UK_class_classID` (`classID`),
  ADD KEY `classID` (`classID`),
  ADD KEY `class_ibfk_1` (`studentClassID`),
  ADD KEY `class_ibfk_2` (`subjectID`),
  ADD KEY `class_ibfk_3` (`teacherID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `notification_ibfk_1` (`classID`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD KEY `point_ibfk_1` (`studentID`),
  ADD KEY `FK_point_classID` (`classID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE KEY `UK_student_studentID` (`studentID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `FK_student_studentClassID` (`studentClassID`);

--
-- Indexes for table `studentclass`
--
ALTER TABLE `studentclass`
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE KEY `UK_studentclass_studentClassID` (`studentclassID`),
  ADD KEY `studentClassID` (`studentclassID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE KEY `UK_subject_subjectID` (`subjectID`),
  ADD KEY `subjectID` (`subjectID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE KEY `UK_teacher_teacherID` (`teacherID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`studentClassID`) REFERENCES `studentclass` (`studentClassID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`subjectID`) REFERENCES `subject` (`subjectID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `class_ibfk_3` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `point`
--
ALTER TABLE `point`
  ADD CONSTRAINT `FK_point_classID` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`) ON DELETE NO ACTION,
  ADD CONSTRAINT `point_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_student_studentClassID` FOREIGN KEY (`studentClassID`) REFERENCES `studentclass` (`studentClassID`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
