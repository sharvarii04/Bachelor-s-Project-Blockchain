# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     new_organ_donation
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2024-02-16 15:49:47
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for new_organ_donation
CREATE DATABASE IF NOT EXISTS `new_organ_donation` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `new_organ_donation`;


# Dumping structure for table new_organ_donation.tbldonarregister
CREATE TABLE IF NOT EXISTS `tbldonarregister` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `Full_Name` text NOT NULL,
  `Email_Id` text NOT NULL,
  `Address` text NOT NULL,
  `Mobile` text NOT NULL,
  `Gender` text NOT NULL,
  `DOB` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

# Dumping data for table new_organ_donation.tbldonarregister: 3 rows
/*!40000 ALTER TABLE `tbldonarregister` DISABLE KEYS */;
INSERT INTO `tbldonarregister` (`pid`, `Full_Name`, `Email_Id`, `Address`, `Mobile`, `Gender`, `DOB`, `Password`) VALUES (1, 'donar', 'd1@gmail.com', 'Ambegaon', '9874563210', 'Male', '2024-01-15', '123'), (2, 'd2', 'd2@gmail.com', 'Bibvewadi', '9876543120', 'Male', '2000-03-02', '123'), (3, 'd2', 'd2@gmail.com', 'Ambegaon', '8888888888', 'Male', '2000-12-31', '123');
/*!40000 ALTER TABLE `tbldonarregister` ENABLE KEYS */;


# Dumping structure for table new_organ_donation.tblhospitalregister
CREATE TABLE IF NOT EXISTS `tblhospitalregister` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `Full_Name` text NOT NULL,
  `Email_Id` text NOT NULL,
  `Address` text NOT NULL,
  `Mobile` text NOT NULL,
  `Gender` text NOT NULL,
  `DOB` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table new_organ_donation.tblhospitalregister: 2 rows
/*!40000 ALTER TABLE `tblhospitalregister` DISABLE KEYS */;
INSERT INTO `tblhospitalregister` (`pid`, `Full_Name`, `Email_Id`, `Address`, `Mobile`, `Gender`, `DOB`, `Password`) VALUES (1, 'ICON', 'icon@gmail.com', 'Ambegaon', '9874563210', 'Male', '2000-04-02', '123'), (2, 'raj', 'raj@gmail.com', 'Balewadi', '8888888883', 'Male', '2000-03-31', '123');
/*!40000 ALTER TABLE `tblhospitalregister` ENABLE KEYS */;


# Dumping structure for table new_organ_donation.tblmaster
CREATE TABLE IF NOT EXISTS `tblmaster` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `From_City` text,
  `Latitude` text,
  `Longitude` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

