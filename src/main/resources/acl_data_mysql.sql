-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 24, 2011 at 01:28 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `acl`
--

--
-- Dumping data for table `acl_sid`
--

INSERT INTO `acl_sid` (`id`, `principal`, `sid`) VALUES
(1, 1, 'john'),
(2, 1, 'jane'),
(3, 1, 'mike');

--
-- Dumping data for table `acl_class`
--

INSERT INTO `acl_class` (`id`, `class`) VALUES
(1, 'org.krams.tutorial.domain.AdminPost'),
(2, 'org.krams.tutorial.domain.PersonalPost'),
(3, 'org.krams.tutorial.domain.PublicPost');

--
-- Dumping data for table `acl_object_identity`
--

INSERT INTO `acl_object_identity` (`id`, `object_id_class`, `object_id_identity`, `parent_object`, `owner_sid`, `entries_inheriting`) VALUES
(1, 1, 1, NULL, 1, 0),
(2, 1, 2, NULL, 1, 0),
(3, 1, 3, NULL, 1, 0),
(4, 2, 1, NULL, 1, 0),
(5, 2, 2, NULL, 1, 0),
(6, 2, 3, NULL, 1, 0),
(7, 3, 1, NULL, 1, 0),
(8, 3, 2, NULL, 1, 0),
(9, 3, 3, NULL, 1, 0);

--
-- Dumping data for table `acl_entry`
--

INSERT INTO `acl_entry` (`id`, `acl_object_identity`, `ace_order`, `sid`, `mask`, `granting`, `audit_success`, `audit_failure`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 1, 1, 1),
(3, 3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 2, 1, 1, 1),
(5, 2, 2, 1, 2, 1, 1, 1),
(6, 3, 2, 1, 2, 1, 1, 1),
(7, 4, 1, 1, 1, 1, 1, 1),
(8, 5, 1, 1, 1, 1, 1, 1),
(9, 6, 1, 1, 1, 1, 1, 1),
(10, 7, 1, 1, 1, 1, 1, 1),
(11, 8, 1, 1, 1, 1, 1, 1),
(12, 9, 1, 1, 1, 1, 1, 1),
(13, 7, 2, 1, 2, 1, 1, 1),
(14, 8, 2, 1, 2, 1, 1, 1),
(15, 9, 2, 1, 2, 1, 1, 1),
(28, 4, 3, 2, 1, 1, 1, 1),
(29, 5, 3, 2, 1, 1, 1, 1),
(30, 6, 3, 2, 1, 1, 1, 1),
(31, 4, 4, 2, 2, 1, 1, 1),
(32, 5, 4, 2, 2, 1, 1, 1),
(33, 6, 4, 2, 2, 1, 1, 1),
(34, 7, 3, 2, 1, 1, 1, 1),
(35, 8, 3, 2, 1, 1, 1, 1),
(36, 9, 3, 2, 1, 1, 1, 1),
(37, 7, 4, 2, 2, 1, 1, 1),
(38, 8, 4, 2, 2, 1, 1, 1),
(39, 9, 4, 2, 2, 1, 1, 1),
(40, 7, 5, 3, 1, 1, 1, 1),
(41, 8, 5, 3, 1, 1, 1, 1),
(42, 9, 5, 3, 1, 1, 1, 1);
