-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2022 at 08:18 AM
-- Server version: 10.3.34-MariaDB-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skyraikc_google`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `btc` varchar(100) NOT NULL,
  `btc_type` varchar(20) NOT NULL,
  `eth` varchar(100) NOT NULL,
  `eth_type` varchar(20) NOT NULL,
  `trx` varchar(100) NOT NULL,
  `trx_type` varchar(20) NOT NULL,
  `ltc` varchar(100) NOT NULL,
  `ltc_type` varchar(20) NOT NULL,
  `doge` varchar(100) NOT NULL,
  `doge_type` varchar(10) NOT NULL,
  `bnb` varchar(100) NOT NULL,
  `bnb_type` varchar(10) NOT NULL,
  `usdt` varchar(100) NOT NULL,
  `usdt_type` varchar(50) NOT NULL,
  `role` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `btc`, `btc_type`, `eth`, `eth_type`, `trx`, `trx_type`, `ltc`, `ltc_type`, `doge`, `doge_type`, `bnb`, `bnb_type`, `usdt`, `usdt_type`, `role`, `date_created`) VALUES
(7, 'Auxbitfund Admin', 'support@aucbitfund.com', '$2y$10$IqPOuebvcAnWE3nharMwDuPUosTF86FKlN2IVgE2vLZV1UOmV80ou', '19hrfWjV43YfGgr7MUuFL21YeBsHeb3gRe', 'BTC', '0xbb27013bfe40ecc9c8c6d5755389e49aba2b4613', 'ERC20', 'TExYncGJ6963PxbyFX3wrknfH4xq8EpBkp', 'TRC20', 'LhNyouwkgJbJHNCjwRpXokjBPYPGQZHBmr', 'LITECOIN', 'DCpNZUU7RuZ2v15HVyBqRGvX3i2SXYxMCz', 'DOGECOIN', '0xbb27013bfe40ecc9c8c6d5755389e49aba2b4613', 'ERC20', '0xbb27013bfe40ecc9c8c6d5755389e49aba2b4619', 'TRC20', 'Admin', '2021-12-30 06:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `t_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `usd_amt` int(50) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `plan` varchar(20) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `int_rate` int(10) NOT NULL,
  `maturity` varchar(50) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `sector` varchar(50) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `bio` text NOT NULL,
  `img` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `testi`
--

CREATE TABLE `testi` (
  `test_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `t_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `usd_amt` float NOT NULL,
  `currency` varchar(100) NOT NULL,
  `account` varchar(10) NOT NULL,
  `trans_id` varchar(100) NOT NULL,
  `r_acn` varchar(10) NOT NULL,
  `plan` varchar(20) NOT NULL,
  `days` varchar(50) DEFAULT NULL,
  `interest` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`t_id`, `user_id`, `usd_amt`, `currency`, `account`, `trans_id`, `r_acn`, `plan`, `days`, `interest`, `type`, `status`, `count`, `date`, `end_date`) VALUES
