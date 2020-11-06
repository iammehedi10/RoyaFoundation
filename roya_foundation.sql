-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2020 at 09:40 AM
-- Server version: 10.2.34-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royafoun_dation`
--

-- --------------------------------------------------------

--
-- Table structure for table `front__videos`
--

CREATE TABLE `front__videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front__videos`
--

INSERT INTO `front__videos` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/XEgllzI5jQs', '2019-04-29 04:16:12', '2019-04-29 04:16:12'),
(2, 'https://www.youtube.com/embed/lLd-G2q6rlE', '2019-04-29 04:16:42', '2019-04-29 04:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_20_051059_create_need_helps_table', 1),
(4, '2019_03_20_060713_create_want_helps_table', 1),
(5, '2019_03_20_063304_create_projects_table', 1),
(6, '2019_03_20_095738_create_project_images_table', 1),
(7, '2019_03_21_033922_create_sliders_table', 1),
(8, '2019_03_31_043709_create_teams_table', 1),
(9, '2019_03_31_070413_create_videos_table', 1),
(10, '2019_04_24_104503_create_front__videos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `need_helps`
--

CREATE TABLE `need_helps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@roya-foundation.org', '$2y$10$rGZNxFYJoIbTTiCSzY/gn.TNR/d3AG4u1MIPYI3YTxTZQX6z.YuVC', '2019-05-15 10:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `date`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Provide Sweater', '2019-04-29', '<p style=\"text-align: justify;\">Look at the smiles of the children. We have provided sweaters for poor primary school children in Shonakania Primary School, Shahjahanpur, Bogra during this winter. Roya Foundation came to know some of the poor children are missing school because they could not afford to buy sweaters. Then this foundation provided sweaters to those children so that they can join their friends at the school. The sweaters will help them not only this year, but also the coming year.</p>', '2019-04-29 01:02:46', '2019-04-29 01:02:46'),
(2, 'Provide 130 Blankets', '2019-04-29', '<p style=\"text-align: center;\">Roya Foundation provided 130 blankets among the Showtals in Kakonhaat, Godagari, Rajshahi.</p>', '2019-04-29 01:08:14', '2019-04-29 01:12:36'),
(3, 'Provide Sewing Machine', '2019-04-29', '<p style=\"text-align: justify;\">A Means Of Livelihood; Sumaya is a poor girl who studies in Year 8. Roya Foundation has provided her with a sewing machine to earn some money for her education and family expenses. We hope that it will help transform her life.</p>', '2019-04-29 01:12:18', '2019-04-29 01:12:18'),
(4, 'Supporting A Dream', '2019-04-29', '<p style=\"text-align: justify;\">Roya Foundation is also providing education fees for few children in different places in Bangladesh.</p>\r\n<p style=\"text-align: justify;\">Ahmed Abdullah comes from Majhira, Shahjahanpur, Bogra. He is a good student and keen to complete his studies and support his family. However, his poor family is unable to support his dream. Roya Foundation is providing some financial assistance to this boy so that he can fulfil his dream and in future support his family. Only receiving assistance, Abdullah commented, <em>&ldquo;আরশের মালিক আল্লাহ, রয়া ফাউন্ডেশনের প্রধান ও এর সেবাধর্মী কর্মকাণ্ডে সহযোগী সকলকে উত্তম প্রতিদানটাই দিক! কৃতগ্ঞ রইলাম আল্লাহ ও তাদের কাছে&rdquo;</em> which means in English, &ldquo;Praise to Almighty! Grateful to the head of Roya Foundation and all who are supporting Roya Foundation in its charitable works. Let Almighty also bless them and I remain grateful to Almighty and Roya Foundation.&rdquo;</p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #800000;\">Maybe noted that the Foundation will monitor his progress and performance in coming years.</span></p>', '2019-04-29 01:18:55', '2019-04-29 01:18:55'),
(5, 'Setting Computer Lab', '2019-04-29', '<p style=\"text-align: justify;\">This is Rajbari Government Shishu Shodon in Faridpur. It is an orphanage where the orphan girls were dreaming to have access to computers and learn basic computing just like any other girl of the society. Roya Foundation is happy to fulfil their dreams by setting a computing lab of five computers on <span style=\"color: #ffffff; background-color: #3366ff;\">11 of March, 2019</span>. The Foundation hopes that by learning computing, the girls will be better prepared in their future lives.</p>', '2019-04-29 01:25:04', '2019-04-29 01:25:04'),
(6, 'Shishu Shodon in Faridpur', '2019-04-29', '<p style=\"text-align: justify;\">Rajbari Government Shishu Shodon in Faridpur is the home for orphans. Roya Foundation has provided the outgoing four girls with sewing machines and some money to start with their work. Noted that the orphanage teaches the older girls tailoring. Roya Foundation is hoping that the sewing machines will help these girls to be self dependent and earn some money.</p>', '2019-04-29 01:42:59', '2019-04-30 02:59:23'),
(7, 'Support Special Children', '2019-04-29', '<p>&ldquo;Prottoy&rdquo;, a school at Rajbari in Faridpur, caters for &ldquo;SPECIAL CHILDREN&rdquo;. Unfortunately, parents of these children are very poor and also the school is in need of support as they had only one teacher for 27 children. Roya Foundation thinks that these special children need &ldquo;SPECIAL SUPPORT&rdquo;!</p>\r\n<p>This foundation is appointing an additional teacher, refurbishing their school rooms and as a first step today (16 March 2019), also provided each child with a full set of uniform (very similar to a Govt. school at Rajbari) for each of them so that they are happy to come and enjoy their time at school, receive more attention at the school, learn some basic life skills and at the same time, will alleviate the poor parents&rsquo; sufferings for few hours each day.</p>\r\n<p>This is just the initial support and Roya Foundation intends to support these children and the school more in future. The refurbishment of the school rooms are going on, once it is finished we will post the pictures.</p>\r\n<p><em>&ldquo;There Needs To Be A Lot More Emphasis On What A Child Can Do Instead Of What He Cannot Do.&rdquo;</em></p>\r\n<p><em>&ldquo;We Are Not Here To Fill In Your Box, We Are Here To Help You Realise There Is No Box.&rdquo;</em></p>\r\n<p><em>&ldquo;My Brain Is Different. But The Thoughts And Emotions In It Are As REAL, As VALID, As BEAUTIFUL And As IMPORTANT As Anyone&rsquo;s.&rdquo;</em></p>', '2019-04-29 01:46:05', '2019-04-29 01:46:05'),
(8, 'Decorate Classrooms', '2019-04-29', '<p style=\"text-align: justify;\">The Prottoy School, Rajbari is the school for the special children. Roya Foundation has arranged two classrooms to be decorated by painting the walls done by an artist (as mentioned before). The topics were selected according to the children&rsquo;s need. It is hoped that these vivid and beautiful pictures will help these special children to enjoy in the classroom, enhance their imaginations and overall make their stay in the classroom an enjoyable one.</p>', '2019-04-29 01:47:40', '2019-04-29 01:47:40'),
(12, 'Dressing Up the Special Children', '2019-05-01', '<p>Roya Foundation has helped special children of Prottoy School, Rajbari in few ways. Given the childrens\' parents are very poor, it was felt that a new set of dresses for all the children will encourage them. Roya Foundation has given a new set of dresses (as seen in the photos) and also to their parents. As can be seen, the children became very happy.</p>', '2019-05-20 12:26:06', '2019-05-20 12:37:16'),
(13, 'Festival Dresses for the Blind Children', '2019-05-10', '<p>There are twelve children in the government-run blind school in Rajbari, two of them are girls. It was felt that a good set of festival dress will encourage the children and make them happy. As can be seen in the pictures, Roya Foundation gave them the dresses to make their upcoming festival a happy one. As you can see in the picture, there is only one girl instead of two. Because while taking picture, the one girl could not come.</p>', '2019-05-20 12:40:30', '2019-05-20 12:40:30'),
(14, 'Support for Higher Education', '2019-05-20', '<p>Anowar Hosen, a meritorious student but comes from a very poor family. His dream is to be a BCS officer in the future. In spite of financial struggles, he could qualify to get admission in Rajshahi University in Philosophy Department. It became difficult to meet even the basic expenses. Roya Foundation has started supporting him with monthly support so that Anowar can focus more on education and realise his dream in future.</p>\r\n<p><a href=\"../files/Anowar%20Application.pdf\" target=\"_blank\" rel=\"noopener\">View Application</a></p>', '2019-05-23 07:29:41', '2019-05-23 07:37:37'),
(15, 'Supporting A Girl\'s Dream Venture', '2019-05-23', '<p>Labonno Akhter Lisa, who dreamt for many years to start her own business (by setting up a beauty parlour) and become self-dependent. Roya Foundation has helped her to realise her dream. President of Roya Foundation opened her parlour (named as Labonno Parlour near Badda) through a small but beautiful ceremony arranged by Labonno. All the members of Roya Foundation wishing Labonno success in her new venture.</p>', '2019-05-23 07:50:46', '2019-05-23 11:20:04'),
(16, 'Education Support', '2019-05-24', '<p>Roya Foundation has been supporting&nbsp;Jooti Robi Das Nibedita\'s education with financial assistance. Jooti has recently completed her SSC and obtained a grade of 3.78. Roya Foundation wishes her all the best and hopes that foundations continuing support will enable Jooti to go further.</p>', '2019-05-24 09:54:34', '2019-05-24 09:58:57'),
(17, 'Child\'s open heart surgery', '2019-09-15', '<p>Labib, a young boy of 7 had a heart defect since his birth. His father who is an Imam at a mosque could not afford the expensive treatment only from his own resources. Roya Foundation arranged the financial support to meet up the gap which was needed for the little boy\'s open heart surgery. Through Roya Foundation, Syeda Afreen Ali contributed to his treatment and the Foundation itself provided the rest.</p>\r\n<p>The boy is recovering encouragingly and we are all hopeful that he will make a full recovery and have an altogether new life.</p>', '2019-10-04 10:22:25', '2019-10-04 10:22:25'),
(18, 'Academic Support', '2019-08-01', '<p>Sokhina Akhter dreams of a better future! She\'s working and trying to meet her educational expense. However, her income from her job doesn\'t meet up the required expenses fully.</p>\r\n<p>She\'s a final year student of BSR of Tejgaon Mohila College. Given her enthusiasm and determination, Roya Foundation has started supporting her educational expenses. The Foundation and its members hope that it will make a difference in her future life.</p>', '2019-10-04 10:30:17', '2019-10-04 11:09:47'),
(19, 'Providing Sewing Machine', '2020-02-15', '<p>The girl who is standing on the left, her name is Chameli Akhter who is studying in Honours, Second Year in Pirgacha, Rangpur. She knows the tailoring but comes from a poor family, so Roya Foundation thought to give her a sewing machine which will help her to earn some money and transform her life for the betterment. We wish Chameli a brighter future.</p>\r\n<p>The girl who is standing on the right, is Bonna who is studying in HSC First Year. She also comes from a poor family but knows tailoring; so she has been given a sewing machine for her better future and for earning some money. Roya Foundation hopes that it will help her in the days to come ahead.</p>', '2020-04-01 09:28:26', '2020-04-01 09:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `p_id`, `filename`, `created_at`, `updated_at`) VALUES
(1, 1, '941315461.PHOTO-2019-01-23-22-46-54-1024x768.jpg', '2019-04-29 03:45:35', '2019-04-29 03:45:35'),
(3, 1, '526535452.PHOTO-2019-01-26-22-01-15-1024x984.jpg', '2019-04-29 03:45:46', '2019-04-29 03:45:46'),
(4, 1, '753247938.PHOTO-2019-01-26-22-01-19-1024x903.jpg', '2019-04-29 03:45:54', '2019-04-29 03:45:54'),
(5, 1, '739882652.WhatsApp-Image-2019-01-27-at-7.28.31-PM-2.jpeg', '2019-04-29 03:46:01', '2019-04-29 03:46:01'),
(6, 1, '966537833.WhatsApp-Image-2019-01-27-at-7.28.33-PM-1.jpeg', '2019-04-29 03:46:06', '2019-04-29 03:46:06'),
(7, 1, '215025368.WhatsApp-Image-2019-01-27-at-7.28.35-PM.jpeg', '2019-04-29 03:46:11', '2019-04-29 03:46:11'),
(8, 2, '628653996.WhatsApp-Image-2019-01-23-at-5.14.30-PM-3.jpeg', '2019-04-29 03:50:11', '2019-04-29 03:50:11'),
(9, 2, '723648370.WhatsApp-Image-2019-01-23-at-5.14.29-PM-1.jpeg', '2019-04-29 03:50:17', '2019-04-29 03:50:17'),
(10, 2, '245604363.WhatsApp-Image-2019-01-23-at-5.14.30-PM-2.jpeg', '2019-04-29 03:50:22', '2019-04-29 03:50:22'),
(11, 3, '879109535.WhatsApp-Image-2019-01-26-at-8.55.40-PM.jpeg', '2019-04-29 03:51:34', '2019-04-29 03:51:34'),
(12, 3, '266150540.WhatsApp-Image-2019-01-26-at-8.55.42-PM.jpeg', '2019-04-29 03:51:42', '2019-04-29 03:51:42'),
(13, 3, '898990998.WhatsApp-Image-2019-01-26-at-8.55.40-PM-1.jpeg', '2019-04-29 03:51:49', '2019-04-29 03:51:49'),
(14, 3, '148755424.WhatsApp-Image-2019-01-26-at-8.55.44-PM.jpeg', '2019-04-29 03:51:55', '2019-04-29 03:51:55'),
(15, 4, '217901957.WhatsApp-Image-2019-02-15-at-11.20.52-PM.jpeg', '2019-04-29 03:53:11', '2019-04-29 03:53:11'),
(16, 4, '861867643.WhatsApp-Image-2019-02-15-at-11.22.30-PM.jpeg', '2019-04-29 03:53:18', '2019-04-29 03:53:18'),
(17, 5, '600583071.WhatsApp-Image-2019-03-11-at-8.44.25-PM-1024x576.jpeg', '2019-04-29 03:55:05', '2019-04-29 03:55:05'),
(18, 5, '598104106.WhatsApp-Image-2019-03-11-at-8.44.26-PM-1024x576.jpeg', '2019-04-29 03:55:11', '2019-04-29 03:55:11'),
(19, 5, '467722369.WhatsApp-Image-2019-03-11-at-8.44.35-PM-768x1024.jpeg', '2019-04-29 03:55:18', '2019-04-29 03:55:18'),
(20, 5, '758880090.WhatsApp-Image-2019-03-11-at-8.44.36-PM-1-1024x768.jpeg', '2019-04-29 03:55:25', '2019-04-29 03:55:25'),
(21, 5, '713299061.WhatsApp-Image-2019-03-11-at-8.44.36-PM-1024x768.jpeg', '2019-04-29 03:55:30', '2019-04-29 03:55:30'),
(22, 5, '104305352.WhatsApp-Image-2019-03-11-at-8.44.38-PM-1024x768.jpeg', '2019-04-29 03:55:35', '2019-04-29 03:55:35'),
(23, 6, '219734743.WhatsApp-Image-2019-03-11-at-8.44.26-PM-1-1024x576.jpeg', '2019-04-29 03:56:11', '2019-04-29 03:56:11'),
(24, 6, '178729318.WhatsApp-Image-2019-03-11-at-8.44.27-PM-1024x576.jpeg', '2019-04-29 03:56:16', '2019-04-29 03:56:16'),
(25, 6, '557542154.WhatsApp-Image-2019-03-11-at-8.44.28-PM-1024x576.jpeg', '2019-04-29 03:56:23', '2019-04-29 03:56:23'),
(26, 6, '523666345.WhatsApp-Image-2019-03-11-at-8.44.32-PM-1024x576.jpeg', '2019-04-29 03:56:30', '2019-04-29 03:56:30'),
(27, 6, '219654166.WhatsApp-Image-2019-03-11-at-8.44.33-PM-1024x576.jpeg', '2019-04-29 03:56:36', '2019-04-29 03:56:36'),
(28, 6, '410423222.WhatsApp-Image-2019-03-11-at-8.44.34-PM-1-1024x576.jpeg', '2019-04-29 03:56:42', '2019-04-29 03:56:42'),
(29, 6, '968669267.WhatsApp-Image-2019-03-11-at-8.44.34-PM-1024x576.jpeg', '2019-04-29 03:56:47', '2019-04-29 03:56:47'),
(30, 6, '785825119.WhatsApp-Image-2019-03-11-at-10.20.59-PM-1024x576.jpeg', '2019-04-29 03:57:06', '2019-04-29 03:57:06'),
(31, 7, '817259000.WhatsApp-Image-2019-03-18-at-2.36.00-PM-1024x768.jpeg', '2019-04-29 03:57:53', '2019-04-29 03:57:53'),
(32, 7, '203712892.WhatsApp-Image-2019-03-16-at-7.34.38-PM-1024x768.jpeg', '2019-04-29 03:58:03', '2019-04-29 03:58:03'),
(33, 7, '962161624.WhatsApp-Image-2019-03-16-at-7.34.21-PM-1024x768.jpeg', '2019-04-29 03:58:15', '2019-04-29 03:58:15'),
(34, 7, '714629459.WhatsApp-Image-2019-03-16-at-7.27.15-PM-1024x768.jpeg', '2019-04-29 03:58:26', '2019-04-29 03:58:26'),
(35, 7, '558811120.WhatsApp-Image-2019-03-16-at-7.30.59-PM-1024x768.jpeg', '2019-04-29 03:58:35', '2019-04-29 03:58:35'),
(36, 7, '900084130.WhatsApp-Image-2019-03-16-at-7.31.50-PM-1024x768.jpeg', '2019-04-29 03:58:49', '2019-04-29 03:58:49'),
(37, 6, '387439914.WhatsApp-Image-2019-03-16-at-7.32.04-PM-1024x768.jpeg', '2019-04-29 04:00:06', '2019-04-29 04:00:06'),
(38, 8, '688558611.WhatsApp-Image-2019-04-17-at-11.38.21-PM.jpeg', '2019-04-29 04:00:26', '2019-04-29 04:00:26'),
(39, 8, '871876340.WhatsApp-Image-2019-04-17-at-11.37.07-PM.jpeg', '2019-04-29 04:00:33', '2019-04-29 04:00:33'),
(40, 8, '516659976.WhatsApp-Image-2019-04-17-at-11.37.23-PM.jpeg', '2019-04-29 04:00:41', '2019-04-29 04:00:41'),
(41, 8, '268242647.WhatsApp-Image-2019-04-17-at-11.37.34-PM.jpeg', '2019-04-29 04:00:49', '2019-04-29 04:00:49'),
(42, 8, '672324140.WhatsApp-Image-2019-04-17-at-11.37.51-PM.jpeg', '2019-04-29 04:00:55', '2019-04-29 04:00:55'),
(43, 8, '619632259.WhatsApp-Image-2019-04-17-at-11.38.00-PM.jpeg', '2019-04-29 04:01:08', '2019-04-29 04:01:08'),
(44, 8, '562181210.WhatsApp-Image-2019-04-17-at-11.38.12-PM.jpeg', '2019-04-29 04:01:17', '2019-04-29 04:01:17'),
(45, 8, '531494462.WhatsApp-Image-2019-04-17-at-11.38.31-PM.jpeg', '2019-04-29 04:01:22', '2019-04-29 04:01:22'),
(46, 8, '921358158.WhatsApp-Image-2019-04-17-at-11.38.41-PM.jpeg', '2019-04-29 04:01:32', '2019-04-29 04:01:32'),
(47, 8, '519182130.WhatsApp-Image-2019-04-17-at-11.38.50-PM.jpeg', '2019-04-29 04:01:40', '2019-04-29 04:01:40'),
(48, 8, '374198184.WhatsApp-Image-2019-04-17-at-11.38.59-PM.jpeg', '2019-04-29 04:01:49', '2019-04-29 04:01:49'),
(49, 8, '378648159.WhatsApp-Image-2019-04-17-at-11.39.08-PM.jpeg', '2019-04-29 04:01:57', '2019-04-29 04:01:57'),
(58, 10, '565934691.Xbt4CH.jpg', '2019-05-15 22:36:49', '2019-05-15 22:36:49'),
(60, 12, '857263382.IMG-20190501-WA0000.jpg', '2019-05-20 12:28:07', '2019-05-20 12:28:07'),
(61, 12, '206653360.IMG-20190501-WA0001.jpg', '2019-05-20 12:28:25', '2019-05-20 12:28:25'),
(62, 12, '671289454.IMG-20190501-WA0002.jpg', '2019-05-20 12:29:02', '2019-05-20 12:29:02'),
(63, 12, '574867257.IMG-20190501-WA0003.jpg', '2019-05-20 12:29:09', '2019-05-20 12:29:09'),
(64, 12, '423052959.IMG-20190501-WA0004.jpg', '2019-05-20 12:29:18', '2019-05-20 12:29:18'),
(65, 12, '634316714.IMG-20190501-WA0005.jpg', '2019-05-20 12:29:25', '2019-05-20 12:29:25'),
(66, 12, '229020791.IMG-20190501-WA0006.jpg', '2019-05-20 12:29:32', '2019-05-20 12:29:32'),
(67, 12, '664039696.IMG-20190501-WA0007.jpg', '2019-05-20 12:29:39', '2019-05-20 12:29:39'),
(68, 12, '948942714.IMG-20190501-WA0008.jpg', '2019-05-20 12:29:54', '2019-05-20 12:29:54'),
(69, 12, '854561144.IMG-20190501-WA0009.jpg', '2019-05-20 12:30:06', '2019-05-20 12:30:06'),
(70, 12, '511373267.IMG-20190501-WA0010.jpg', '2019-05-20 12:30:15', '2019-05-20 12:30:15'),
(71, 12, '335043829.IMG-20190501-WA0011.jpg', '2019-05-20 12:30:22', '2019-05-20 12:30:22'),
(72, 12, '210215348.IMG-20190501-WA0012.jpg', '2019-05-20 12:30:29', '2019-05-20 12:30:29'),
(73, 12, '255313451.IMG-20190501-WA0013.jpg', '2019-05-20 12:30:36', '2019-05-20 12:30:36'),
(74, 12, '848155033.IMG-20190501-WA0014.jpg', '2019-05-20 12:30:52', '2019-05-20 12:30:52'),
(75, 12, '665404356.IMG-20190501-WA0015.jpg', '2019-05-20 12:31:00', '2019-05-20 12:31:00'),
(76, 12, '356059427.IMG-20190501-WA0016.jpg', '2019-05-20 12:31:06', '2019-05-20 12:31:06'),
(77, 12, '112699071.IMG-20190501-WA0017.jpg', '2019-05-20 12:31:12', '2019-05-20 12:31:12'),
(78, 12, '481260197.IMG-20190501-WA0018.jpg', '2019-05-20 12:31:20', '2019-05-20 12:31:20'),
(79, 12, '257407318.IMG-20190501-WA0019.jpg', '2019-05-20 12:31:29', '2019-05-20 12:31:29'),
(80, 12, '210602814.IMG-20190501-WA0020.jpg', '2019-05-20 12:31:36', '2019-05-20 12:31:36'),
(81, 12, '427127546.IMG-20190501-WA0021.jpg', '2019-05-20 12:31:42', '2019-05-20 12:31:42'),
(82, 12, '870088473.IMG-20190501-WA0022.jpg', '2019-05-20 12:31:51', '2019-05-20 12:31:51'),
(83, 12, '136097438.IMG-20190501-WA0023.jpg', '2019-05-20 12:31:58', '2019-05-20 12:31:58'),
(84, 12, '449801998.IMG-20190501-WA0024.jpg', '2019-05-20 12:32:06', '2019-05-20 12:32:06'),
(85, 12, '354973773.IMG-20190501-WA0025.jpg', '2019-05-20 12:32:12', '2019-05-20 12:32:12'),
(86, 12, '251476907.IMG-20190501-WA0026.jpg', '2019-05-20 12:32:19', '2019-05-20 12:32:19'),
(87, 12, '197843308.IMG-20190501-WA0027.jpg', '2019-05-20 12:32:27', '2019-05-20 12:32:27'),
(88, 12, '519693459.IMG-20190501-WA0028.jpg', '2019-05-20 12:32:37', '2019-05-20 12:32:37'),
(89, 12, '637496349.IMG-20190501-WA0029.jpg', '2019-05-20 12:32:44', '2019-05-20 12:32:44'),
(90, 13, '365762347.IMG-20190520-WA0001.jpg', '2019-05-20 12:40:51', '2019-05-20 12:40:51'),
(91, 13, '929118007.IMG-20190520-WA0002.jpg', '2019-05-20 12:40:59', '2019-05-20 12:40:59'),
(92, 13, '712857385.IMG-20190520-WA0003.jpg', '2019-05-20 12:41:10', '2019-05-20 12:41:10'),
(93, 13, '740895831.IMG-20190520-WA0005.jpg', '2019-05-20 12:41:19', '2019-05-20 12:41:19'),
(94, 13, '287589229.IMG-20190520-WA0007.jpg', '2019-05-20 12:41:26', '2019-05-20 12:41:26'),
(95, 13, '432841346.IMG-20190520-WA0009.jpg', '2019-05-20 12:41:35', '2019-05-20 12:41:35'),
(96, 13, '419460957.IMG-20190520-WA0010.jpg', '2019-05-20 12:41:44', '2019-05-20 12:41:44'),
(97, 14, '270495937.60541132_305421483700902_2511691080789917696_n.jpg', '2019-05-23 07:29:55', '2019-05-23 07:29:55'),
(98, 15, '938150419.WhatsApp Image 2019-05-23 at 7.44.18 PM.jpeg', '2019-05-23 07:56:00', '2019-05-23 07:56:00'),
(99, 15, '201014427.WhatsApp Image 2019-05-23 at 7.44.19 PM (1).jpeg', '2019-05-23 07:56:13', '2019-05-23 07:56:13'),
(100, 15, '928141139.WhatsApp Image 2019-05-23 at 7.44.18 PM (1).jpeg', '2019-05-23 07:56:25', '2019-05-23 07:56:25'),
(101, 15, '849109645.WhatsApp Image 2019-05-23 at 7.44.14 PM.jpeg', '2019-05-23 07:58:14', '2019-05-23 07:58:14'),
(102, 15, '277548621.WhatsApp Image 2019-05-23 at 7.44.14 PM (2).jpeg', '2019-05-23 07:58:44', '2019-05-23 07:58:44'),
(103, 15, '336357473.WhatsApp Image 2019-05-23 at 7.44.14 PM (1).jpeg', '2019-05-23 07:58:57', '2019-05-23 07:58:57'),
(104, 15, '259271969.WhatsApp Image 2019-05-23 at 7.44.12 PM.jpeg', '2019-05-23 07:59:10', '2019-05-23 07:59:10'),
(105, 15, '713601197.WhatsApp Image 2019-05-23 at 7.44.13 PM (1).jpeg', '2019-05-23 07:59:21', '2019-05-23 07:59:21'),
(106, 15, '444182426.WhatsApp Image 2019-05-23 at 7.44.13 PM.jpeg', '2019-05-23 07:59:33', '2019-05-23 07:59:33'),
(107, 15, '515361501.WhatsApp Image 2019-05-23 at 7.44.12 PM (1).jpeg', '2019-05-23 07:59:43', '2019-05-23 07:59:43'),
(108, 15, '200799978.WhatsApp Image 2019-05-23 at 7.44.12 PM (2).jpeg', '2019-05-23 07:59:52', '2019-05-23 07:59:52'),
(109, 15, '213341381.WhatsApp Image 2019-05-23 at 7.44.11 PM.jpeg', '2019-05-23 08:00:02', '2019-05-23 08:00:02'),
(110, 15, '620597865.WhatsApp Image 2019-05-23 at 7.44.11 PM (1).jpeg', '2019-05-23 08:00:11', '2019-05-23 08:00:11'),
(111, 15, '138484012.WhatsApp Image 2019-05-23 at 7.44.11 PM (2).jpeg', '2019-05-23 08:00:20', '2019-05-23 08:00:20'),
(112, 15, '617297072.WhatsApp Image 2019-05-23 at 7.44.10 PM.jpeg', '2019-05-23 08:00:27', '2019-05-23 08:00:27'),
(113, 15, '505206791.WhatsApp Image 2019-05-23 at 7.43.42 PM.jpeg', '2019-05-23 08:00:45', '2019-05-23 08:00:45'),
(114, 15, '208673270.WhatsApp Image 2019-05-23 at 7.43.41 PM.jpeg', '2019-05-23 08:00:54', '2019-05-23 08:00:54'),
(115, 15, '103435203.WhatsApp Image 2019-05-23 at 7.44.15 PM (2).jpeg', '2019-05-23 08:01:05', '2019-05-23 08:01:05'),
(116, 15, '164355214.WhatsApp Image 2019-05-23 at 7.44.15 PM (1).jpeg', '2019-05-23 08:01:23', '2019-05-23 08:01:23'),
(117, 15, '477716325.WhatsApp Image 2019-05-23 at 7.44.16 PM (1).jpeg', '2019-05-23 08:01:33', '2019-05-23 08:01:33'),
(118, 15, '241404975.WhatsApp Image 2019-05-23 at 7.44.16 PM.jpeg', '2019-05-23 08:01:42', '2019-05-23 08:01:42'),
(119, 15, '759806905.WhatsApp Image 2019-05-23 at 7.44.17 PM (2).jpeg', '2019-05-23 08:02:31', '2019-05-23 08:02:31'),
(120, 15, '139497179.WhatsApp Image 2019-05-23 at 7.44.17 PM (1).jpeg', '2019-05-23 08:02:43', '2019-05-23 08:02:43'),
(121, 15, '132827602.WhatsApp Image 2019-05-23 at 7.44.17 PM.jpeg', '2019-05-23 08:02:58', '2019-05-23 08:02:58'),
(122, 15, '858168904.WhatsApp Image 2019-05-23 at 7.44.19 PM.jpeg', '2019-05-23 08:03:16', '2019-05-23 08:03:16'),
(123, 15, '940130902.WhatsApp Image 2019-05-23 at 7.44.20 PM.jpeg', '2019-05-23 08:03:26', '2019-05-23 08:03:26'),
(124, 15, '261318166.WhatsApp Image 2019-05-23 at 7.43.41 PM (1).jpeg', '2019-05-23 08:03:40', '2019-05-23 08:03:40'),
(125, 15, '277815015.WhatsApp Image 2019-05-23 at 7.43.40 PM.jpeg', '2019-05-23 08:03:47', '2019-05-23 08:03:47'),
(126, 16, '730567254.WhatsApp Image 2019-05-24 at 9.46.13 PM.jpeg', '2019-05-24 09:54:49', '2019-05-24 09:54:49'),
(127, 16, '814252787.WhatsApp Image 2019-05-24 at 9.46.24 PM.jpeg', '2019-05-24 09:54:56', '2019-05-24 09:54:56'),
(128, 17, '845666586.WhatsApp Image 2019-10-04 at 10.07.05 PM.jpeg', '2019-10-04 10:23:34', '2019-10-04 10:23:34'),
(129, 17, '663308388.WhatsApp Image 2019-10-04 at 10.07.30 PM.jpeg', '2019-10-04 10:23:42', '2019-10-04 10:23:42'),
(130, 17, '538915092.WhatsApp Image 2019-10-04 at 10.08.10 PM.jpeg', '2019-10-04 10:23:50', '2019-10-04 10:23:50'),
(131, 18, '542058819.WhatsApp Image 2019-10-09 at 10.23.05 PM.jpeg', '2019-10-09 10:29:43', '2019-10-09 10:29:43'),
(132, 19, '939294746.WhatsApp Image 2020-04-01 at 9.05.53 PM.jpeg', '2020-04-01 09:28:40', '2020-04-01 09:28:40'),
(133, 19, '248483536.WhatsApp Image 2020-04-01 at 9.06.15 PM.jpeg', '2020-04-01 09:28:49', '2020-04-01 09:28:49'),
(134, 19, '674062035.WhatsApp Image 2020-04-01 at 9.06.29 PM.jpeg', '2020-04-01 09:28:57', '2020-04-01 09:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, '803885930.1.jpg', '2019-04-29 04:06:02', '2019-04-29 04:06:02'),
(2, '262844277.2.jpeg', '2019-04-29 04:06:02', '2019-04-29 04:06:02'),
(3, '368658943.3.jpeg', '2019-04-29 04:06:08', '2019-04-29 04:06:08'),
(4, '455124010.4.jpeg', '2019-04-29 04:06:08', '2019-04-29 04:06:08'),
(5, '248872950.5.jpeg', '2019-04-29 04:06:14', '2019-04-29 04:06:14'),
(6, '989684325.WhatsApp-Image-2019-01-26-at-8.55.42-PM.jpeg', '2019-04-29 04:06:14', '2019-04-29 04:06:14'),
(7, '879232415.WhatsApp-Image-2019-02-15-at-11.20.52-PM.jpeg', '2019-04-29 04:06:19', '2019-04-29 04:06:19'),
(8, '191182201.WhatsApp-Image-2019-02-15-at-11.22.30-PM.jpeg', '2019-04-29 04:06:19', '2019-04-29 04:06:19'),
(9, '854807233.WhatsApp-Image-2019-03-11-at-8.44.25-PM-1024x576.jpeg', '2019-04-29 04:06:33', '2019-04-29 04:06:33'),
(10, '637192342.WhatsApp-Image-2019-03-11-at-8.44.26-PM-1024x576.jpeg', '2019-04-29 04:06:33', '2019-04-29 04:06:33'),
(11, '451547199.WhatsApp-Image-2019-03-11-at-8.44.27-PM-1024x576.jpeg', '2019-04-29 04:06:33', '2019-04-29 04:06:33'),
(12, '372788877.WhatsApp-Image-2019-03-11-at-10.21.01-PM-1024x576.jpeg', '2019-04-29 04:06:33', '2019-04-29 04:06:33'),
(13, '379698498.WhatsApp-Image-2019-03-16-at-7.29.45-PM-1024x768.jpeg', '2019-04-29 04:06:41', '2019-04-29 04:06:41'),
(14, '252793016.WhatsApp-Image-2019-03-16-at-7.32.45-PM-1024x768.jpeg', '2019-04-29 04:06:41', '2019-04-29 04:06:41'),
(15, '512425948.WhatsApp-Image-2019-04-17-at-11.37.07-PM.jpeg', '2019-04-29 04:06:41', '2019-04-29 04:06:41'),
(16, '568794807.WhatsApp-Image-2019-04-17-at-11.38.21-PM.jpeg', '2019-04-29 04:06:41', '2019-04-29 04:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Ambareen Chowdhury', 'President', '2019-04-29 21:20:11', '2019-04-30 03:28:30'),
(2, 'Raisa Chowdhury', 'Vice President', '2019-04-29 21:20:33', '2019-04-29 21:20:33'),
(3, 'Samina Yunus', 'Secretary', '2019-04-29 21:20:45', '2019-04-29 21:20:45'),
(4, 'Moniza Begum', 'Organising Secretary', '2019-04-29 21:21:08', '2019-04-29 21:21:08'),
(5, 'Mahbuba Kakoly', 'Executive Member', '2019-04-29 21:21:25', '2019-04-29 21:21:25'),
(6, 'Muhymin Chowdhury', 'Executive Member', '2019-04-29 21:21:38', '2019-04-29 21:21:38'),
(7, 'Mahmud Hussain', 'Executive Member', '2019-04-29 21:21:54', '2019-04-29 21:21:54'),
(8, 'Ahnaf Adeeb Mahmud', 'Executive Member', '2019-04-29 21:22:06', '2019-04-29 21:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'admin@roya-foundation.org', NULL, '$2y$10$mpwq/3s9oZC6Moxl8WByL.lkcUy.1GpFu/9ctlhrKfWpuBMy8QCD.', NULL, '2019-05-15 10:45:46', '2019-05-15 10:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `url`, `p_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/ZnPoKYYqeQc', 5, '2019-04-29 04:09:07', '2019-04-29 04:09:07'),
(2, 'https://www.youtube.com/embed/lLd-G2q6rlE', 6, '2019-04-29 04:10:22', '2019-04-29 04:10:22'),
(5, 'https://www.youtube.com/embed/3PUzmtLRn08', 8, '2019-04-29 04:13:16', '2019-04-29 04:13:16'),
(6, 'https://www.youtube.com/embed/XEgllzI5jQs', 8, '2019-04-29 04:13:47', '2019-04-29 04:13:47'),
(15, 'https://www.youtube.com/embed/pIktuxwHr6E', 15, '2019-05-23 08:08:10', '2019-05-23 08:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `want_helps`
--

CREATE TABLE `want_helps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `want_helps`
--

INSERT INTO `want_helps` (`id`, `firstname`, `lastname`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Arni', 'Haz', 'arnoldhazra@yahoo.com', '3522139543', 'I would like to be a part of Roya Foundation in the future.\r\n\r\nThank you for everything what you are doing for the people in needs.', '2020-04-03 04:12:08', '2020-04-03 04:12:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `front__videos`
--
ALTER TABLE `front__videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `need_helps`
--
ALTER TABLE `need_helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `want_helps`
--
ALTER TABLE `want_helps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `front__videos`
--
ALTER TABLE `front__videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `need_helps`
--
ALTER TABLE `need_helps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `want_helps`
--
ALTER TABLE `want_helps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