# Dumping data for table new_organ_donation.tblmaster: 51 rows
/*!40000 ALTER TABLE `tblmaster` DISABLE KEYS */;
INSERT INTO `tblmaster` (`id`, `From_City`, `Latitude`, `Longitude`) VALUES (1, 'Ambegaon', '18.4458', '73.8507'), (2, 'Aundh', '18.5602', '73.8031'), (3, 'Baner', '18.5590', '73.7868'), (4, 'Bavdhan-Khurd', '18.5135', '73.7699'), (5, 'Balewadi', '18.5789', '73.7707'), (6, 'Shivaji-Nagar', '18.5314', '73.8446'), (7, 'Bibvewadi', '18.4690', '73.8641'), (8, 'Bhugaon', '18.5011', '73.7508'), (9, 'Dhankawadi', '18.4655', '73.8547'), (10, 'Dhayari', '18.4471', '73.8102'), (11, 'Fursungi', '18.4727', '73.9785'), (12, 'Ghorpadi', '18.5236', '73.9063'), (13, 'Hadapsar', '18.5089', '73.9259'), (14, 'Katraj', '18.4529', '73.8652'), (15, 'Kharadi', '18.5538', '73.9477'), (16, 'Kondhwa', '18.4695', '73.8890'), (17, 'Parvati', '18.4923', '73.8547'), (18, 'Pirangut', '18.5130', '73.6779'), (19, 'Undri', '18.4567', '73.9095'), (20, 'Vishrantwadi', '18.5726', '73.8782'), (21, 'Vadgaon-Khurd', '18.4608', '73.8081'), (22, 'Vadgaon-Budruk', '18.4660', '73.8246'), (23, 'Vadgaon-Sheri', '18.5513', '73.9210'), (24, 'Wagholi', '18.5808', '73.9787'), (25, 'Warje', '18.4865', '73.7968'), (26, 'Yerwada', '18.5529', '73.8797'), (27, 'Shivane', '18.4662', '73.7822'), (28, 'Akurdi', '18.6505', '73.7786'), (29, 'Bhosari', '18.6321', '73.8468'), (30, 'Chakan', '18.7632', '73.8613'), (31, 'Charholi-Budruk', '18.6537', '73.9077'), (32, 'Chikhli', '18.6825', '73.8196'), (33, 'Chinchwad', '18.6298', '73.7997'), (34, 'Dapodi', '18.5853', '73.8334'), (35, 'Dehu-Road', '18.6860', '73.7477'), (36, 'Dighi', '18.6149', '73.8730'), (37, 'Hinjawadi', '18.5913', '73.7389'), (38, 'Kasarwadi', '18.6061', '73.8228'), (39, 'Moshi', '18.6794', '73.8492'), (40, 'Fugewadi', '18.5870', '73.8346'), (41, 'Pimple-Gurav', '18.5866', '73.8134'), (42, 'Pimple-Nilakh', '18.5790', '73.7860'), (43, 'Pimple-Saudagar', '18.5987', '73.7978'), (44, 'Pimpri', '18.6298', '73.7997'), (45, 'Ravet', '18.6606', '73.7322'), (46, 'Rahatani', '18.6047', '73.7871'), (47, 'Talawade', '18.6866', '73.7893'), (48, 'Tathawade', '18.6276', '73.7455'), (49, 'Thergaon', '18.6143', '73.7751'), (50, 'Wakad', '18.6011', '73.7641'), (51, 'Talegaon', '18.7376', '73.6747');
/*!40000 ALTER TABLE `tblmaster` ENABLE KEYS */;


# Dumping structure for table new_organ_donation.tblregister
CREATE TABLE IF NOT EXISTS `tblregister` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `Full_Name` text NOT NULL,
  `Email_Id` text NOT NULL,
  `Address` text NOT NULL,
  `Mobile` text NOT NULL,
  `Gender` text NOT NULL,
  `DOB` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table new_organ_donation.tblregister: 4 rows
/*!40000 ALTER TABLE `tblregister` DISABLE KEYS */;
INSERT INTO `tblregister` (`pid`, `Full_Name`, `Email_Id`, `Address`, `Mobile`, `Gender`, `DOB`, `Password`) VALUES (1, 'abc', 'abc@gmail.com', 'Baner', '8888888888', 'Male', '2005-05-04', '123'), (2, 'abcd', 'acbd@gmail.com', 'Shivaji-Nagar', '8888888885', 'Male', '2010-02-02', '123'), (3, 'aa', 'aa@gmail.com', 'Ambegaon', '9876543210', 'Male', '2000-03-01', '123'), (4, 'qq', 'qq@gmail.com', 'Ambegaon', '9876543210', 'Male', '2000-12-31', '123');
/*!40000 ALTER TABLE `tblregister` ENABLE KEYS */;


