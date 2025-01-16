-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : database:3306
-- Généré le : mar. 14 jan. 2025 à 17:59
-- Version du serveur : 8.0.32
-- Version de PHP : 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `main_apicardevlm`
--

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

CREATE TABLE `car` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `price` double NOT NULL,
  `engine_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horsepower` int NOT NULL,
  `torque` int NOT NULL,
  `top_speed` double NOT NULL,
  `acceleration` double NOT NULL,
  `fuel_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transmission` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drivetrain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `car`
--

INSERT INTO `car` (`id`, `category_id`, `brand`, `model`, `description`, `year`, `price`, `engine_type`, `horsepower`, `torque`, `top_speed`, `acceleration`, `fuel_type`, `transmission`, `drivetrain`, `weight`, `img_path`) VALUES
(1, 1, 'Ferrari', 'SF90 Stradale', 'A high-performance hybrid supercar.', 2022, 507000, 'V8 Hybrid', 986, 800, 340, 2.5, 'Hybrid', '8-speed dual-clutch', 'AWD', 1570, 'images/default_car_image.jpg'),
(2, 1, 'Lamborghini', 'Aventador SVJ', 'A masterpiece of engineering with a V12 engine.', 2021, 573000, 'V12', 770, 720, 350, 2.8, 'Petrol', '7-speed ISR', 'AWD', 1525, 'images/default_car_image.jpg'),
(3, 1, 'Bugatti', 'Chiron Super Sport', 'A hypercar with exceptional luxury and speed.', 2023, 3850000, 'W16 Quad-Turbo', 1600, 1600, 440, 2.4, 'Petrol', '7-speed dual-clutch', 'AWD', 1995, 'images/default_car_image.jpg'),
(4, 2, 'Porsche', '911 Turbo S', 'A luxury sports car with remarkable performance.', 2022, 230000, 'Flat-6 Twin-Turbo', 640, 800, 330, 2.6, 'Petrol', '8-speed PDK', 'AWD', 1640, 'images/default_car_image.jpg'),
(5, 1, 'Rolls-Royce', 'Phantom', 'The epitome of luxury and elegance.', 2023, 460000, 'V12 Twin-Turbo', 563, 900, 250, 5.1, 'Petrol', '8-speed automatic', 'RWD', 2560, 'images/default_car_image.jpg'),
(6, 2, 'Aston Martin', 'DB11', 'A grand tourer with impeccable British craftsmanship.', 2021, 220000, 'V8 Twin-Turbo', 503, 675, 322, 3.9, 'Petrol', '8-speed automatic', 'RWD', 1875, 'images/default_car_image.jpg'),
(7, 2, 'Bentley', 'Continental GT', 'An elegant coupe with cutting-edge technology.', 2022, 250000, 'W12 Twin-Turbo', 626, 900, 333, 3.7, 'Petrol', '8-speed dual-clutch', 'AWD', 2244, 'images/default_car_image.jpg'),
(8, 2, 'McLaren', '720S', 'A supercar with breathtaking speed and agility.', 2023, 300000, 'V8 Twin-Turbo', 710, 770, 341, 2.8, 'Petrol', '7-speed dual-clutch', 'RWD', 1419, 'images/default_car_image.jpg'),
(9, 1, 'Koenigsegg', 'Jesko', 'An engineering marvel designed for record-breaking speed.', 2023, 2800000, 'V8 Twin-Turbo', 1600, 1500, 482, 2.5, 'E85/Petrol', '9-speed LST', 'RWD', 1420, 'images/default_car_image.jpg'),
(10, 1, 'Pagani', 'Huayra BC', 'An ultra-exclusive hypercar with stunning craftsmanship.', 2022, 3200000, 'V12 Twin-Turbo', 791, 1100, 370, 2.9, 'Petrol', '7-speed sequential', 'RWD', 1350, 'images/default_car_image.jpg'),
(11, 3, 'Renault', 'Clio 3 RS', 'A compact hot hatchback with an aggressive stance and sporty handling. Perfect for driving enthusiasts.', 2006, 12000, 'Petrol', 200, 280, 230, 6.5, 'Petrol', 'Manual 6-speed', 'Front-Wheel Drive', 1200, 'images/default_car_image.jpg'),
(12, 4, 'BMW', 'M3 E30', 'La légendaire première M3, une icône du sport automobile.', 1988, 120000, '4-cylinder S14', 215, 230, 248, 6.7, 'Petrol', '5-speed manual', 'RWD', 1200, 'images/default_car_image.jpg'),
(13, 4, 'Mercedes', '190E 2.5-16 Evolution II', 'Une berline de course homologuée pour la route.', 1990, 180000, '4-cylinder 2.5L', 235, 245, 250, 7.1, 'Petrol', '5-speed manual', 'RWD', 1340, 'images/default_car_image.jpg'),
(14, 4, 'Porsche', '964 Carrera RS', 'Version allégée et sportive de la 911.', 1992, 250000, 'Flat-6', 260, 310, 260, 5.4, 'Petrol', '5-speed manual', 'RWD', 1230, 'images/default_car_image.jpg'),
(15, 4, 'Lancia', 'Delta Integrale Evoluzione', 'Légende du rallye en version routière.', 1992, 150000, '4-cylinder Turbo', 215, 310, 220, 5.7, 'Petrol', '5-speed manual', 'AWD', 1300, 'images/default_car_image.jpg'),
(16, 5, 'Mercedes-Benz', '300SL Gullwing', 'Icône automobile avec ses portes papillon.', 1955, 1500000, 'Inline-6', 215, 275, 260, 8.8, 'Petrol', '4-speed manual', 'RWD', 1295, 'images/default_car_image.jpg'),
(17, 5, 'Ferrari', '250 GTO', 'L\'une des Ferrari les plus prestigieuses de l\'histoire.', 1962, 48000000, 'V12', 300, 294, 280, 6.1, 'Petrol', '5-speed manual', 'RWD', 880, 'images/default_car_image.jpg'),
(18, 5, 'Jaguar', 'E-Type Series 1', 'La plus belle voiture jamais créée selon Enzo Ferrari.', 1961, 200000, 'Inline-6', 265, 353, 241, 7.1, 'Petrol', '4-speed manual', 'RWD', 1315, 'images/default_car_image.jpg'),
(19, 5, 'Aston Martin', 'DB5', 'La voiture de James Bond.', 1963, 990000, 'Inline-6', 282, 390, 233, 8, 'Petrol', '5-speed manual', 'RWD', 1502, 'images/default_car_image.jpg'),
(20, 3, 'Honda', 'NSX Type R', 'Supercar japonaise développée avec Ayrton Senna.', 1992, 180000, 'V6 VTEC', 280, 294, 270, 5.9, 'Petrol', '5-speed manual', 'RWD', 1230, 'images/default_car_image.jpg'),
(21, 3, 'Toyota', 'Supra A80', 'Icône du tuning et de la performance japonaise.', 1994, 120000, '2JZ-GTE Twin-Turbo', 330, 440, 250, 4.6, 'Petrol', '6-speed manual', 'RWD', 1570, 'images/default_car_image.jpg'),
(22, 3, 'Nissan', 'Skyline GT-R R34', 'La légendaire Godzilla.', 1999, 180000, 'RB26DETT Twin-Turbo', 280, 392, 250, 4.9, 'Petrol', '6-speed manual', 'AWD', 1560, 'images/default_car_image.jpg'),
(23, 1, 'Aston Martin', 'Valkyrie', 'Hypercar hybride développée avec Red Bull Racing.', 2023, 3200000, 'V12 Hybrid', 1160, 900, 402, 2.5, 'Hybrid', '7-speed sequential', 'RWD', 1030, 'images/default_car_image.jpg'),
(24, 1, 'McLaren', 'Speedtail', 'Hypercar hybride à trois places avec design unique.', 2022, 2800000, 'V8 Hybrid', 1055, 848, 403, 2.9, 'Hybrid', '7-speed dual-clutch', 'RWD', 1430, 'images/default_car_image.jpg'),
(25, 1, 'Rimac', 'Nevera', 'Hypercar électrique aux performances exceptionnelles.', 2023, 2400000, 'Electric 4 motors', 1914, 2360, 412, 1.85, 'Electric', 'Single-speed', 'AWD', 2150, 'images/default_car_image.jpg'),
(26, 2, 'Ferrari', 'F40', 'Dernière Ferrari approuvée par Enzo Ferrari.', 1992, 2500000, 'V8 Twin-Turbo', 478, 577, 324, 3.8, 'Petrol', '5-speed manual', 'RWD', 1100, 'images/default_car_image.jpg'),
(27, 2, 'Porsche', '959', 'Supercar technologique des années 80.', 1987, 1800000, 'Flat-6 Twin-Turbo', 450, 500, 317, 3.7, 'Petrol', '6-speed manual', 'AWD', 1450, 'images/default_car_image.jpg'),
(28, 2, 'McLaren', 'F1', 'La supercar ultime des années 90.', 1995, 20000000, 'V12', 627, 651, 386, 3.2, 'Petrol', '6-speed manual', 'RWD', 1138, 'images/default_car_image.jpg'),
(29, 3, 'Mitsubishi', 'Lancer Evolution VI TME', 'Edition spéciale Tommi Makinen.', 2000, 80000, '4G63 Turbo', 280, 373, 250, 4.4, 'Petrol', '5-speed manual', 'AWD', 1360, 'images/default_car_image.jpg'),
(30, 3, 'Subaru', 'Impreza 22B STI', 'Rare édition commémorative.', 1998, 200000, 'Flat-4 Turbo', 280, 363, 250, 4.7, 'Petrol', '5-speed manual', 'AWD', 1270, 'images/default_car_image.jpg'),
(31, 3, 'Alpine', 'A110', 'Résurrection moderne d\'une légende française.', 2022, 65000, '4-cylinder Turbo', 252, 320, 250, 4.5, 'Petrol', '7-speed dual-clutch', 'RWD', 1102, 'images/default_car_image.jpg'),
(32, 4, 'Alfa Romeo', 'SZ', 'Le \"Monster\" au design avant-gardiste.', 1990, 75000, 'V6', 210, 245, 245, 7, 'Petrol', '5-speed manual', 'RWD', 1260, 'images/default_car_image.jpg'),
(33, 4, 'Renault', 'Clio Williams', 'Edition limitée hommage à Williams F1.', 1993, 45000, '4-cylinder', 150, 175, 215, 7.8, 'Petrol', '5-speed manual', 'FWD', 990, 'images/default_car_image.jpg'),
(34, 4, 'Volkswagen', 'Corrado VR6', 'Coupé sport innovant.', 1992, 35000, 'VR6', 190, 245, 235, 6.9, 'Petrol', '5-speed manual', 'FWD', 1240, 'images/default_car_image.jpg'),
(35, 5, 'Porsche', '356 Speedster', 'Icône du style Porsche.', 1955, 400000, 'Flat-4', 95, 122, 175, 11.3, 'Petrol', '4-speed manual', 'RWD', 760, 'images/default_car_image.jpg'),
(36, 5, 'Chevrolet', 'Corvette C1', 'Première génération de la légende américaine.', 1957, 150000, 'V8', 283, 359, 210, 7, 'Petrol', '4-speed manual', 'RWD', 1315, 'images/default_car_image.jpg'),
(37, 5, 'Citroën', 'DS21 Pallas', 'La \"Déesse\" révolutionnaire.', 1965, 80000, '4-cylinder', 109, 168, 188, 12, 'Petrol', '4-speed manual', 'FWD', 1320, 'images/default_car_image.jpg'),
(38, 1, 'Pininfarina', 'Battista', 'Hypercar électrique italienne au design époustouflant.', 2022, 2300000, 'Electric 4 motors', 1900, 2300, 350, 1.9, 'Electric', 'Single-speed', 'AWD', 2180, 'images/default_car_image.jpg'),
(39, 1, 'Gordon Murray', 'T.50', 'Supercar avec ventilateur d\'effet de sol.', 2022, 3100000, 'V12', 663, 467, 350, 2.8, 'Petrol', '6-speed manual', 'RWD', 986, 'images/default_car_image.jpg'),
(40, 1, 'Zenvo', 'TSR-S', 'Hypercar danoise avec aileron actif révolutionnaire.', 2023, 1450000, 'V8 Twin-Supercharged', 1177, 1100, 325, 2.8, 'Petrol', '7-speed sequential', 'RWD', 1495, 'images/default_car_image.jpg'),
(41, 2, 'Lamborghini', 'Miura P400 SV', 'La première supercar moderne.', 1971, 3500000, 'V12', 385, 400, 290, 5.8, 'Petrol', '5-speed manual', 'RWD', 1298, 'images/default_car_image.jpg'),
(42, 2, 'Mercedes-Benz', 'CLK GTR', 'Voiture de course homologuée pour la route.', 1998, 10000000, 'V12', 612, 775, 344, 3.8, 'Petrol', '6-speed sequential', 'RWD', 1440, 'images/default_car_image.jpg'),
(43, 2, 'Maserati', 'MC12', 'Version route de la voiture de course GT1.', 2004, 2500000, 'V12', 630, 652, 330, 3.8, 'Petrol', '6-speed sequential', 'RWD', 1335, 'images/default_car_image.jpg'),
(44, 3, 'BMW', 'M2 CS', 'Version ultime de la compacte sportive.', 2020, 95000, 'Inline-6 Twin-Turbo', 450, 550, 280, 4, 'Petrol', '6-speed manual', 'RWD', 1575, 'images/default_car_image.jpg'),
(45, 3, 'Porsche', 'Cayman GT4 RS', 'Version radicale du Cayman.', 2022, 150000, 'Flat-6', 500, 450, 315, 3.4, 'Petrol', '7-speed PDK', 'RWD', 1415, 'images/default_car_image.jpg'),
(46, 3, 'Alfa Romeo', 'Giulia GTAm', 'Version extrême de la berline sportive.', 2021, 180000, 'V6 Twin-Turbo', 540, 600, 300, 3.6, 'Petrol', '8-speed automatic', 'RWD', 1520, 'images/default_car_image.jpg'),
(47, 4, 'Peugeot', '205 GTI 1.9', 'La hot hatch française par excellence.', 1989, 35000, '4-cylinder', 130, 165, 210, 7.6, 'Petrol', '5-speed manual', 'FWD', 880, 'images/default_car_image.jpg'),
(48, 4, 'Toyota', 'MR2 Turbo SW20', 'La mini-Ferrari japonaise.', 1992, 40000, '4-cylinder Turbo', 245, 304, 250, 5.9, 'Petrol', '5-speed manual', 'RWD', 1220, 'images/default_car_image.jpg'),
(49, 4, 'Ford', 'Escort RS Cosworth', 'Icône du rallye avec double aileron.', 1992, 70000, '4-cylinder Turbo', 227, 304, 250, 6.1, 'Petrol', '5-speed manual', 'AWD', 1275, 'images/default_car_image.jpg'),
(50, 5, 'BMW', '507', 'Rare roadster des années 50.', 1957, 2500000, 'V8', 150, 222, 200, 8.8, 'Petrol', '4-speed manual', 'RWD', 1330, 'images/default_car_image.jpg'),
(51, 5, 'Shelby', 'Cobra 427', 'Le muscle car ultime.', 1965, 1800000, 'V8', 425, 651, 264, 4.2, 'Petrol', '4-speed manual', 'RWD', 1070, 'images/default_car_image.jpg'),
(52, 5, 'Lamborghini', '350 GT', 'La première Lamborghini de route.', 1964, 800000, 'V12', 270, 325, 250, 6.8, 'Petrol', '5-speed manual', 'RWD', 1450, 'images/default_car_image.jpg'),
(53, 1, 'Lotus', 'Evija', 'Hypercar électrique britannique.', 2023, 2000000, 'Electric 4 motors', 2000, 1700, 320, 2.9, 'Electric', 'Single-speed', 'AWD', 1680, 'images/default_car_image.jpg'),
(54, 1, 'Hennessey', 'Venom F5', 'Hypercar américaine visant les records.', 2022, 2100000, 'V8 Twin-Turbo', 1817, 1617, 484, 2.6, 'Petrol', '7-speed automated manual', 'RWD', 1385, 'images/default_car_image.jpg'),
(55, 1, 'Czinger', '21C', 'Hypercar imprimée en 3D.', 2023, 1700000, 'V8 Hybrid', 1250, 1250, 380, 1.9, 'Hybrid', '7-speed sequential', 'AWD', 1250, 'images/default_car_image.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Prestige'),
(2, 'Collection'),
(3, 'Sport'),
(4, 'Youngtimer'),
(5, 'Oldtimer');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250114144941', '2025-01-14 14:50:17', 379),
('DoctrineMigrations\\Version20250114151930', '2025-01-14 15:20:22', 159);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int NOT NULL,
  `car_id` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `car_id`, `url`) VALUES
