-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: classmysql.engr.oregonstate.edu:3306
-- Generation Time: Jun 14, 2017 at 03:47 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs340_rameshv`
--

-- --------------------------------------------------------

--
-- Table structure for table `fan`
--

CREATE TABLE `fan` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `AboutMe` varchar(250) DEFAULT NULL,
  `FavoritePlayer` int(11) DEFAULT NULL,
  `FavoriteTeam` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fan`
--

INSERT INTO `fan` (`Username`, `Password`, `AboutMe`, `FavoritePlayer`, `FavoriteTeam`) VALUES
('alpha', 'c4ca4238a0b923820dcc509a6f75849b', '	\r\n	I am a hawks fan', NULL, NULL),
('bear343', '0f70b6f669131657d078b4f7e99623c9', NULL, NULL, NULL),
('blazerfan493', 'f12f18b7596db6839808c1e1f0c8470f', NULL, NULL, NULL),
('bobby', 'c063c5e3ca13624f1eb2241d5dea82da', NULL, NULL, NULL),
('ddd', '9a40156001a032031e3e62806fe11b19', NULL, NULL, NULL),
('dfgdfg', '8d509c28896865f8640f328f30f15721', NULL, NULL, NULL),
('don10', '9a281eea0823964dfb2915823c248417', NULL, NULL, NULL),
('elk39', '7e943e3a58e74f49ee6935029e9ba279', NULL, NULL, NULL),
('goneboy30', '4d2595025b3e07ce5276f2ee86b48cba', NULL, NULL, NULL),
('gonny', 'e5841df2166dd424a57127423d276bbe', NULL, NULL, NULL),
('good30', 'ca4e914b9e343644be002decbb236b18', NULL, NULL, NULL),
('green39', '5d04ce69ec9a1a49a772390e243f7fe6', NULL, NULL, NULL),
('hub564', 'bf9933e9942290c71a9483f4d5134cc9', NULL, NULL, NULL),
('indigo34', '7d0ce709023cb03a0f9920af6a52df26', NULL, NULL, NULL),
('iondo', 'ea04991e79cc9404446eec17ea760be1', NULL, NULL, NULL),
('jack', '58238e9ae2dd305d79c2ebc8c1883422', NULL, NULL, NULL),
('jack3', 'fd9b753b7e10cfca36eacb14fd8c8e59', NULL, NULL, NULL),
('jack34', '7964e5e6c65b646c01df35ace01619a2', NULL, NULL, NULL),
('jackbot3', 'a64b25e1ec1844b17c27fee8ce4a807f', NULL, NULL, NULL),
('jacken3', '2b54fd1b555329a0f52e197e54903aca', NULL, NULL, NULL),
('jackie', 'ec36e2ba64f11c9e910e0353e0836d81', NULL, NULL, NULL),
('jason', '58238e9ae2dd305d79c2ebc8c1883422', NULL, NULL, NULL),
('jason49dk', 'e62c3ba82d6e2f18780b6e0f17bd932c', NULL, NULL, NULL),
('jasonkdi3', 'a64b25e1ec1844b17c27fee8ce4a807f', NULL, NULL, NULL),
('jaustin30', '5a0e6b0d6021f89e4c0c086504efa137', NULL, NULL, 'Miami Heat'),
('joe', '292f0300bbddb5ad9efc10f31c452e57', NULL, NULL, NULL),
('joeboy443', 'b058a0ab7b39996ba9ae265f06a2c65b', NULL, NULL, NULL),
('joejohn', '134a2cbfa1c4b26b078d5fa206c07baf', NULL, NULL, 'Portland Trail Blazers'),
('jon', '3ed06919ecdcec94dee6ff18ffa21d60', NULL, NULL, NULL),
('jordan', 'e2a6b5a40f803c4c43f8be4515bb7e09', NULL, NULL, NULL),
('ju', '28f0b864598a1291557bed248a998d4e', NULL, 6, NULL),
('jwest473', 'ajh92u83hpjklav92hashed', 'Stuff about the user goes here. Maximum of 250 words. ', 40, 'Minnesota Timberwolves'),
('kandy30', '673814fb05b9316cce5ba468cea86baa', NULL, NULL, NULL),
('kboy', '6df182582740607da754e4515b70e32d', NULL, NULL, NULL),
('kidd304', '7e3f9665b4344eefc355f3187e5d0353', NULL, NULL, NULL),
('kidd3043', '7e3f9665b4344eefc355f3187e5d0353', NULL, NULL, NULL),
('kidd3043243', '7e3f9665b4344eefc355f3187e5d0353', NULL, NULL, NULL),
('kon', '5593e54c0f8832f9629eea3b26c31a46', NULL, 10, NULL),
('konny', 'd2cbe65f53da8607e64173c1a83394fe', '	\r\n	I like the blazers', NULL, 'Portland Trail Blazers'),
('lagaon', '5c9219a682c6a8b3cc508dc1f1cfc56e', NULL, NULL, NULL),
('lakersfan3', 'ef8b5fcc338e003145ac9c134754db71', NULL, NULL, 'Los Angeles Lakers'),
('loarry3', 'd9729feb74992cc3482b350163a1a010', NULL, NULL, NULL),
('lolng', 'a7eaa8594078266ea58b3fc2c2cf44f9', NULL, NULL, NULL),
('long', 'e67f709f98f412b5327fa9c7230f2d04', NULL, NULL, NULL),
('long3', 'e67f709f98f412b5327fa9c7230f2d04', NULL, NULL, NULL),
('longo', '49ae49a23f67c759bf4fc791ba842aa2', NULL, NULL, NULL),
('lowry232', 'alsjf23oijf09sfhashed', 'About the user here.', 25, 'Atlanta Hawks'),
('lowry359', 'b15d47e99831ee63e3f47cf3d4478e9a', NULL, NULL, NULL),
('nene29', 'c7ed36dd8fdeeacd8f042c38ef75eb99', NULL, NULL, NULL),
('noitdoesnt3', '6226f7cbe59e99a90b5cef6f94f966fd', NULL, NULL, NULL),
('oil43', '912ec803b2ce49e4a541068d495ab570', NULL, NULL, NULL),
('only3', 'c2c0a3611d16a7541cbb6adff5b4c089', NULL, NULL, NULL),
('ony342', '85a2bc0fc9e76b1bcc4d4dfdb439388e', NULL, NULL, NULL),
('ooma', '4ecb679fd35dcfd0f0894c399590be1a', NULL, NULL, NULL),
('pacersfan3', '029afa8b516152fa34f1b2fbe50f1eab', NULL, NULL, NULL),
('pop', 'f9636d016be2f2875063cdc0edadc9e4', NULL, NULL, NULL),
('popd', 'f9636d016be2f2875063cdc0edadc9e4', NULL, NULL, NULL),
('poppy', '3fe46cbb2330a6f1a54b62588b2f0aec', NULL, NULL, NULL),
('poppy390', 'f5f46a62bde5dd979c0652f06d716a9e', NULL, NULL, NULL),
('rams345', '006cb570acdab0e0bfc8e3dcb7bb4edf', NULL, NULL, NULL),
('rondo', '08d5c38bebb9c7b13b9d3abb894deb2b', NULL, NULL, NULL),
('rondo32', '08d5c38bebb9c7b13b9d3abb894deb2b', NULL, NULL, NULL),
('rondo323', '08d5c38bebb9c7b13b9d3abb894deb2b', NULL, NULL, NULL),
('running304', 'f50074e4631a123d91e20574c74ab7cd', NULL, NULL, NULL),
('sarah10', '38c8a8aefc18ffd01246581dd7b2833e', NULL, NULL, NULL),
('sdfe', '1126bfbd706f9d266b5ea43033f0dce7', NULL, NULL, NULL),
('sdfsdf', 'ff1ccf57e98c817df1efcd9fe44a8aeb', NULL, NULL, NULL),
('sfgsdfgsdfg', '20c8c43a2dc688d5cc79f199eecd84d5', NULL, NULL, NULL),
('sfgsdfgsdfg4', '20c8c43a2dc688d5cc79f199eecd84d5', NULL, NULL, NULL),
('somer', '28f0b864598a1291557bed248a998d4e', NULL, NULL, NULL),
('sonnyboyz', '93144b778bde61a86959f7cbce4b2eab', NULL, NULL, 'Utah Jazz'),
('temp1', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL),
('thomast2', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL),
('tommy30', '059a6d8f03049088bdef6ddf17860b00', NULL, NULL, NULL),
('tree38', '2ac43aa43bf473f9a9c09b4b608619d3', NULL, NULL, NULL),
('ugan', '4affa15a0a1e0f0f054de81b9e191b28', NULL, NULL, NULL),
('vinod', '202cb962ac59075b964b07152d234b70', '	\r\n	My name is vinod ramesh', NULL, 'Portland Trail Blazers'),
('vinod3', 'b701b6a821f72dfa78f6fc86ea329010', NULL, NULL, NULL),
('vinod432', 'f913b2458aef8aaa8e0b64012a7b2179', NULL, NULL, NULL),
('walris', '9251dddd50ef30adce51ad629526d447', NULL, NULL, 'Utah Jazz'),
('warreng384', '92f623e651d4e7a770fc62d665a65f68', NULL, NULL, NULL),
('watson3', '30035607ee5bb378c71ab434a6d05410', NULL, NULL, NULL),
('whereiswaldo30', 'e01bd5b75738f9fd9287595ff240451c', NULL, NULL, NULL),
('wonder495', 'a135eddb62f5823920f52da6ba80411c', NULL, NULL, NULL),
('XXbasketballfanXX', 'c31a3c5f6fa9642093809d4a864d3e7c', NULL, NULL, 'Portland Trail Blazers'),
('yood', 'e07aa256b52bba195b9d5a773cbc15bd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Game`
--

CREATE TABLE `Game` (
  `GameID` int(11) NOT NULL,
  `Team1Name` varchar(50) NOT NULL,
  `Team2Name` varchar(50) NOT NULL,
  `Score1` int(11) NOT NULL,
  `Score2` int(11) NOT NULL,
  `GameDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Game`
--

INSERT INTO `Game` (`GameID`, `Team1Name`, `Team2Name`, `Score1`, `Score2`, `GameDate`) VALUES
(1, 'Golden State Warriors', 'Cleveland Cavaliers', 113, 91, '2017-01-06'),
(2, 'Golden State Warriors', 'Cleveland Cavaliers', 132, 113, '2017-04-06'),
(3, 'Golden State Warriors', 'Cleveland Cavaliers', 118, 113, '2017-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `GameSchedule`
--

CREATE TABLE `GameSchedule` (
  `Team1Name` varchar(50) NOT NULL,
  `Team2Name` varchar(50) NOT NULL,
  `GameDate` date NOT NULL,
  `Location` varchar(20) NOT NULL,
  `GameID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GameSchedule`
--

INSERT INTO `GameSchedule` (`Team1Name`, `Team2Name`, `GameDate`, `Location`, `GameID`) VALUES
('Golden State Warriors', 'Toronto Raptors', '2016-10-01', 'San Fransisco, CA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `playerid` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Position` varchar(20) NOT NULL,
  `Height` varchar(20) NOT NULL,
  `Weight` int(11) NOT NULL,
  `College` varchar(50) NOT NULL,
  `team` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`playerid`, `FirstName`, `LastName`, `Position`, `Height`, `Weight`, `College`, `team`) VALUES
(5, 'LeBron', 'James', 'SG', '6-8', 250, 'St. Vincent-St. Mary HS', 'Cleveland Cavaliers'),
(6, 'James', 'Harden', 'SG', '6-5', 220, 'Arizona State', 'Houston Rockets'),
(7, 'Russell', 'Westbrook', 'PG', '6-3', 200, 'UCLA', 'Oklahoma City Thunder'),
(8, 'Rajon', 'Rondo', 'PG', '6-1', 186, 'Kentucky', 'Chicago Bulls'),
(9, 'Damian', 'Lillard', 'PG', '6-3', 195, 'Weber State', 'Portland Trail Blazers'),
(10, 'CJ', 'McCollum', 'SG', '6-3', 190, 'Lehigh', 'Portland Trail Blazers'),
(11, 'Al', 'Horford', 'C', '6-10', 245, 'Florida', 'Boston Celtics'),
(12, 'Isaiah', 'Thomas', 'G', '5-9', 185, 'Washington', 'Boston Celtics'),
(13, 'Giannis', 'Antetokounmpo', 'F-G', '6-11', 222, 'Greece', 'Milwaukee Bucks'),
(14, 'John', 'Wall', 'G', '6-4', 210, 'Kentucky', 'Washington Wizards'),
(15, 'Dennis', 'Schroder', 'PG', '6-1', 172, 'Germany', 'Atlanta Hawks'),
(17, 'Derrick', 'Favors', 'F-C', '6-10', 265, 'Georgia Tech', 'Utah Jazz'),
(18, 'Brook', 'Lopez', 'C', '7-0', 275, 'Stanford University', 'Brooklyn Nets'),
(19, 'Kyle', 'Lowry', 'G', '6-0', 205, 'Villanova', 'Toronto Raptors'),
(20, 'Kemba', 'Walker', 'PG', '6-1', 172, 'University of Connecticut', 'Charlotte Hornets'),
(21, 'Dirk', 'Nowitzki', 'PF', '7-0', 245, 'Germany', 'Dallas Mavericks'),
(22, 'LaMarcus', 'Aldridge', 'F', '6-11', 260, 'Texas', 'San Antonio Spurs'),
(23, 'Darren', 'Collison', 'G', '6-0', 175, 'UCLA', 'Sacramento Kings'),
(24, 'Kenneth', 'Faried', 'PF', '6-8', 228, 'Morehead State University', 'Denver Nuggets'),
(25, 'Andre', 'Drummond', 'C', '6-11', 279, 'University of Connecticut', 'Detroit Pistons'),
(26, 'Eric', 'Bledsoe', 'G', '6-1', 205, 'Kentucky', 'Phoenix Suns'),
(27, 'Robert', 'Covington', 'F', '6-9', 215, 'Tennessee State', 'Philadelphia 76ers'),
(28, 'Stephen', 'Curry', 'PG', '6-3', 190, 'Davidson College', 'Golden State Warriors'),
(29, 'Paul', 'George', 'SG', '6-9', 220, 'California State University', 'Indiana Pacers'),
(30, 'Elfrid', 'Payton', 'G', '6-4', 185, 'Louisiana-Lafayette', 'Orlando Magic'),
(31, 'Chris', 'Paul', 'PG', '6-0', 175, 'Wake Forest University', 'Los Angeles Clippers'),
(32, 'DeAndre', 'Jordan', 'C', '6-11', 265, 'Texas A&M University', 'Los Angeles Clippers'),
(33, 'Carmelo', 'Anthony', 'F', '6-8', 240, 'Syracuse', 'New York Knicks'),
(34, 'Nick', 'Young', 'SG', '6-7', 210, 'University of Southern California', 'Los Angeles Lakers'),
(35, 'Julius', 'Randle', 'PF', '6-9', 250, 'University of Kentucky', 'Los Angeles Lakers'),
(36, 'Anthony', 'Davis', 'F-C', '6-11', 253, 'Kentucky', 'New Orleans Pelicans'),
(37, 'Karl-Anthony', 'Towns', 'C', '7-0', 244, 'Kentucky', 'Minnesota Timberwolves'),
(38, 'Marc', 'Gasol', 'C', '7-1', 255, 'Lausanne Collegiate School', 'Memphis Grizzlies'),
(39, 'Mike', 'Conley', 'PG', '6-1', 175, 'Ohio State University', 'Memphis Grizzlies'),
(40, 'Hassan', 'Whiteside', 'C', '7-0', 265, 'Marshall University', 'Miami Heat'),
(41, 'Goran', 'Dragic', 'PG', '6-3', 190, 'Slovenia', 'Miami Heat'),
(42, 'Kobe', 'Bryant', 'SF', '6-6', 212, '', 'Charlotte Hornets'),
(43, 'Dwight', 'Howard', 'C', '6-11', 265, '', 'Atlanta Hawks'),
(44, 'Kent', 'Bazemore', 'G', '6-5', 201, 'Old Dominoin University', 'Atlanta Hawks'),
(45, 'DeAndre', 'Bembry', 'F-G', '6-6', 210, 'Saint Joseph University', 'Atlanta Hawks'),
(46, 'Jose', 'Calderon', 'G', '6-3', 210, '', 'Atlanta Hawks'),
(47, 'Malcolm', 'Delaney', 'PG', '6-3', 190, 'Virginia Polytechnic Institu and State University', 'Atlanta Hawks'),
(48, 'Mike', 'Dunleavy', 'F-G', '6-9', 220, 'Duke University', 'Atlanta Hawks'),
(49, 'Tim', 'Hardaway', 'G', '6-6', 205, 'University of Michigan', 'Atlanta Hawks'),
(50, 'Kris', 'Humphries', 'F', '6-9', 235, 'University of Minnesota', 'Atlanta Hawks'),
(51, 'Ersan', 'Ilyasova', 'F', '6-9', 235, '', 'Atlanta Hawks'),
(52, 'Ryan', 'Kelly', 'F', '6-11', 230, 'Duke University', 'Atlanta Hawks'),
(53, 'Kyle', 'Korver', 'F', '6-7', 210, 'Creighton University', 'Atlanta Hawks'),
(54, 'Paul', 'Millsap', 'F', '6-8', 245, 'Louisiana Tech University', 'Atlanta Hawks'),
(55, 'Mike', 'Muscala', 'C-PF', '6-11', 239, '', 'Atlanta Hawks'),
(56, 'Gary', 'Neal', 'G', '6-4', 210, 'Towson University', 'Atlanta Hawks'),
(57, 'Lamar', 'Patterson', 'F-G', '6-5', 225, 'University of Pittsburgh', 'Atlanta Hawks'),
(58, 'Taurean', 'Prince', 'F', '6-8', 220, 'Baylor University', 'Atlanta Hawks'),
(59, 'Mike', 'Scott', 'F', '6-8', 237, 'University of Virginia', 'Atlanta Hawks'),
(60, 'Thabo', 'Sefolosha', 'G', '6-5', 215, '', 'Atlanta Hawks'),
(61, 'Edy', 'Tavares', 'C', '7-3', 260, '', 'Atlanta Hawks'),
(62, 'Avery', 'Bradley', 'G', '6-2', 180, 'University of Texas', 'Boston Celtics'),
(63, 'Jaylen', 'Brown', 'F', '6-7', 225, 'University of California', 'Boston Celtics'),
(64, 'Jae', 'Crowder', 'F', '6-7', 240, 'Marquette University', 'Boston Celtics'),
(65, 'Gerald', 'Green', 'F', '6-8', 200, '', 'Boston Celtics'),
(66, 'Demetrius', 'Jackson', 'PG', '6-1', 201, 'University of Notre Dame', 'Boston Celtics'),
(67, 'Jonas', 'Jerebko', 'F', '6-10', 231, '', 'Boston Celtics'),
(68, 'Amir', 'Johnson', 'F', '6-9', 210, '', 'Boston Celtics'),
(69, 'Jordan', 'Mickey', 'F', '6-8', 235, 'Louisianna State University', 'Boston Celtics'),
(70, 'Kelly', 'Olynyk', 'PF-C', '7-0', 238, 'Gonzaga University', 'Boston Celtics'),
(71, 'Terry', 'Rozier', 'PG', '6-2', 190, 'University of Louisville', 'Boston Celtics'),
(72, 'Marcus', 'Smart', 'PG', '6-3', 220, 'Oklahoma State University', 'Boston Celtics'),
(73, 'James', 'Young', 'SG-SF', '6-6', 215, 'University of Kentucky', 'Boston Celtics'),
(74, 'Tyler', 'Zeller', 'F-C', '7-0', 250, 'University of North Carolina', 'Boston Celtics'),
(75, 'Quincy', 'Acy', 'F', '6-7', 233, 'Baylor University', 'Brooklyn Nets'),
(76, 'Anthony', 'Bennett', 'F', '6-8', 240, 'University of Nevada', 'Brooklyn Nets'),
(77, 'Bojan', 'Bogdanovic', 'SF', '6-8', 216, '', 'Brooklyn Nets'),
(78, 'Trevor', 'Booker', 'F', '6-7', 240, 'Clemson University', 'Brooklyn Nets'),
(79, 'Spencer', 'Dinwiddie', 'G', '6-6', 200, 'University of Colorado', 'Brooklyn Nets'),
(80, 'Yogi', 'Ferrell', 'G', '6-0', 180, 'Indiana University', 'Brooklyn Nets'),
(81, 'Randy', 'Foye', 'G', '6-4', 210, 'Villanova University', 'Brooklyn Nets'),
(82, 'Archie', 'Goodwin', 'G', '6-5', 198, 'University of Kentucky', 'Brooklyn Nets'),
(83, 'Justin', 'Hamilton', 'C', '7-0', 260, 'Louisiana State University', 'Brooklyn Nets'),
(84, 'Joe', 'Harris', 'SG', '6-6', 225, 'University of Virginia', 'Brooklyn Nets'),
(85, 'Rondae', 'Hollis-Jefferson', 'F', '6-7', 225, 'University of Arizona', 'Brooklyn Nets'),
(86, 'Sean', 'Kilpatrick', 'G', '6-4', 210, 'University of Cincinnati', 'Brooklyn Nets'),
(87, 'Caris', 'LeVert', 'SG', '6-7', 203, 'University of Michigan', 'Brooklyn Nets'),
(88, 'Jeremy', 'Lin', 'PG', '6-3', 200, 'Harvard University', 'Brooklyn Nets'),
(89, 'Chris', 'McCullough', 'F', '6-11', 200, 'Syracuse University', 'Brooklyn Nets'),
(90, 'K.J.', 'McDaniels', 'SG-SF', '6-6', 200, 'Clemson University', 'Brooklyn Nets'),
(91, 'Andrew', 'Nicholson', 'F', '6-9', 250, 'St. BOnaventure University', 'Brooklyn Nets'),
(92, 'Luis', 'Scola', 'PF', '6-9', 245, '', 'Brooklyn Nets'),
(93, 'Greivis', 'Vasquez', 'G', '6-6', 200, 'University of Maryland', 'Brooklyn Nets'),
(94, 'Isaiah', 'Whitehead', 'G', '6-4', 213, 'Seton Hall University', 'Brooklyn Nets'),
(95, 'Nicolas', 'Batum', 'F', '6-8', 200, '', 'Charlotte Hornets'),
(96, 'Marco', 'Belinelli', 'G', '6-5', 192, '', 'Charlotte Hornets'),
(97, 'Treveon', 'Graham', 'SG', '6-6', 226, 'Virginia Commonwealth University', 'Charlotte Hornets'),
(98, 'Aaron', 'Harrison', 'G', '6-6', 210, 'University of Kentucky', 'Charlotte Hornets'),
(99, 'Spencer', 'Hawes', 'C', '7-0', 245, 'University of Washington', 'Charlotte Hornets'),
(100, 'Roy', 'Hibbert', 'C', '7-2', 278, 'Georgetown University', 'Charlotte Hornets'),
(101, 'Frank', 'Kaminsky', 'C', '7-0', 242, 'University of Wisconsin', 'Charlotte Hornets'),
(102, 'Michael', 'Kidd-Gilchrist', 'F', '6-7', 232, 'University of Kentucky', 'Charlotte Hornets'),
(103, 'Jeremy', 'Lamb', 'F-G', '6-5', 180, 'University of Connecticut', 'Charlotte Hornets'),
(104, 'Johnny', 'O-Bryant', 'PF', '6-9', 256, 'Louisianna State University', 'Charlotte Hornets'),
(105, 'Miles', 'Plumlee', 'F', '6-10', 245, 'Duke University', 'Charlotte Hornets'),
(106, 'Brian', 'Roberts', 'G', '6-1', 180, 'University of Dayton', 'Charlotte Hornets'),
(107, 'Ramon', 'Sessions', 'G', '6-3', 190, 'University of Nevada', 'Charlotte Hornets'),
(108, 'Mike', 'Tobey', 'C', '7-0', 260, 'University of Virgin', 'Charlotte Hornets'),
(109, 'Briante', 'Weber', 'G', '6-2', 165, 'Virginia Commonwealth University', 'Charlotte Hornets'),
(110, 'Marvin', 'Williams', 'F', '6-9', 230, 'University of North Carolina', 'Charlotte Hornets'),
(111, 'Christian', 'Wood', 'F', '6-11', 220, 'University of Nevada', 'Charlotte Hornets'),
(112, 'Cody', 'Zeller', 'PF', '7-0', 240, 'Indiana University', 'Charlotte Hornets');

--
-- Triggers `player`
--
DELIMITER $$
CREATE TRIGGER `on_delete_player` BEFORE DELETE ON `player` FOR EACH ROW BEGIN


UPDATE fan f SET f.FavoritePlayer = NULL WHERE f.FavoritePlayer = OLD.playerid;

DELETE FROM statistics WHERE nba_player = OLD.playerid;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `statid` int(11) NOT NULL,
  `PPG` float NOT NULL,
  `APG` float NOT NULL,
  `RPG` float NOT NULL,
  `FG%` float NOT NULL,
  `TOV` float NOT NULL,
  `FT%` float NOT NULL,
  `BPG` float NOT NULL,
  `3P%` float NOT NULL,
  `PER` float NOT NULL,
  `TS%` float NOT NULL,
  `GP` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `nba_player` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`statid`, `PPG`, `APG`, `RPG`, `FG%`, `TOV`, `FT%`, `BPG`, `3P%`, `PER`, `TS%`, `GP`, `year`, `nba_player`) VALUES
(1, 6.4, 3.8, 3.7, 0.418, 1.8, 0.647, 0.1, 0.207, 13.1, 0.472, 78, 2006, 8),
(2, 10.6, 5.1, 4.2, 0.492, 1.9, 0.611, 0.2, 0.263, 15.6, 0.515, 77, 2007, 8),
(4, 10.1, 1.5, 9.7, 0.499, 1.7, 0.731, 0.9, 0, 14.7, 0.539, 81, 2007, 11),
(5, 19, 6.5, 3.1, 0.429, 3, 0.844, 0.2, 0.368, 16.4, 0.546, 82, 2012, 9),
(6, 11.9, 8.2, 5.2, 0.505, 2.6, 0.642, 0.1, 0.313, 18.8, 0.543, 80, 2008, 8),
(7, 19.3, 8.8, 4.1, 0.433, 3.6, 0.805, 0.5, 0.351, 19.5, 0.524, 82, 2013, 14),
(8, 3.7, 1.9, 1.2, 0.383, 1.2, 0.674, 0, 0.238, 5.8, 0.442, 49, 2013, 15),
(9, 10, 4.1, 2.1, 0.466, 1.9, 0.827, 0.1, 0.351, 15.7, 0.516, 77, 2014, 15),
(10, 17.6, 10, 4.6, 0.445, 3.8, 0.785, 0.6, 0.3, 19.9, 0.523, 79, 2014, 14),
(13, 11, 4.4, 2.6, 0.471, 2.3, 0.791, 0.1, 0.322, 15.5, 0.51, 80, 2015, 15),
(14, 17.9, 6.3, 3.1, 0.451, 3.3, 0.855, 0.2, 0.34, 16.1, 0.533, 79, 2016, 15),
(15, 19.9, 10.2, 4.9, 0.429, 4.1, 0.791, 0.8, 0.351, 19.8, 0.51, 77, 2015, 14),
(18, 11.5, 4.1, 2.6, 0.521, 1.6, 0.832, 0.1, 0.379, 17.6, 0.574, 65, 2011, 12),
(19, 13.9, 4, 2, 0.509, 1.8, 0.882, 0, 0.358, 17.5, 0.574, 79, 2012, 12),
(20, 20.3, 6.3, 2.9, 0.51, 3, 0.85, 0.1, 0.349, 20.5, 0.574, 72, 2013, 12),
(21, 28.9, 5.9, 2.7, 0.528, 2.8, 0.909, 0.2, 0.379, 26.5, 0.625, 76, 2016, 12),
(22, 23.1, 10.7, 4.2, 0.451, 4.1, 0.801, 0.6, 0.327, 23, 0.542, 78, 2016, 14),
(23, 13, 1, 8.1, 0.531, 1.8, 0.817, 1.7, 0, 17.9, 0.568, 82, 2008, 18),
(24, 18.8, 2.3, 8.6, 0.499, 2.5, 0.817, 1.7, 0, 20.1, 0.57, 82, 2009, 18),
(25, 20.4, 1.6, 6, 0.492, 2.1, 0.787, 1.5, 0, 19.3, 0.549, 82, 2010, 18),
(26, 20.5, 2.3, 5.4, 0.531, 2.5, 0.81, 1.7, 0.346, 20.4, 0.578, 75, 2016, 18),
(27, 17.7, 6.1, 4.2, 0.441, 2.3, 0.837, 0.4, 0.333, 16.8, 0.499, 73, 2013, 20),
(28, 17.3, 5.1, 3.5, 0.385, 1.6, 0.827, 0.5, 0.304, 17.6, 0.486, 62, 2014, 20),
(29, 17.9, 7.4, 4.7, 0.423, 2.5, 0.813, 0.2, 0.38, 20.1, 0.567, 79, 2013, 19),
(30, 20.9, 5.2, 4.4, 0.495, 2.1, 0.847, 0.5, 0.371, 20.8, 0.554, 81, 2015, 20),
(31, 23.2, 5.5, 3.9, 0.526, 2.1, 0.847, 0.3, 0.399, 21.3, 0.569, 79, 2016, 20),
(32, 17.8, 6.8, 4.7, 0.412, 2.5, 0.808, 0.2, 0.338, 19.3, 0.527, 70, 2014, 19),
(33, 13.7, 9.8, 4.4, 0.517, 3, 0.621, 0.1, 0.213, 19.1, 0.54, 81, 2009, 8),
(34, 21.2, 6.4, 4.7, 0.427, 2.9, 0.811, 0.4, 0.388, 22.2, 0.578, 77, 2015, 19),
(35, 27.1, 6.3, 6.9, 0.61, 3.5, 0.75, 0.3, 0.379, 29.3, 0.649, 77, 2013, 5),
(36, 25.3, 7.4, 6, 0.535, 3.9, 0.71, 0.7, 0.354, 25.9, 0.577, 69, 2014, 5),
(37, 22.4, 7, 4.8, 0.464, 2.9, 0.819, 0.3, 0.388, 22.9, 0.623, 60, 2016, 19),
(38, 25.3, 6.8, 7.4, 0.52, 3.3, 0.731, 0.6, 0.309, 27.5, 0.588, 76, 2015, 5),
(39, 26.4, 6.8, 8.6, 0.548, 4.1, 0.674, 0.6, 0.363, 27, 0.619, 74, 2016, 5),
(40, 21.7, 2.7, 6.2, 0.497, 1.5, 0.899, 0.6, 0.398, 23.6, 0.603, 80, 2013, 21),
(41, 17.3, 1.9, 5.9, 0.459, 1.1, 0.882, 0.4, 0.38, 19.2, 0.56, 77, 2014, 21),
(42, 23.2, 2.6, 11.1, 0.458, 1.8, 0.822, 1, 0, 21.8, 0.507, 69, 2013, 22),
(46, 18.3, 1.8, 6.5, 0.448, 1.1, 0.893, 0.7, 0.368, 19, 0.555, 75, 2015, 21),
(47, 14.2, 1.5, 6.5, 0.437, 0.7, 0.875, 0.7, 0.378, 17, 0.529, 54, 2016, 21),
(48, 23.4, 1.7, 10.2, 0.466, 1.7, 0.845, 1, 0.352, 22.8, 0.528, 71, 2014, 22),
(49, 13.7, 1.2, 8.6, 0.545, 1.7, 0.65, 0.9, 0, 19.8, 0.572, 80, 2013, 24),
(50, 12.6, 1.2, 8.9, 0.507, 1.6, 0.691, 0.8, 0.125, 18.4, 0.548, 75, 2014, 24),
(51, 18, 1.5, 8.5, 0.513, 1.3, 0.858, 1.1, 0, 22.4, 0.565, 74, 2015, 22),
(52, 12.5, 1.2, 8.7, 0.558, 1.4, 0.613, 0.9, 0.5, 21, 0.577, 67, 2015, 24),
(53, 9.6, 0.9, 7.5, 0.549, 1, 0.693, 0.7, 0, 20.3, 0.589, 61, 2016, 24),
(55, 17.3, 1.9, 7.3, 0.477, 1.4, 0.812, 1.2, 0.411, 18.6, 0.532, 72, 2016, 22),
(56, 13.5, 0.4, 13.2, 0.623, 1.4, 0.418, 1.6, 0, 22.6, 0.599, 81, 2013, 25),
(57, 13.8, 0.7, 13.5, 0.514, 1.5, 0.389, 1.9, 0, 21.4, 0.504, 82, 2014, 25),
(58, 11.4, 3.7, 2.4, 0.467, 1.7, 0.857, 0.2, 0.376, 16.2, 0.575, 80, 2013, 23),
(59, 16.2, 0.8, 14.8, 0.521, 1.9, 0.355, 1.4, 0.333, 21.2, 0.499, 81, 2015, 25),
(60, 13.6, 1.1, 13.8, 0.53, 1.9, 0.386, 1.1, 0.286, 20.9, 0.518, 81, 2016, 25),
(61, 16.1, 5.6, 3.2, 0.473, 2.5, 0.788, 0.3, 0.373, 17.5, 0.575, 45, 2014, 23),
(62, 24, 8.5, 4.3, 0.471, 3.8, 0.885, 0.2, 0.424, 24.1, 0.61, 78, 2013, 28),
(63, 23.8, 7.7, 4.3, 0.487, 3.1, 0.914, 0.2, 0.443, 28, 0.638, 80, 2014, 28),
(64, 14, 4.3, 2.3, 0.486, 1.8, 0.858, 0.1, 0.401, 15.9, 0.591, 74, 2015, 23),
(65, 30.1, 6.7, 5.4, 0.504, 3.3, 0.908, 0.2, 0.454, 31.5, 0.669, 79, 2015, 28),
(66, 25.3, 6.6, 4.5, 0.468, 3, 0.898, 0.2, 0.411, 24.6, 0.624, 79, 2016, 28),
(67, 13.2, 4.6, 2.3, 0.476, 1.7, 0.86, 0.1, 0.417, 15.3, 0.57, 68, 2016, 23),
(68, 13.5, 1.4, 4, 0.633, 2.3, 0.533, 1.2, 0, 20.8, 0.627, 74, 2016, 43),
(69, 13.7, 1.4, 3.4, 0.62, 2.3, 0.489, 1.6, 0, 15.7, 0.604, 71, 2015, 43),
(70, 15.8, 1.2, 2.7, 0.593, 2.8, 0.528, 1.3, 0.5, 19.2, 0.596, 41, 2014, 43),
(71, 25.4, 6.1, 4.7, 0.456, 3.6, 0.866, 0.4, 0.366, 23.5, 0.618, 73, 2013, 6),
(72, 27.4, 7, 5.7, 0.44, 4, 0.868, 0.7, 0.375, 26.7, 0.605, 81, 2014, 6),
(73, 17.6, 2.8, 0.6, 0.358, 2, 0.826, 0.2, 0.285, 14.9, 0.469, 66, 2015, 42),
(74, 29, 7.5, 6.1, 0.439, 4.6, 0.86, 0.6, 0.359, 25.3, 0.598, 82, 2015, 6),
(75, 29.1, 11.2, 8.1, 0.44, 5.7, 0.847, 0.5, 0.347, 27.3, 0.613, 81, 2016, 6),
(76, 22.3, 5.6, 0.7, 0.373, 3.7, 0.813, 0.2, 0.293, 17.6, 0.477, 35, 2014, 42),
(77, 9.5, 1.1, 1.8, 0.487, 1.2, 0.615, 0.8, 0.3, 15.8, 0.512, 50, 2016, 17),
(78, 16.4, 1.5, 2.7, 0.515, 1.7, 0.709, 1.5, 0, 21.6, 0.551, 62, 2015, 17),
(79, 16, 1.5, 2.6, 0.525, 1.6, 0.669, 1.7, 0.167, 21.8, 0.558, 74, 2014, 17),
(80, 13.3, 1.2, 2.7, 0.522, 1.8, 0.669, 1.5, 0, 19, 0.556, 73, 2013, 17),
(81, 9.4, 1, 2.4, 0.482, 1.7, 0.688, 1.7, 0, 17.5, 0.533, 77, 2012, 17),
(82, 12.8, 6.5, 1.1, 0.471, 2.2, 0.629, 0.5, 0.274, 17.2, 0.52, 82, 2016, 30),
(83, 10.7, 6.4, 1.1, 0.436, 2.4, 0.589, 0.3, 0.326, 13.9, 0.478, 73, 2015, 30),
(84, 8.9, 6.5, 1.3, 0.425, 2.5, 0.551, 0.2, 0.262, 13.8, 0.456, 82, 2014, 30),
(85, 18.1, 9.2, 0.7, 0.476, 2.4, 0.892, 0.1, 0.411, 26.2, 0.614, 61, 2016, 31),
(86, 19.5, 10, 0.5, 0.462, 2.6, 0.896, 0.2, 0.371, 26.2, 0.575, 74, 2015, 31),
(87, 19.1, 10.2, 4, 0.485, 2.3, 0.9, 0.2, 0.398, 26, 0.596, 82, 2014, 31),
(88, 19.1, 10.7, 0.6, 0.467, 2.3, 0.855, 0.1, 0.368, 25.9, 0.58, 62, 2013, 31),
(89, 16.9, 9.7, 0.8, 0.481, 2.3, 0.885, 0.1, 0.481, 26.4, 0.594, 70, 2012, 31),
(90, 23.7, 3.3, 0.8, 0.461, 2.9, 0.898, 0.4, 0.394, 20.2, 0.587, 75, 2016, 29),
(91, 23.1, 4.1, 1, 0.418, 3.3, 0.86, 0.4, 0.371, 20.9, 0.557, 81, 2015, 29),
(92, 8.8, 1, 0.7, 0.367, 2, 0.727, 0.2, 0.409, 13, 0.492, 6, 2014, 29),
(93, 21.7, 3.5, 0.8, 0.424, 2.8, 0.864, 0.3, 0.364, 20.1, 0.555, 80, 2013, 29),
(96, 17.4, 4.1, 1.1, 0.419, 2.9, 0.807, 0.6, 0.362, 16.8, 0.531, 79, 2012, 29),
(97, 12.7, 1.2, 3.7, 0.714, 1.4, 0.482, 1.7, 0, 21.8, 0.673, 81, 2016, 32),
(98, 12.7, 1.2, 3.5, 0.703, 1.4, 0.43, 2.3, 0, 20.6, 0.673, 77, 2015, 32),
(99, 11.5, 0.7, 4.8, 0.71, 1.3, 0.397, 2.2, 0.25, 21, 0.638, 82, 2014, 32),
(100, 10.4, 0.9, 4, 0.676, 1.5, 0.428, 2.5, 0, 18.2, 0.63, 82, 2013, 32),
(103, 22.4, 2.9, 0.8, 0.433, 2.1, 0.833, 0.5, 0.36, 17.9, 0.535, 74, 2016, 33),
(104, 21.8, 7.7, 1.4, 0.434, 2.4, 0.829, 0.5, 0.339, 20.3, 0.53, 72, 2015, 33),
(105, 24.2, 3.1, 1.8, 0.444, 2.2, 0.797, 0.4, 0.341, 21.5, 0.531, 40, 2014, 33),
(106, 27.4, 1.2, 1.9, 0.452, 2.6, 0.848, 0.7, 0.402, 24.4, 0.561, 77, 2013, 33),
(107, 13.2, 1, 0.4, 0.43, 0.6, 0.856, 0.2, 0.404, 14.1, 0.588, 60, 2016, 34),
(108, 7.3, 0.6, 0.3, 0.339, 0.6, 0.829, 0.1, 0.325, 9.1, 0.483, 54, 2015, 34),
(109, 13.4, 1, 0.4, 0.366, 1, 0.892, 0.3, 0.369, 14.2, 0.52, 42, 2014, 34),
(110, 17.9, 1.5, 0.5, 0.435, 1.5, 0.825, 0.2, 0.386, 16, 0.564, 64, 2013, 34),
(111, 13.2, 3.6, 2, 0.487, 2.3, 0.723, 0.5, 0.27, 16.3, 0.543, 74, 2016, 35),
(112, 11.3, 1.8, 2.1, 0.429, 1.8, 0.715, 0.4, 0.278, 13.9, 0.482, 81, 2015, 35),
(113, 28, 2.1, 2.3, 0.504, 2.4, 0.802, 2.2, 0.299, 27.5, 0.579, 75, 2016, 36),
(114, 24.3, 1.9, 2.1, 0.493, 2, 0.758, 2, 0.324, 25, 0.559, 61, 2015, 36),
(115, 24.4, 2.2, 2.5, 0.535, 1.4, 0.805, 2.9, 0.083, 30.8, 0.591, 68, 2014, 36),
(116, 20.8, 1.6, 3.1, 0.519, 1.6, 0.791, 2.8, 0.222, 26.5, 0.582, 67, 2013, 36),
(117, 25.1, 2.7, 3.6, 0.542, 2.6, 0.832, 1.3, 0.376, 26, 0.618, 82, 2016, 37),
(118, 18.3, 2, 2.8, 0.542, 2.2, 0.811, 1.3, 0.341, 22.5, 0.59, 82, 2015, 37),
(119, 19.5, 4.6, 0.8, 0.459, 2.2, 0.837, 1.4, 0.388, 20.3, 0.554, 74, 2016, 38),
(120, 16.6, 3.8, 1.1, 0.464, 2.3, 0.829, 1.3, 0.667, 17.7, 0.528, 52, 2015, 38),
(121, 17.4, 3.8, 1.4, 0.494, 2.2, 0.795, 1.6, 0.176, 21.7, 0.558, 81, 2014, 38),
(122, 14.6, 3.6, 1.4, 0.473, 1.9, 0.768, 1.3, 0.182, 18.2, 0.526, 59, 2013, 38),
(123, 20.5, 6.3, 0.4, 0.459, 2.3, 0.859, 0.3, 0.407, 23.2, 0.604, 69, 2016, 39),
(124, 15.3, 6.1, 0.5, 0.422, 1.5, 0.834, 0.3, 0.363, 19.4, 0.538, 56, 2015, 39),
(125, 15.8, 5.4, 0.4, 0.446, 2.2, 0.859, 0.2, 0.386, 18.6, 0.558, 70, 2014, 39),
(126, 17.2, 6, 0.6, 0.45, 2.1, 0.815, 0.2, 0.361, 20, 0.545, 73, 2013, 39),
(127, 17, 0.7, 3.8, 0.557, 2, 0.628, 3.7, 0, 22.6, 0.579, 77, 2016, 40),
(128, 14.2, 0.4, 3.3, 0.606, 1.9, 0.65, 3.7, 0, 25.7, 0.629, 73, 2015, 40),
(133, 11.8, 0.1, 3, 0.628, 1.2, 0.5, 2.6, 0, 26.2, 0.619, 48, 2014, 40),
(134, 20.3, 5.8, 0.8, 0.476, 2.9, 0.79, 0.2, 0.406, 19.8, 0.575, 73, 2016, 41),
(135, 14.1, 5.8, 3.1, 0.477, 2.6, 0.727, 0.2, 0.312, 15.5, 0.537, 72, 2015, 41),
(136, 16.6, 5.3, 1.2, 0.502, 2.3, 1.2, 0.2, 5.3, 18.8, 0.586, 26, 2014, 41),
(137, 16.2, 4.1, 1, 0.501, 2.2, 0.746, 0.2, 0.355, 16.7, 0.573, 52, 2013, 41),
(138, 11, 2.4, 3.2, 0.409, 1.7, 0.708, 0.7, 0.346, 11.5, 0.504, 73, 2016, 44),
(139, 11.6, 2.3, 5.1, 0.441, 1.8, 0.815, 0.5, 0.357, 13.4, 0.551, 75, 2015, 44),
(140, 5.2, 1, 3, 0.426, 1, 0.6, 0.4, 0.364, 9.7, 0.52, 75, 2014, 44),
(141, 13.1, 3.1, 3.3, 0.451, 2.2, 0.644, 0.3, 0.371, 13.3, 0.543, 23, 2013, 44),
(142, 2.7, 0.7, 1.6, 0.485, 0.4, 0.375, 0.1, 0.056, 8.8, 0.481, 38, 2016, 45),
(143, 3.6, 2.2, 1.9, 0.474, 0.9, 0.875, 0, 0.267, 8.7, 0.504, 17, 2016, 46),
(144, 7.6, 4.1, 3.2, 0.552, 1.2, 0.875, 0.9, 0.414, 12.3, 0.571, 72, 2015, 46),
(145, 9.1, 4.7, 3, 0.499, 1.8, 0.906, 0.7, 0.415, 11.3, 0.519, 42, 2014, 46),
(146, 11.4, 4.7, 2.4, 0.584, 1.3, 0.825, 0.1, 0.464, 15.2, 0.596, 81, 2013, 46),
(147, 5.4, 2.6, 1.7, 0.407, 1.3, 0.806, 0, 0.236, 7.5, 0.456, 73, 2016, 47),
(148, 6.5, 0.6, 3.3, 0.542, 0.6, 0.754, 0.5, 0.434, 13.1, 0.587, 32, 2016, 75),
(149, 5.8, 0.5, 3, 0.521, 0.5, 0.735, 0.4, 0.388, 14.7, 0.629, 59, 2015, 75),
(150, 5.2, 1, 4.4, 0.486, 0.9, 0.784, 0.3, 0.3, 11.9, 0.533, 68, 2014, 75),
(151, 5.9, 0.4, 3.6, 0.48, 0.5, 0.667, 0.4, 0.2, 9.6, 0.518, 56, 2013, 75),
(152, 22.9, 5.4, 8.8, 0.541, 2.9, 0.77, 1.9, 0.272, 26.1, 0.599, 80, 2016, 13),
(153, 16.9, 4.3, 7.7, 0.52, 2.6, 0.724, 1.4, 0.257, 18.8, 0.566, 80, 2015, 13),
(154, 12.7, 2.6, 6.7, 0.496, 2.1, 0.741, 1, 0.159, 14.8, 0.552, 81, 2014, 13),
(155, 6.8, 1.9, 4.4, 0.463, 1.6, 0.683, 0.8, 0.347, 10.8, 0.518, 77, 2014, 13);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `tid` int(11) NOT NULL,
  `TeamName` varchar(50) NOT NULL,
  `Conference` varchar(7) NOT NULL,
  `Division` varchar(20) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `HomeStadium` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`tid`, `TeamName`, `Conference`, `Division`, `Location`, `HomeStadium`) VALUES
(12, 'Atlanta Hawks', 'Eastern', 'Southeast', 'Atlanta, GA', 'Philips Arena'),
(0, 'Boston Celtics', 'Eastern', 'Atlantic', 'Boston, MA', 'TD Garden'),
(3, 'Brooklyn Nets', 'Eastern', 'Atlantic', 'Brooklyn, NY', 'Continental Airlines Arena'),
(13, 'Charlotte Hornets', 'Eastern', 'Southeast', 'Charlotte, NC', 'N/A'),
(2, 'Chicago Bulls', 'Eastern', 'Central', 'Chicago, IL', 'United Center'),
(8, 'Cleveland Cavaliers', 'Eastern', 'Central', 'Cleveland, OH', 'Gund Arena'),
(18, 'Dallas Mavericks', 'Western', 'Southwest', 'Dallas, TX', 'American Airlines Center'),
(24, 'Denver Nuggets', 'Western', 'Northwest', 'Denver, CO', 'Pepsi Center'),
(9, 'Detroit Pistons', 'Eastern', 'Central', 'Detroit, MI', 'The Palace of Auburn Hills'),
(29, 'Golden State Warriors', 'Western', 'Pacific', 'Oakland, CA', 'The Arena in Oakland'),
(20, 'Houston Rockets', 'Western', 'Southwest', 'Houston, TX', 'Toyota Center'),
(10, 'Indiana Pacers', 'Eastern', 'Central', 'Indianapolis, IN', 'Conseco Fieldhouse'),
(30, 'Los Angeles Clippers', 'Western', 'Pacific', 'Los Angeles, CA', 'Staples Center'),
(31, 'Los Angeles Lakers', 'Western', 'Pacific', 'Los Angeles, CA', 'Staples Center'),
(21, 'Memphis Grizzlies', 'Western', 'Southwest', 'Memphis, TN', 'FedEx Forum'),
(19, 'Miami Heat', 'Eastern', 'Southeast', 'Miami, FL', 'American Airlines Arean'),
(11, 'Milwaukee Bucks', 'Eastern', 'Central', 'Milwaukee, WI', 'Bradley Center'),
(25, 'Minnesota Timberwolves', 'Western', 'Northwest', 'Minneapolis, MN', 'Target Center'),
(22, 'New Orleans Pelicans', 'Western', 'Southwest', 'New Orleans, LA', 'Ford Center'),
(4, 'New York Knicks', 'Eastern', 'Atlantic', 'New York City, NY', 'Madison Square Garden'),
(26, 'Oklahoma City Thunder', 'Western', 'Northwest', 'Oklahoma City, OK', 'Chesapeake Energy Arena'),
(15, 'Orlando Magic', 'Eastern', 'Southeast', 'Orlando, FL', 'Orlando Arena'),
(5, 'Philadelphia 76ers', 'Eastern', 'Atlantic', 'Philadelphia, PA', 'First Union Center'),
(32, 'Phoenix Suns', 'Western', 'Pacific', 'Phoenix, AZ', 'America West Arena'),
(27, 'Portland Trail Blazers', 'Western', 'Northwest', 'Portland, OR', 'Rose Garden'),
(33, 'Sacramento Kings', 'Western', 'Pacific', 'Sacramento, CA', 'ARCO Arena II'),
(23, 'San Antonio Spurs', 'Western', 'Southwest', 'San Antonio, TX', 'AT&T Center'),
(6, 'Toronto Raptors', 'Eastern', 'Atlantic', 'Toronto, Canada', 'Air Canada Centre'),
(1, 'Utah Jazz', 'Western', 'Northwest', 'Salt Lake City, UT', 'Delta Center'),
(17, 'Washington Wizards', 'Eastern', 'Southeast', 'Washington, D.C.', 'MCI Center');

--
-- Triggers `team`
--
DELIMITER $$
CREATE TRIGGER `on_delete_team` BEFORE DELETE ON `team` FOR EACH ROW BEGIN

UPDATE fan f SET f.FavoriteTeam = NULL WHERE f.FavoriteTeam = OLD.TeamName;

UPDATE player p SET p.team = NULL WHERE p.team = OLD.TeamName;

DELETE FROM GameSchedule WHERE `Team1Name` = OLD.TeamName OR `Team2Name` = OLD.TeamName;  

DELETE FROM Game WHERE `Team1Name` = OLD.TeamName OR `Team2Name` = OLD.TeamName; 


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `on_update_team` BEFORE UPDATE ON `team` FOR EACH ROW BEGIN

UPDATE fan f SET f.FavoriteTeam = NEW.TeamName WHERE f.FavoriteTeam = OLD.TeamName;

UPDATE player p SET p.team = NEW.TeamName WHERE p.team = OLD.TeamName;

UPDATE GameSchedule SET Team1Name = NEW.TeamName WHERE  OLD.TeamName = Team1Name; 

UPDATE GameSchedule SET Team2Name = NEW.TeamName WHERE  OLD.TeamName = Team2Name; 

UPDATE Game SET Team1Name = NEW.TeamName WHERE OLD.TeamName = Team1Name; 

UPDATE Game SET Team2Name = NEW.TeamName WHERE OLD.TeamName = Team2Name; 


END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fan`
--
ALTER TABLE `fan`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `FavoritePlayer` (`FavoritePlayer`),
  ADD KEY `FavoriteTeam` (`FavoriteTeam`);

--
-- Indexes for table `Game`
--
ALTER TABLE `Game`
  ADD PRIMARY KEY (`GameID`),
  ADD KEY `Team1Name` (`Team1Name`),
  ADD KEY `Team2Name` (`Team2Name`);

--
-- Indexes for table `GameSchedule`
--
ALTER TABLE `GameSchedule`
  ADD PRIMARY KEY (`GameID`),
  ADD KEY `Team1Name` (`Team1Name`),
  ADD KEY `Team2Name` (`Team2Name`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`playerid`),
  ADD KEY `teamname` (`team`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`statid`),
  ADD KEY `nba_player` (`nba_player`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Game`
--
ALTER TABLE `Game`
  MODIFY `GameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `playerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `statid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fan`
--
ALTER TABLE `fan`
  ADD CONSTRAINT `fan_ibfk_1` FOREIGN KEY (`FavoritePlayer`) REFERENCES `player` (`playerid`),
  ADD CONSTRAINT `fan_ibfk_2` FOREIGN KEY (`FavoriteTeam`) REFERENCES `team` (`TeamName`);

--
-- Constraints for table `Game`
--
ALTER TABLE `Game`
  ADD CONSTRAINT `Game_ibfk_1` FOREIGN KEY (`Team1Name`) REFERENCES `team` (`TeamName`),
  ADD CONSTRAINT `Game_ibfk_2` FOREIGN KEY (`Team2Name`) REFERENCES `team` (`TeamName`);

--
-- Constraints for table `GameSchedule`
--
ALTER TABLE `GameSchedule`
  ADD CONSTRAINT `GameSchedule_ibfk_1` FOREIGN KEY (`Team1Name`) REFERENCES `team` (`TeamName`),
  ADD CONSTRAINT `GameSchedule_ibfk_2` FOREIGN KEY (`Team2Name`) REFERENCES `team` (`TeamName`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`team`) REFERENCES `team` (`TeamName`);

--
-- Constraints for table `statistics`
--
ALTER TABLE `statistics`
  ADD CONSTRAINT `statistics_ibfk_2` FOREIGN KEY (`nba_player`) REFERENCES `player` (`playerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