(1, 4, 3444, 'BTC', '', '3444', '', '', NULL, 0, 'Deposit', 'approved', 0, '2022-01-17 06:21:47', '0000-00-00'),
(2, 5, 2, 'BTC', '', 'Reason Nwokoro', '', '', NULL, 0, 'Deposit', 'pending', 0, '2022-02-07 14:36:01', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `ref_id` varchar(11) NOT NULL,
  `referrer` varchar(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `acn` varchar(10) NOT NULL,
  `btc` varchar(100) NOT NULL,
  `btc_type` varchar(10) NOT NULL,
  `eth` varchar(100) NOT NULL,
  `eth_type` varchar(10) NOT NULL,
  `trx` varchar(100) NOT NULL,
  `trx_type` varchar(10) NOT NULL,
  `ltc` varchar(100) NOT NULL,
  `ltc_type` varchar(20) NOT NULL,
  `doge` varchar(100) NOT NULL,
  `doge_type` varchar(20) NOT NULL,
  `bnb` varchar(100) NOT NULL,
  `bnb_type` varchar(20) NOT NULL,
  `usdt` varchar(100) NOT NULL,
  `usdt_type` varchar(50) NOT NULL,
  `perfect_money` varchar(20) NOT NULL,
  `paypal` varchar(50) NOT NULL,
  `usd_bal` float NOT NULL,
  `inv_cap` float NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `plan` varchar(50) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `activated` int(1) NOT NULL,
  `act_code` varchar(10) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `ref_id`, `referrer`, `name`, `gender`, `acn`, `btc`, `btc_type`, `eth`, `eth_type`, `trx`, `trx_type`, `ltc`, `ltc_type`, `doge`, `doge_type`, `bnb`, `bnb_type`, `usdt`, `usdt_type`, `perfect_money`, `paypal`, `usd_bal`, `inv_cap`, `email`, `password`, `plan`, `phone`, `address`, `state`, `country`, `activated`, `act_code`, `date_created`) VALUES
(1, 'zrxEo', '', 'Linus Ngwee', 'Male', '1736904188', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'linusngwee@yahoo.com', '$2y$10$uKuiXqH7pqKO.Nt158Kp.ehh3CMTdrkCVh6p/FYGsK3ef/iEKDhMi', 'STANDARD', '', '', '', '', 1, 'lgNTy0', '2021-12-30 06:18:30'),
(2, 'eOSsu', '', 'tekkal tekkal', 'Male', '3771726828', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'tekkal@protonmail.com', '$2y$10$Ev0LVQ6qxVTomEMiWXAhG.a8SBUarUy2MY.Pu4H5LpROrAv9Pcw/a', 'STANDARD', '', '', '', '', 1, 'vs3L76', '2022-01-05 08:20:22'),
(3, 'N9uPH', '', 'Ray Global', 'Male', '3529417640', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1000, 0, 'raymondoski7879@gmail.com', '$2y$10$5B6Uz4fXYly/wuBH4g0wHuutYRJ0CH.7FPqvBCfrwPT8Ht4gTtxM2', 'STANDARD', '', '', '', '', 2, 'k6m7wC', '2022-01-11 15:10:58'),
(4, 'xKdVa', '', 'Godsy Godsy', 'Male', '1682142194', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3444, 0, 'goddypius123@gmail.com', '$2y$10$KjXWb45HVzXCzrsaX1PPguUH1tct1HO2CvuSEI9bAIV14eGMswisq', 'STANDARD', '', '', '', '', 2, 'MEYZ8h', '2022-01-17 06:21:47'),
(5, 'gphGS', '', 'Reason Nwokoro', 'Male', '3277709973', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'reasonnwokoro@gmail.com', '$2y$10$RMRvDgqlPltQ8Ngodck/9e4gtmn06IHXt7Zf69uPEv3D.bcOwEMz2', 'STANDARD', '', '', '', '', 1, '9apGgE', '2022-02-07 14:33:41'),
(6, 'Paj3O', '', 'Work Dah', 'Male', '3521506126', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'goodheartforareason@gmail.com', '$2y$10$fdrHnOTK7iD657ZAMN4v8e.Tvs5s9t31mGnAxP94V3wTZBjMrGl2q', 'STANDARD', '', '', '', '', 1, 'vSdqcl', '2022-03-07 14:24:44'),
(7, 'suTeC', 'Hdhdj', 'Fee Pee', 'Male', '1785884251', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'lexavilaa@gmail.com', '$2y$10$g4U0BcLqCjj/boITL5AI/ulf9QX3ntZhSLSk0WSHri1CZhn8bU562', 'STANDARD', '', '', '', '', 1, 'P2tmvh', '2022-05-23 22:35:16'),
(8, 'ORdji', '', 'lee kdlcfa', 'Male', '1454788629', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'frnibe3382@gamezalo.com', '$2y$10$faR7u.2RXQ/PZQY5Rff0geVZgNsLSHW5i3bumEnD1ad7EDkbMW0NS', 'PREMIUM', '', '', '', '', 1, 'ebpm38', '2022-05-29 11:18:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testi`
--
ALTER TABLE `testi`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profit`
--
ALTER TABLE `profit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testi`
--
ALTER TABLE `testi`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