(1, 1, 'https://www.ferrari.com/sites/ferrari16/files/styles/og_image/public/2022-12/SF90-Stradale_1.jpg'),
(2, 2, 'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/model/aventador-svj/lp770-4-svj_hero.jpg'),
(3, 3, 'https://www.bugatti.com/fileadmin/_processed_/f/0/csm_bugatti_chiron_super_sport_300_edition_2020_03_b9a3218c64.jpg'),
(4, 4, 'https://files.porsche.com/filestore/image/multimedia/none/911-turbo-s-992-hero/image/eb27d69f-b741-11e9-80e4-005056bbdc38/porsche-911-turbo-s-992-hero.jpg'),
(5, 5, 'https://www.rolls-roycemotorcars.com/sites/default/files/rolls-royce-style/images/phantom-8.jpg'),
(6, 6, 'https://cdn.astonmartin.com/-/media/astonmartin.com/our-cars/db11/db11-hero.jpg'),
(7, 7, 'https://www.bentleymotors.com/content/dam/bentley/motors/2022/continental-gt/overview/continental-gt-mashup-hero.jpg'),
(8, 8, 'https://cars.mclaren.com/sites/mclaren/files/720s-hero.jpg'),
(9, 9, 'https://koenigsegg.com/wp-content/uploads/2020/10/Jesko-Power-1000px-1.jpg'),
(10, 10, 'https://www.pagani.com/wp-content/uploads/2020/11/huayra-bc.jpg'),
(11, 11, 'https://cdn.renault.com/wp-content/uploads/2021/02/Clio3-RS.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `car_id` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `review`
--

INSERT INTO `review` (`id`, `car_id`, `content`, `rating`, `created_at`) VALUES
(75, 1, 'An absolute beast on the road. Worth every penny!', 5, '2025-01-12 14:00:00'),
(76, 1, 'The driving dynamics are unmatched. Truly a Ferrari.', 5, '2025-01-11 10:30:00'),
(77, 2, 'The design is breathtaking, and the power is insane.', 5, '2025-01-10 17:45:00'),
(78, 3, 'Pure adrenaline with every drive. A dream car.', 5, '2025-01-09 16:20:00'),
(79, 3, 'Unparalleled luxury and performance. Bugatti nailed it.', 5, '2025-01-08 11:00:00'),
(80, 3, 'The best hypercar I’ve ever experienced.', 5, '2025-01-07 13:15:00'),
(81, 4, 'Refined, powerful, and simply perfect.', 5, '2025-01-06 09:45:00'),
(82, 4, 'A must-have for any Porsche enthusiast.', 4, '2025-01-05 12:30:00'),
(83, 5, 'Luxury redefined. The comfort is out of this world.', 5, '2025-01-04 15:00:00'),
(84, 5, 'British engineering at its finest.', 4, '2025-01-03 18:40:00'),
(85, 6, 'Incredible speed and handling. Ferrari at its best!', 5, '2025-01-12 14:00:00'),
(86, 6, 'Stylish and powerful, but a bit too loud for city driving.', 4, '2025-01-11 10:30:00'),
(87, 7, 'The raw power and aggressive design are unmatched.', 5, '2025-01-10 17:45:00'),
(88, 7, 'A track monster, but not very comfortable for daily use.', 4, '2025-01-09 16:20:00'),
(89, 8, 'An engineering marvel. Worth every cent.', 5, '2025-01-08 11:00:00'),
(90, 8, 'Unbelievable performance but impractical for regular use.', 4, '2025-01-07 13:15:00'),
(91, 9, 'Hybrid power with McLaren precision. Fantastic!', 5, '2025-01-06 09:45:00'),
(92, 9, 'Cutting-edge technology but lacks the V8 roar.', 4, '2025-01-05 12:30:00'),
(93, 10, 'Feels like driving a Formula 1 car on the road.', 5, '2025-01-04 15:00:00'),
(94, 10, 'Extreme performance but not practical at all.', 4, '2025-01-03 18:40:00'),
(95, 11, 'A fun little car with a sporty edge. Handles like a dream!', 5, '2025-01-13 10:00:00'),
(96, 11, 'Great performance for its size. The sound of the engine is fantastic!', 4, '2025-01-12 16:45:00'),
(97, 11, 'Perfect balance between practicality and performance. A real driver’s car.', 5, '2025-01-11 18:30:00'),
(98, 12, 'first nice review', 10, '2025-01-14 13:43:53');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_773DE69D12469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045FC3C6F69F` (`car_id`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_794381C6C3C6F69F` (`car_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `car`
--
ALTER TABLE `car`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `FK_773DE69D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045FC3C6F69F` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`);

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C6C3C6F69F` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