# Dumping structure for table new_organ_donation.tbl_donor_organ
CREATE TABLE IF NOT EXISTS `tbl_donor_organ` (
  `B_ID` int(10) NOT NULL AUTO_INCREMENT,
  `D_Email_ID` text,
  `D_Name` text,
  `d_Mobile_No` text,
  `D_Organ_Name` text,
  `D_Blood_Group` text,
  `D_Age` text,
  `D_Height` text,
  `D_Weight` text,
  `Donor_Status` text,
  `User_type` text,
  `H_Full_Name` text,
  `H_Address` text,
  `H_Email_Id` text,
  `H_Mobile` text,
  `Transplantation_Date_Time` text,
  `Disease_name` text,
  `habits_name` text,
  `Metal_issues` text,
  PRIMARY KEY (`B_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

# Dumping data for table new_organ_donation.tbl_donor_organ: 3 rows
/*!40000 ALTER TABLE `tbl_donor_organ` DISABLE KEYS */;
INSERT INTO `tbl_donor_organ` (`B_ID`, `D_Email_ID`, `D_Name`, `d_Mobile_No`, `D_Organ_Name`, `D_Blood_Group`, `D_Age`, `D_Height`, `D_Weight`, `Donor_Status`, `User_type`, `H_Full_Name`, `H_Address`, `H_Email_Id`, `H_Mobile`, `Transplantation_Date_Time`, `Disease_name`, `habits_name`, `Metal_issues`) VALUES (1, 'd1@gmail.com', 'donar', '9874563210', 'Kidney', 'B+', '25', '145', '50', 'Pending', 'Self', NULL, NULL, NULL, NULL, NULL, 'No', 'No', 'No'), (2, 'd2@gmail.com', 'd2', '9876543120', 'Kidney', 'B+', '25', '145', '50', 'Transplantation Done', 'Self', 'ICON', 'Ambegaon', 'icon@gmail.com', '9874563210', '16-01-2024 13:36:22', 'Blood_Pressure', 'smoking', 'No'), (3, 'd2@gmail.com', 'd2', '9876543120', 'Kidney', 'B+', '25', '145', '50', 'Pending', 'Self', NULL, NULL, NULL, NULL, NULL, 'Blood_Pressure', 'smoking', 'No');
/*!40000 ALTER TABLE `tbl_donor_organ` ENABLE KEYS */;


# Dumping structure for table new_organ_donation.tbl_request_organ
CREATE TABLE IF NOT EXISTS `tbl_request_organ` (
  `B_ID` int(10) NOT NULL AUTO_INCREMENT,
  `P_Email_ID` text,
  `P_Name` text,
  `P_Mobile_No` text,
  `P_Organ_Name` text,
  `P_Blood_Group` text,
  `P_Age` text,
  `P_Height` text,
  `P_Weight` text,
  `Patient_Status` text,
  `H_Full_Name` text,
  `H_Email_Id` text,
  `H_Address` text,
  `H_Mobile` text,
  `Transplantation_Date_Time` text,
  `Disease_name` text,
  `habits_name` text,
  `Metal_issues` text,
  PRIMARY KEY (`B_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

# Dumping data for table new_organ_donation.tbl_request_organ: 3 rows
/*!40000 ALTER TABLE `tbl_request_organ` DISABLE KEYS */;
INSERT INTO `tbl_request_organ` (`B_ID`, `P_Email_ID`, `P_Name`, `P_Mobile_No`, `P_Organ_Name`, `P_Blood_Group`, `P_Age`, `P_Height`, `P_Weight`, `Patient_Status`, `H_Full_Name`, `H_Email_Id`, `H_Address`, `H_Mobile`, `Transplantation_Date_Time`, `Disease_name`, `habits_name`, `Metal_issues`) VALUES (1, 'acbd@gmail.com', 'abcd', '8888888885', 'Kidney', 'B+', '25', '145', '50', 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (2, 'aa@gmail.com', 'aa', '9876543210', 'Kidney', 'B+', '25', '145', '50', 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (3, 'qq@gmail.com', 'qq', '9876543210', 'Kidney', 'B+', '25', '145', '50', 'Pending', NULL, NULL, NULL, NULL, NULL, 'No', 'smoking', 'No');
/*!40000 ALTER TABLE `tbl_request_organ` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
