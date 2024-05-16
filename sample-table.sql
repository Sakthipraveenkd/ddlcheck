-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 16, 2024 at 06:58 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eleven_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `edb_agency`
--

DROP TABLE IF EXISTS `edb_agency`;
CREATE TABLE IF NOT EXISTS `edb_agency` (
  `id` int(11) NOT NULL,
  `agency_code` varchar(255) NOT NULL COMMENT 'store the agency code or ID. auto generated  i.e A0001, A0002...',
  `email` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `site_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `edb_agency_managers`
--

DROP TABLE IF EXISTS `edb_agency_managers`;
CREATE TABLE IF NOT EXISTS `edb_agency_managers` (
  `id` int(11) NOT NULL,
  `agency_id` varchar(255) NOT NULL COMMENT 'store the agency id. pk id of the edb_agency table.',
  `email` text COMMENT 'store the manager email address',
  `phone_number` varchar(255) DEFAULT NULL COMMENT 'store the manager phone number',
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active' COMMENT 'store the status of the record. (active/inactive/deleted)',
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `edb_agency_managers_translation`
--

DROP TABLE IF EXISTS `edb_agency_managers_translation`;
CREATE TABLE IF NOT EXISTS `edb_agency_managers_translation` (
  `id` int(11) NOT NULL,
  `agency_manager_id` int(11) NOT NULL COMMENT 'store the agency manager id. pk id of the edb_agency_managers table.',
  `name` varchar(255) NOT NULL COMMENT 'store the manger translation name',
  `site_language` varchar(6) NOT NULL DEFAULT 'en',
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `edb_agency_manager_artists`
--

DROP TABLE IF EXISTS `edb_agency_manager_artists`;
CREATE TABLE IF NOT EXISTS `edb_agency_manager_artists` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL COMMENT 'store the agency id. pk id of the edb_agency table.',
  `agency_manager_id` int(11) NOT NULL COMMENT 'store the agency manger id. pk id of the edb_agency_managers table.',
  `people_id` varchar(255) DEFAULT NULL COMMENT 'store the artist id or people id if artist is present in our system. pk id of edb_people table.',
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `edb_agency_translation`
--

DROP TABLE IF EXISTS `edb_agency_translation`;
CREATE TABLE IF NOT EXISTS `edb_agency_translation` (
  `id` int(11) NOT NULL,
  `agency_id` varchar(255) NOT NULL COMMENT 'store the agency id. pk id of the edb_agency table.',
  `name` varchar(255) NOT NULL,
  `address` text,
  `aka` varchar(255) DEFAULT NULL,
  `site_language` varchar(6) NOT NULL DEFAULT 'en',
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
