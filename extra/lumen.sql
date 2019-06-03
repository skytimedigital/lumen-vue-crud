-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2019 at 03:53 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Dictum Cursus', 'pharetra.nibh@Quisque.org', '1-393-439-1809', '2018-01-22 13:17:58', '2019-06-02 23:06:54'),
(2, 'Duis gravida.', 'lorem.eu.metus@Sednulla.ca', '1-452-793-0618', '2018-02-15 17:01:31', '2019-05-28 14:21:53'),
(3, 'bibendum ullamcorper.', 'Fusce@laciniaat.ca', '1-590-446-9071', '2018-06-05 19:35:01', '2019-01-18 00:21:01'),
(4, 'Curae; Phasellus', 'pellentesque.eget.dictum@Aliquam.net', '1-336-382-7931', '2018-09-13 12:46:11', '2019-01-21 00:57:27'),
(5, 'ipsum cursus', 'pellentesque.tellus@tellusimperdiet.org', '1-677-400-4857', '2018-01-29 10:37:52', '2019-05-05 09:16:13'),
(6, 'Curae; Donec', 'Nulla@amalesuada.edu', '1-755-240-8546', '2018-12-23 12:14:41', '2019-02-22 02:25:02'),
(7, 'suscipit nonummy.', 'primis.in@dolordapibusgravida.com', '1-824-535-8039', '2018-08-30 16:12:35', '2019-02-26 23:36:05'),
(8, 'Fusce dolor', 'dignissim@Aliquam.org', '1-870-494-1149', '2018-07-20 00:40:56', '2019-03-09 10:56:42'),
(9, 'in, hendrerit', 'ut.mi.Duis@cubiliaCurae.net', '1-118-299-1282', '2018-07-24 17:33:31', '2019-04-24 09:07:25'),
(10, 'augue scelerisque', 'sit.amet@neque.co.uk', '1-275-587-1090', '2018-06-22 01:34:27', '2019-06-02 23:50:22'),
(11, 'iaculis odio.', 'sit@vitaealiquetnec.com', '1-355-541-2061', '2018-07-23 07:32:29', '2019-02-20 21:17:03'),
(12, 'eu erat', 'Nunc.commodo@infaucibus.ca', '1-547-848-2084', '2018-12-20 09:18:58', '2019-04-27 20:50:25'),
(13, 'Fusce aliquam,', 'ac.urna.Ut@euismodacfermentum.net', '1-781-389-5433', '2018-10-14 13:01:50', '2019-01-12 18:19:22'),
(14, 'augue porttitor', 'dolor.Donec.fringilla@sociisnatoquepenatibus.com', '1-235-546-4809', '2018-01-30 15:06:40', '2019-04-30 11:22:06'),
(15, 'dolor sit', 'sem.semper.erat@nisiMaurisnulla.ca', '1-987-795-9288', '2018-05-10 21:06:34', '2019-05-30 21:36:50'),
(16, 'et ultrices', 'urna.nec.luctus@luctuset.com', '1-812-826-6589', '2018-06-14 19:40:35', '2019-05-16 18:29:35'),
(17, 'Suspendisse aliquet', 'Integer.vulputate@consectetuermauris.edu', '1-784-970-4422', '2018-05-19 05:50:07', '2019-04-27 17:18:24'),
(18, 'Donec consectetuer', 'dolor@atpede.org', '1-297-553-6359', '2018-09-16 03:47:28', '2019-01-05 11:33:06'),
(19, 'Lorem ipsum', 'Donec.felis.orci@luctusvulputatenisi.edu', '1-539-742-9385', '2018-02-03 11:19:12', '2019-04-17 06:51:09'),
(20, 'vulputate eu,', 'suscipit.est@doloregestasrhoncus.ca', '1-704-302-9524', '2018-09-05 01:40:03', '2019-04-29 18:30:29'),
(21, 'nunc sed', 'Quisque@Duisvolutpatnunc.edu', '1-223-469-4229', '2018-02-04 21:48:10', '2019-01-03 07:54:00'),
(22, 'eros. Nam', 'dui@necmetusfacilisis.co.uk', '1-946-238-0365', '2018-06-26 20:24:14', '2019-05-15 10:20:39'),
(23, 'fringilla euismod', 'risus.Morbi@dictumsapienAenean.net', '1-696-735-1295', '2018-12-06 00:06:01', '2019-04-29 04:27:25'),
(24, 'eros. Nam', 'quam.elementum@tellusnonmagna.com', '1-706-713-6280', '2018-08-19 10:29:42', '2019-03-06 03:00:25'),
(25, 'pede sagittis', 'magnis.dis@CrasinterdumNunc.co.uk', '1-360-369-3758', '2018-11-12 07:29:31', '2019-04-24 08:21:15'),
(26, 'magna nec', 'Class@nonlorem.com', '1-405-410-7843', '2018-11-20 04:26:52', '2019-03-02 00:14:52'),
(27, 'molestie. Sed', 'diam@tortorNunc.net', '1-758-403-2639', '2018-08-29 23:55:39', '2019-03-10 15:40:22'),
(28, 'odio semper', 'dolor.sit.amet@IncondimentumDonec.co.uk', '1-377-785-4581', '2018-08-12 12:01:29', '2019-04-18 12:53:47'),
(29, 'ante. Vivamus', 'sem.mollis.dui@adlitoratorquent.com', '1-360-239-3818', '2018-05-03 17:38:35', '2019-01-12 08:18:40'),
(30, 'elit. Nulla', 'tortor@adipiscingfringilla.net', '1-776-274-2446', '2018-04-22 05:44:11', '2019-02-22 08:04:41'),
(31, 'Lorem ipsum', 'vulputate.ullamcorper.magna@ametluctusvulputate.com', '1-752-908-7200', '2018-12-01 19:42:29', '2019-02-13 18:17:37'),
(32, 'semper et,', 'sociis.natoque@velitPellentesque.co.uk', '1-845-262-5220', '2018-07-11 00:48:31', '2019-04-12 12:21:25'),
(33, 'semper egestas,', 'sed.sem.egestas@Praesenteu.org', '1-996-953-6491', '2018-06-08 22:01:48', '2019-02-17 11:40:52'),
(34, 'sodales. Mauris', 'Sed.id.risus@pede.edu', '1-385-446-0192', '2018-10-20 14:12:12', '2019-03-03 12:39:24'),
(35, 'sit amet', 'aliquet@tellus.co.uk', '1-322-209-8828', '2018-06-24 22:19:26', '2019-04-04 20:34:31'),
(36, 'elementum purus,', 'Etiam.vestibulum.massa@est.edu', '1-275-855-1600', '2018-12-11 15:51:28', '2019-04-02 18:10:44'),
(37, 'sem ut', 'non.sapien@senectuset.co.uk', '1-729-628-6576', '2018-02-09 07:31:05', '2019-05-07 16:13:16'),
(38, 'Suspendisse tristique', 'sed@a.edu', '1-418-888-9728', '2018-12-29 00:24:41', '2019-02-04 07:19:21'),
(39, 'orci, adipiscing', 'placerat.Cras.dictum@Cumsociisnatoque.edu', '1-126-109-1218', '2018-02-27 23:22:32', '2019-01-04 14:17:09'),
(40, 'feugiat. Lorem', 'urna@lobortisaugue.net', '1-371-782-1262', '2018-12-30 18:59:52', '2019-05-24 21:51:57'),
(41, 'magna. Duis', 'lectus.pede.et@sem.edu', '1-514-984-3872', '2018-11-04 09:12:50', '2019-03-11 03:39:55'),
(42, 'vitae velit', 'risus@tinciduntcongue.ca', '1-468-814-1440', '2018-07-24 15:59:53', '2019-04-25 08:42:28'),
(43, 'mauris. Integer', 'enim.Suspendisse.aliquet@Etiam.ca', '1-632-649-3277', '2018-04-21 08:43:43', '2019-01-30 22:12:10'),
(44, 'Phasellus at', 'luctus.felis.purus@eu.co.uk', '1-311-732-6249', '2018-05-24 17:58:15', '2019-05-10 02:27:38'),
(45, 'sapien. Cras', 'eros@egestasa.com', '1-383-248-0125', '2018-03-19 22:36:30', '2019-03-14 17:12:51'),
(46, 'odio sagittis', 'purus@tristique.edu', '1-595-833-7954', '2018-02-11 16:49:51', '2019-04-23 04:23:19'),
(47, 'Sed nunc', 'diam.Proin.dolor@lacusQuisquepurus.edu', '1-438-521-2147', '2018-07-16 23:11:53', '2019-04-08 21:00:36'),
(48, 'a feugiat', 'velit.justo@idenimCurabitur.co.uk', '1-627-198-5124', '2018-09-25 01:53:25', '2019-03-13 15:58:38'),
(49, 'quam, elementum', 'justo.Proin.non@ultricesDuis.org', '1-166-955-2450', '2018-07-18 05:04:03', '2019-05-29 07:49:24'),
(50, 'feugiat metus', 'Aliquam@Proineget.net', '1-153-643-4336', '2018-09-07 18:32:14', '2019-02-15 07:19:06'),
(51, 'felis ullamcorper', 'ante.iaculis@dictumsapien.co.uk', '1-330-303-7648', '2018-03-27 04:37:24', '2019-05-09 01:49:08'),
(52, 'nec, eleifend', 'Sed@purus.ca', '1-951-248-9604', '2018-05-18 18:04:10', '2019-03-26 07:47:02'),
(53, 'ante dictum', 'Donec@Nullam.net', '1-814-842-8821', '2018-02-08 01:13:46', '2019-02-18 13:00:30'),
(54, 'Cum sociis', 'Fusce.aliquam@portaelita.com', '1-908-133-9327', '2018-03-29 20:59:16', '2019-01-27 09:32:09'),
(55, 'egestas ligula.', 'adipiscing.ligula@aliquetvel.edu', '1-564-866-1608', '2018-04-25 10:48:40', '2019-03-08 08:56:08'),
(56, 'ligula. Nullam', 'ultrices.sit.amet@Inlorem.org', '1-330-840-8893', '2018-09-12 16:05:44', '2019-02-01 10:24:12'),
(57, 'eget laoreet', 'parturient.montes@varius.com', '1-232-959-5241', '2018-01-21 09:13:17', '2019-04-17 15:07:51'),
(58, 'orci, consectetuer', 'nunc.sed.pede@vehicula.ca', '1-358-439-7112', '2018-03-31 02:00:10', '2019-03-14 20:45:28'),
(59, 'netus et', 'pharetra@estmollis.co.uk', '1-715-800-1467', '2018-01-22 13:14:36', '2019-01-09 05:48:28'),
(60, 'Cras interdum.', 'faucibus.id.libero@dignissimlacus.net', '1-849-482-7227', '2018-03-16 23:01:08', '2019-04-03 14:02:11'),
(61, 'tempus scelerisque,', 'ut.aliquam.iaculis@SeddictumProin.org', '1-502-959-3021', '2018-02-27 01:40:07', '2019-02-23 05:28:43'),
(62, 'vel, convallis', 'aliquam.arcu.Aliquam@Pellentesqueultriciesdignissim.com', '1-484-620-2764', '2018-06-15 05:20:44', '2019-05-23 05:59:28'),
(63, 'libero. Donec', 'tempus@congueaaliquet.co.uk', '1-353-797-3444', '2018-07-24 20:56:21', '2019-04-24 16:02:28'),
(64, 'ligula. Aliquam', 'aliquet.metus@senectuset.edu', '1-691-479-5193', '2018-10-07 14:01:34', '2019-01-21 13:34:35'),
(65, 'ullamcorper. Duis', 'mauris.Suspendisse.aliquet@erosnec.net', '1-971-736-4297', '2018-10-18 22:40:50', '2019-05-09 06:37:30'),
(66, 'tellus. Aenean', 'eget.tincidunt.dui@aliquetmetus.org', '1-253-402-3019', '2018-08-12 01:22:01', '2019-01-07 00:43:35'),
(67, 'a feugiat', 'turpis.Aliquam@nasceturridiculus.org', '1-617-740-7747', '2018-05-27 23:13:40', '2019-01-31 23:04:44'),
(68, 'a tortor.', 'urna.suscipit@netuset.co.uk', '1-388-883-2123', '2018-07-23 15:50:32', '2019-04-07 02:18:10'),
(69, 'id ante', 'massa.lobortis@odioapurus.ca', '1-539-200-1676', '2018-06-25 23:08:20', '2019-02-18 11:33:43'),
(70, 'imperdiet ullamcorper.', 'Donec.feugiat@euismod.co.uk', '1-685-445-9005', '2018-01-19 01:02:19', '2019-02-21 20:14:09'),
(71, 'nec metus', 'Cras.convallis@interdumligula.com', '1-930-268-8074', '2018-07-12 23:13:09', '2019-03-19 19:29:34'),
(72, 'scelerisque neque.', 'eu@Cum.ca', '1-832-606-2517', '2018-01-08 09:01:11', '2019-01-10 15:15:25'),
(73, 'parturient montes,', 'placerat.eget@ametlorem.ca', '1-780-864-6764', '2018-11-23 17:45:00', '2019-05-27 13:35:55'),
(74, 'in consectetuer', 'felis@malesuadafames.org', '1-979-431-7334', '2018-04-08 00:14:46', '2019-04-23 02:31:23'),
(75, 'dignissim. Maecenas', 'ultrices.posuere.cubilia@sapienCras.co.uk', '1-327-144-3935', '2018-10-14 16:18:34', '2019-05-29 03:38:24'),
(76, 'Suspendisse sagittis.', 'elit.a@tempordiam.edu', '1-705-757-3314', '2018-11-24 21:38:02', '2019-04-12 04:48:04'),
(77, 'Morbi sit', 'ornare.facilisis.eget@tristiquepellentesque.net', '1-333-316-5309', '2018-07-22 06:50:44', '2019-01-08 17:01:21'),
(78, 'amet, consectetuer', 'sed.sapien@nequevenenatis.edu', '1-538-723-9699', '2018-04-06 01:11:21', '2019-03-27 06:36:07'),
(79, 'euismod enim.', 'auctor@imperdiet.net', '1-391-911-1140', '2018-03-17 07:47:48', '2019-03-02 19:37:49'),
(80, 'Aliquam adipiscing', 'sem.egestas@iaculis.net', '1-399-322-6963', '2018-05-04 09:42:13', '2019-01-23 01:31:51'),
(81, 'non enim', 'ullamcorper.magna@Donecnibh.co.uk', '1-541-956-9432', '2018-08-06 23:33:59', '2019-05-11 16:56:40'),
(82, 'ornare, libero', 'Nunc.quis.arcu@Nuncquis.com', '1-589-982-2713', '2018-07-07 18:23:46', '2019-02-15 06:34:38'),
(83, 'malesuada augue', 'luctus.lobortis@sed.com', '1-337-980-2225', '2018-08-08 17:57:00', '2019-01-27 18:04:36'),
(84, 'risus quis', 'fringilla@hendreritDonec.com', '1-147-727-8054', '2018-02-12 21:01:19', '2019-02-07 20:02:46'),
(85, 'sed pede', 'mattis.Cras.eget@Quisquenonummy.ca', '1-491-373-7718', '2018-01-14 02:20:39', '2019-02-06 04:41:34'),
(86, 'nec ante', 'vel.arcu.Curabitur@cubiliaCurae.co.uk', '1-179-953-7342', '2018-06-03 11:24:12', '2019-01-30 22:24:52'),
(87, 'vestibulum nec,', 'scelerisque@ut.com', '1-273-394-1095', '2018-03-08 21:50:53', '2019-05-01 02:54:23'),
(88, 'lacinia vitae,', 'interdum@netus.edu', '1-845-936-3475', '2018-06-30 14:51:39', '2019-04-26 11:45:35'),
(89, 'Quisque tincidunt', 'purus.Nullam@egetmagnaSuspendisse.org', '1-204-948-2005', '2018-09-17 20:11:01', '2019-05-16 11:53:19'),
(90, 'eleifend vitae,', 'sed.pede.Cum@gravida.ca', '1-706-460-5020', '2018-05-25 01:28:17', '2019-01-09 06:43:53'),
(91, 'Nunc ac', 'purus.sapien@Integer.com', '1-489-566-4067', '2018-06-29 07:12:50', '2019-05-20 04:33:15'),
(92, 'elit erat', 'turpis.Nulla@felisadipiscing.co.uk', '1-435-211-5612', '2018-05-07 06:48:26', '2019-01-15 10:30:05'),
(93, 'cursus et,', 'leo@Fuscealiquam.ca', '1-478-629-0314', '2018-12-07 22:53:23', '2019-01-01 17:15:14'),
(94, 'dis parturient', 'lorem.semper.auctor@pede.edu', '1-164-489-2377', '2018-04-28 08:43:27', '2019-03-31 19:27:37'),
(95, 'primis in', 'nec.leo.Morbi@utodio.edu', '1-354-700-3680', '2018-06-06 17:52:10', '2019-04-29 07:10:05'),
(96, 'tempus risus.', 'lectus.justo@vellectusCum.org', '1-122-515-7518', '2018-01-02 07:44:21', '2019-02-03 00:37:38'),
(97, 'malesuada fringilla', 'parturient@gravidanonsollicitudin.com', '1-648-869-3227', '2018-01-28 03:12:00', '2019-02-25 07:59:30'),
(98, 'sed libero.', 'a.arcu.Sed@tinciduntcongueturpis.com', '1-113-909-0598', '2018-12-06 15:33:44', '2019-01-18 05:43:48'),
(99, 'suscipit, est', 'risus.a@ornareInfaucibus.edu', '1-362-854-9022', '2018-03-04 20:55:09', '2019-01-28 23:32:30'),
(100, 'Dapibus Lee', 'ut.eros@risusatfringilla.com', '1-738-400-3345', '2018-06-07 02:23:35', '2019-06-03 01:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2017_05_23_183224_create_contacts_table', 1),
(4, '2019_06_01_082648_create_data_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
