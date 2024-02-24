-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Oca 2024, 21:27:36
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `demo`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` text NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`Aid`, `name`, `email`, `password`, `location`, `address`) VALUES
(42, 'Abdikarim', 'Abdikarim@gmail.com', '$2y$10$kzrICSkEyU8O28A7hzzk5uikQs6bI4H8.e87171u.qT3Ts2/BEgui', 'Bartin', 'bartin merkez'),
(43, 'Abdikarim', 'Abdikarim7@gmail.com', '$2y$10$jt2uM/fW/HEBX1gXseb8kOERHIcGoCKwhHIVCsDekEPmrbUQ7n.nG', 'Istanbul', 'istanbuloffice'),
(44, 'Majid', 'majid@gmail.com', '$2y$10$sWAeEj.s7rZSRuGLQvcpU.XXXbw5DWx5gZS7PBARYs1Vqxksh3WoW', 'Istanbul', 'IstanulHome'),
(45, 'Hanı', 'Hani@gmail.com', '$2y$10$oLptJWWPH3AYpOHm9or/GOLq2b721Oge79eWiD3L7raUiF9aoMG6S', 'Bartin', 'BartinMekz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fedback`
--

CREATE TABLE `fedback` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `fedback`
--

INSERT INTO `fedback` (`id`, `first_name`, `email`, `message`) VALUES
(6, 'kadro', 'kadro@gmail.com', 'gida bagis yaptim'),
(7, 'kadro', 'kadro@gmail.com', 'terkra gida bagida yapbilirim '),
(8, 'kerim', 'kerim@gmail.com', 'waaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gida_bagislari`
--

CREATE TABLE `gida_bagislari` (
  `Fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `food` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `category` text NOT NULL,
  `quantity` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `address` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `phoneno` varchar(25) NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `delivery_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `gida_bagislari`
--

INSERT INTO `gida_bagislari` (`Fid`, `name`, `email`, `food`, `type`, `category`, `quantity`, `date`, `address`, `location`, `phoneno`, `assigned_to`, `delivery_by`) VALUES
(91, 'kadro', 'kadro@gmail.com', 'makarna', 'Non-veg', 'packed-food', '1kg', '2024-01-16 08:07:55', 'bartinMekeziHome', 'Bartin', '3333333333', 42, 37),
(92, 'kadro', 'kadro@gmail.com', 'makarna', 'Non-veg', 'packed-food', '1kg', '2024-01-16 08:07:59', 'bartinMekeziHome', 'Bartin', '3333333333', 42, NULL),
(93, 'kadro', 'kadro@gmail.com', 'makarna', 'Non-veg', 'raw-food', '1kg', '2024-01-16 08:09:46', 'bartinMekezi2', 'Bartin', '7654323456', 42, NULL),
(94, 'kadro', 'kadro@gmail.com', 'makarna', 'veg', 'raw-food', '1kg', '2024-01-16 08:12:17', 'bartinMekezi2', 'Bartin', '3456723456', 42, NULL),
(95, 'kadro', 'kadro@gmail.com', 'hampeger', 'veg', 'raw-food', '2kg', '2024-01-16 08:47:01', 'bartinMekeziHome', 'Bartin', '2345678566', 42, NULL),
(96, 'kadro', 'kadro@gmail.com', 'cunto', 'Non-veg', 'raw-food', '1kg', '2024-01-16 09:33:10', 'bartinMekeziHome', 'Bartin', '7654323456', NULL, NULL),
(97, 'kadro', 'kadro2@gmail.com', 'doner', 'sebze', 'çiğ-gida', '12kg', '2024-01-16 15:40:28', 'bartinMekeziHome', '', '1111111111', NULL, NULL),
(98, 'Abdikarim', 'Abdikarim@gmail.com', 'Hilip', '', 'pişmiş-yemek', '1kg', '2024-01-16 15:54:39', 'bartinMekeziHome', 'Bartin', '2222222222', NULL, NULL),
(99, 'kadro', 'kadro1@gmail.com', 'doner', 'sebze', 'çiğ-gida', '1kg', '2024-01-16 15:56:03', 'bartinMekeziHome', 'Bartin', '7654323456', NULL, NULL),
(100, 'kadro3', 'kadro3@gmail.com', 'Canjero', '', 'pişmiş-yemek', '2kg', '2024-01-16 16:20:14', 'bartinkermez12', 'Bartin', '3456723456', NULL, NULL),
(101, 'kadro3', 'kadro3@gmail.com', 'Hilip', '', 'çiğ-gida', '1kg', '2024-01-16 16:20:57', 'Bartın kermezk1', 'Bartin', '3333333333', NULL, NULL),
(102, 'kadro3', 'kadro3@gmail.com', 'makarna11', '', 'çiğ-gida', '12kg', '2024-01-16 16:21:37', 'bartinMekezi2', 'Bartin', '2345678566', NULL, NULL),
(103, 'kadro3', 'kadro3@gmail.com', 'doner', '', 'çiğ-gida', '12kg', '2024-01-16 16:24:12', 'Bartın kermezk1', 'Bartin', '2345678566', NULL, NULL),
(104, 'kadro3', 'kadro3@gmail.com', 'makarna', '', 'çiğ-gida', '12kg', '2024-01-16 16:25:43', 'Bartın kermezk1', 'Bartin', '3333333333', NULL, NULL),
(105, 'kadro3', 'kadro3@gmail.com', 'makarna', '', 'çiğ-gida', '10kg', '2024-01-16 16:30:33', 'bartinhoem', 'Bartin', '1111111111', NULL, NULL),
(106, 'kadro3', 'kadro3@gmail.com', 'makarna', '', 'çiğ-gida', '1kg', '2024-01-16 16:31:09', 'bartin', 'Bartin', '2222222222', NULL, NULL),
(107, 'kadro3', 'kadro3@gmail.com', 'doner', 'sebze', 'paketlenmiş-gida', '10kg', '2024-01-16 16:32:05', 'Bartın kermezk1', 'Bartin', '3456723456', NULL, NULL),
(108, 'kadro', 'kadro1@gmail.com', 'makarna', '', 'çiğ-gida', 'erty', '2024-01-16 16:35:03', 'Bartın kermezk1', 'Bartin', '2222222222', NULL, NULL),
(109, 'kadro', 'kadro1@gmail.com', 'makarna', 'sebze', 'çiğ-gida', '12kg', '2024-01-16 16:53:14', 'Bartın kermezk1', 'Bartin', '7654323456', NULL, NULL),
(110, 'kadro7', 'kadro7@gmail.com', 'makarna', 'sebze', 'çiğ-gida', '2kg', '2024-01-16 16:54:25', 'bartinhomw', 'Bartin', '3333333333', NULL, NULL),
(111, 'Hasan7', 'Hassan7@gmail.com', 'makarna', 'sebze', 'paketlenmiş-gida', '1kg', '2024-01-16 17:28:16', 'IstanbulHome', 'istanbul', '1111111111', 44, 39),
(112, 'Hanad', 'Hanad@gmail.com', 'makarna', 'sebze', 'çiğ-gida', '1kg', '2024-01-17 12:03:57', 'bartinMekeziHome', 'Bartin', '2345678566', NULL, NULL),
(113, 'Hanad', 'Hanad@gmail.com', 'doner', 'sebze', 'çiğ-gida', '2kg', '2024-01-17 12:07:37', 'istabulhome', 'istanbul', '3456723456', NULL, NULL),
(114, 'Hanad', 'Hanad@gmail.com', 'CuntoCayrin', 'sebze', 'paketlenmiş-gida', '1kg', '2024-01-17 12:10:18', 'Ankara MekeziHome', 'Ankara', '2222222222', NULL, NULL),
(115, 'Hanad', 'Hanad1@gmail.com', 'doner', 'sebze', 'pişmiş-yemek', '2kg', '2024-01-17 12:36:45', 'bartinhtr', 'Bartin', '3456723456', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `gender`) VALUES
(127, 'kadro', 'kadro@gmail.com', '$2y$10$gcQGCJ4wFxcP.KoPNh0wWuLCv3dvmXoT1zSqiCNY3Az5TPag8JFFy', 'female'),
(139, 'kerim', 'kerim@gmail.com', '$2y$10$XIuaT3awJijsoFMHm8XKvOPAzbTy4/jPnkpYOj.GexFBK5odCAtie', 'Bay'),
(138, 'muhamed', 'muhamed@gmail.com', '$2y$10$t0CSv5N/N5DPRnCguHwX4eztHGDJza4FCowQGF/S.bjTscAemmLZ.', ''),
(140, 'umaya', 'Umaya@gmail.com', '$2y$10$N/yNpAlM9A/Up6PaubzWoOkxsJpy/oMKPmH7d2Ty0AD0WEE1pdN1G', 'Bay');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teslimat_personeli`
--

CREATE TABLE `teslimat_personeli` (
  `Did` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `teslimat_personeli`
--

INSERT INTO `teslimat_personeli` (`Did`, `name`, `email`, `password`, `city`) VALUES
(37, 'Hassan', 'Hassan@gmail.com', '$2y$10$VovK72Ov.iLlHLETaTpYUu0imfbI2.5tyAiCEAx8rHdRzaRoZNHJa', 'Bartin'),
(38, 'Hassan2', 'Hassan1@gmail.com', '$2y$10$lnjDU3KKIETqCqNwWK2L8O4R7PGgJfa5EVyx2.iDT30mGYHjcdfH6', 'Bartin'),
(39, 'Dahir', 'Dahir@Gmail.com', '$2y$10$NcxEemKLznmoFp/UHtWh8ujVF8/vW8GVth4jS3cDoLATtvD/uQCPm', 'Istanbul'),
(40, 'Ali', 'Ali1@gmail.com', '$2y$10$TGXK1ACtGtoNbMyMRldrhunyOsLroEFqzt9TX.v.HGwajb9CU1caq', 'Sakarya'),
(41, 'Deaf', 'Deaf@gmail.com', '$2y$10$oBxg0V6xswZlECrwFxGxzeqsGx2UT6dLEgVlwFzRDO8Cx3/TPo6Gu', 'Bartin'),
(42, 'raani', 'raani@gmai.com', '$2y$10$XGeRjlA9MLWizdVTGm.ANeBfjYifxHUmCFAAEXloQdZWnTxtR4cPO', 'Bartin'),
(43, 'Hassan7', 'Hassan7@gmail.com', '$2y$10$pnAOcjcGQV/UFwWfrJVNTumCTY/MLCRd.fkSnbGoYNs0m63gO5rwm', 'Sakarya'),
(44, 'Aya', 'Aya@gmail.com', '$2y$10$tB6EHlF.F9DuuJL554qvg.J5r8uOE34Kkk9.GgNKb7rMAuxRISqB.', 'Bartin'),
(45, 'Majid5', 'majid4@gmail.com', '$2y$10$DRf46OroXdodgUPsXQqyDePWWPUeNLalh4TdQhLvXOwlMFLJl8jhO', 'Bartin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `fedback`
--
ALTER TABLE `fedback`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gida_bagislari`
--
ALTER TABLE `gida_bagislari`
  ADD PRIMARY KEY (`Fid`);

--
-- Tablo için indeksler `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Tablo için indeksler `teslimat_personeli`
--
ALTER TABLE `teslimat_personeli`
  ADD PRIMARY KEY (`Did`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `fedback`
--
ALTER TABLE `fedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `gida_bagislari`
--
ALTER TABLE `gida_bagislari`
  MODIFY `Fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Tablo için AUTO_INCREMENT değeri `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- Tablo için AUTO_INCREMENT değeri `teslimat_personeli`
--
ALTER TABLE `teslimat_personeli`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
