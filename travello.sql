-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 11:49 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travello`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 0),
(26, '2019_11_19_093419_create_posts_table', 2),
(27, '2019_11_19_093621_create_tags_table', 2),
(28, '2019_11_19_094735_create_post_tags_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tail_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_name`, `head`, `tail`, `head_img`, `tail_img`, `section_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '10 Tips For The Traveler', '<h2 class=\"mb-3\" style=\"box-sizing: border-box; margin-top: 0px; font-family: Poppins, Arial, sans-serif; font-weight: 400; line-height: 1.5; font-size: 2rem; background-color: #ffffff; margin-bottom: 1rem !important;\">10 Tips For The Traveler</h2>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #4d4d4d; font-family: Poppins, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>', '<p><span style=\"color: #4d4d4d; font-family: Poppins, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</span></p>', '1_head.jpg', NULL, NULL, NULL, '2019-11-23 15:00:53', '2019-11-22 14:42:22'),
(2, '10 Tips For The Traveler - Section', '<h2 class=\"mb-3 mt-5\" style=\"box-sizing: border-box; font-family: Poppins, Arial, sans-serif; font-weight: 400; line-height: 1.5; font-size: 2rem; background-color: #ffffff; margin-top: 3rem !important; margin-bottom: 1rem !important;\">#2. Creative WordPress Themes</h2>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #4d4d4d; font-family: Poppins, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #4d4d4d; font-family: Poppins, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #4d4d4d; font-family: Poppins, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #4d4d4d; font-family: Poppins, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #4d4d4d; font-family: Poppins, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>', '2_head.jpg', NULL, 1, NULL, NULL, '2019-11-22 14:43:57'),
(3, '5 things you’ll need to pack for a safari', '<h1><span style=\"font-family: \'comic sans ms\', sans-serif;\"><em>5 things you&rsquo;ll need to pack for a safari</em></span></h1>', '<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\"><a style=\"box-sizing: border-box; background: transparent; text-decoration-line: none; color: #333333; transition: all 200ms linear 0s; border-bottom: 1px solid #bc0e2b;\" href=\"https://upload.wikimedia.org/wikipedia/commons/e/ee/African_lion_safari_animals_car.jpg\">Link</a></p>\r\n</div>\r\n<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\">There are few vacation experiences more profound than an African safari. They are seen by many to represent the pinnacle of the primal animal world and our closest interaction with it. A safari holds the promise of so much opportunity and plenty of unique and unforgettable experiences. If you are looking for a travel experience unmatched by any other, a safari is the way to go.</p>\r\n</div>\r\n<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\">But if you want to have the absolute best experience you possibly can, you need to make sure you pack correctly. There are certain things you must bring with you that are crucial for enhancing your safari adventure and helping you enjoy it a whole bunch more. These are five safari essentials that absolutely need to make it on the plane to Africa with you and accompany you on whichever safari excursion you choose!</p>\r\n</div>\r\n<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\">1. Camera &amp; Binoculars</p>\r\n</div>\r\n<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\">Let&rsquo;s get something straight, any safari without a quality safari camera and some powerful binoculars is going to be a wasted trip. You need to have these things with you so you can document your remarkable adventure in picture form. And it&rsquo;s even better these days with social media and sites like Instagram that allow you to upload pictures instantaneously.</p>\r\n</div>\r\n<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\">You can share your jaw-dropping experiences with the world by making sure you document your adventure in style!&nbsp;<a style=\"box-sizing: border-box; background: transparent; text-decoration-line: none; color: #333333; transition: all 200ms linear 0s; border-bottom: 1px solid #bc0e2b;\" href=\"https://www.audleytravel.com/inspiration/safari-holidays\">There are also such things as photographic safaris</a>, where guides will take you on tours that allow you to capture all of the incredible sights in the local area. You&rsquo;re definitely going to need your camera for a photographic safari!</p>\r\n</div>\r\n<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\">2. Medication</p>\r\n</div>\r\n<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\">When taking any trip to Africa, you can&rsquo;t forget the medication you&rsquo;ve been given. There are many&nbsp;<a style=\"box-sizing: border-box; background: transparent; text-decoration-line: none; color: #333333; transition: all 200ms linear 0s; border-bottom: 1px solid #bc0e2b;\" href=\"https://photler.com/blog/africa-traveling-myths/\">common myths about traveling through Africa</a>, one of the main ones being that it&rsquo;s full of diseases. That being said, malaria is still a big concern, and you will need to take malaria pills.</p>\r\n</div>\r\n<div class=\"commentable-wrapper\" style=\"box-sizing: border-box; width: 700px; max-width: 700px; margin: 0px auto 1em; transition: all 0.22s ease 0s; color: #333333; font-family: freight-text-pro, freight-text-pro-1, freight-text-pro-2, \'PT Serif\', Georgia, serif; font-size: 22px; letter-spacing: 0.16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 2em;\">You may well have other medication to think about too, like inhalers or painkillers. Many of these safari excursions can be very long and grueling &mdash; for instance, the Masai Mara in Kenya covers close to 1,000 square miles! You can&rsquo;t afford to be away from your medication for the best part of a day, so make sure you bring it with you.</p>\r\n</div>', '3_head.jpg', '3_tail.jpg', NULL, NULL, NULL, '2019-11-22 16:52:07'),
(4, '16 INCREDIBLE THINGS TO DO IN OLYMPIC NATIONAL PARK FOR FIRST TIME VISITORS!', '<h1><span style=\"font-family: \'comic sans ms\', sans-serif;\"> 16 INCREDIBLE THINGS TO DO IN OLYMPIC NATIONAL PARK FOR FIRST TIME VISITORS!</span></h1>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Planning to visit Olympic National Park?</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Great choice, as it&rsquo;s a place you can come to find solace and silence, but also endless adventures!</p>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">When you do all the things to do in Olympic National Park, you&rsquo;ll be surrounded by the call of the rushing rivers, shimmering lakes, cascading waterfalls, rolling surf and old-growth forests that whisper their secrets.</p>', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Like all wilderness areas, Olympic NP is a treasure you will take home in your heart &ndash; something you can draw upon in the years to come when the pace and noise of the urban setting gets too overwhelming.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">The solace and stillness of the wilderness can be found within you.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Welcome to Olympic National Park&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #ef6b50; text-decoration-line: none;\" href=\"https://www.ytravelblog.com/category/destinations/north-america/usa/washington/\" rel=\"noopener noreferrer\">Washington</a>, a pristine region of ancient cedar spruce trees, glacial lakes, sub-alpine meadows, mountain ranges and verdant rainforests.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">And Mount Olympus, at 7,980 feet, is the tallest and most prominent mountain on the Olympic Peninsula.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">The Olympics were protected as a national park in 1938 and it is internationally recognized as a Biosphere Reserve and World Heritage Site, evidence of its diversity and rich resources.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">There are several different areas and places to visit in Olympic National Park found in different areas within the park boundaries.</p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 20px 40px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; list-style-type: decimal; margin-bottom: 7px;\">Mountains</li>\r\n<li style=\"box-sizing: border-box; list-style-type: decimal; margin-bottom: 7px;\">Lakes, Lowland Forests and Rivers</li>\r\n<li style=\"box-sizing: border-box; list-style-type: decimal; margin-bottom: 7px;\">Coast</li>\r\n<li style=\"box-sizing: border-box; list-style-type: decimal; margin-bottom: 7px;\">Temperate rain forest</li>\r\n</ol>', '4_head.jpg', '4_tail.jpg', NULL, NULL, '2019-11-15 15:00:53', '2019-11-22 14:56:21'),
(5, '16 INCREDIBLE THINGS TO DO IN OLYMPIC NATIONAL PARK FOR FIRST TIME VISITORS! - Section', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">You&rsquo;ll need a National Park Pass to visit the different areas. You can purchase an&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #ef6b50; text-decoration-line: none;\" href=\"https://www.nps.gov/planyourvisit/passes.htm\" target=\"_blank\" rel=\"noopener noreferrer\">America The Beautiful annual pass online</a>, or a day pass at a local ranger station.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">We were fortunate to have a local, Rob Taylor from&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #ef6b50; text-decoration-line: none;\" href=\"https://2traveldads.com/category/united-states/pacific-northwest/\" target=\"_blank\" rel=\"noopener noreferrer\">2 Travel Dads</a>&nbsp;spent a day with us sharing his hidden secrets for the&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #ef6b50; text-decoration-line: none;\" href=\"https://travelolympicpeninsula.com/\" target=\"_blank\" rel=\"noopener noreferrer\">Olympic Peninsula</a>&nbsp;or (OP) as they call it.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Rob&rsquo;s local tips are throughout this post and in our Olympic National Park video down below.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">There are no through roads in the park due to the Olympic Mountains so it presents the challenge of driving in and out to the different sections.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Careful planning is needed to ensure you visit the regions you most want to see. Highway 101 encircles the park and several spur road lead to mountains, forest and coast.</p>', NULL, NULL, NULL, 4, NULL, NULL, NULL),
(6, 'MOUNTAINS – HURRICANE RIDGE', '<h2 style=\"box-sizing: border-box; color: #3caab8; font-family: faith_and_glory_tworegular; font-weight: 500; line-height: 1.2; margin: 0px 0px 16px; font-size: 28px; text-transform: uppercase; letter-spacing: 0.1em; background-color: #ffffff;\"><span style=\"font-family: \'comic sans ms\', sans-serif;\">MOUNTAINS &ndash; HURRICANE RIDGE</span></h2>', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Time to strap on the pack and put on your hiking shoes for some seriously stunning Olympic National Park hikes!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Here is where you&rsquo;ll find glacier chiseled U shaped valleys and sub-alpine meadows filled with singing marmots, friendly black-tailed deer and vibrant wildflowers.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Hurricane Ridge is the most accessible Olympic mountain range in the park, located only 17 miles from Port Angeles, the largest town near Olympic NP.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">There are multiple hiking trails you can take to enjoy those mountain views and Alp like atmosphere.</p>\r\n<h3 style=\"box-sizing: border-box; color: #394340; font-family: oswald, sans-serif; font-weight: 500; line-height: 1.2; margin: 0px 0px 16px; font-size: 24px; background-color: #ffffff;\"><span id=\"Klahhane_Ridge_Trail\" class=\"ez-toc-section\" style=\"box-sizing: border-box;\">Klahhane Ridge Trail</span></h3>', '6_head.jpg', '6_tail.jpg', NULL, NULL, '2019-11-22 15:00:53', '2019-11-22 15:00:53'),
(7, 'MOUNTAINS – HURRICANE RIDGE - Section', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Rob recommended the Klahhane Ridge Trail as one of his favorite Olympic National Park things to do.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; color: #000000;\">The full loop trail was going to be 5 miles</span>&nbsp;round trip and steep for the last section of it, so we decided to walk as far as we could and then turn around.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">I stupidly had done a tough barre workout class two days before, so my legs were a mess.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">I can&rsquo;t say for sure whether this was the reason I found this quite the difficult trail. Knowing my hiking skill level, this shouldn&rsquo;t have made me feel as bad as it did.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">The ranger at the Olympic National Park&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #ef6b50; text-decoration-line: none;\" href=\"https://www.nps.gov/olym/planyourvisit/visitorcenters.htm\" target=\"_blank\" rel=\"noopener noreferrer\">Visitor Center</a>&nbsp;told us that it was a A+ leisurely walk through the Sound of Music scenery. He was spot on about the A+ Sound of Music scenery, but I&rsquo;m not too sold on the leisurely walk thing.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">But again, it could have just been my legs.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">It wasn&rsquo;t as flat as we were expecting, most of it was a gently elevation gain, with a few more steeper up and down sections.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">The kids thought it was hard too but they were in more of a complaining mode than usual, which was also one of the decisions we decided to skip the last very steep switch back<span style=\"box-sizing: border-box; color: #000000;\">&nbsp;climb up to Klahhane Ridge and turned around.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">It was a hard walk out for me as my legs progressively got sorer and slower.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Usually I am the one miles ahead of anyone else in the group, it was an unusual feeling to not be able to walk fast and fall behind no matter how hard I tried.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Would I still recommend the Klahhane Ridge Trail in Olympic National Park? Absolutely. Just don&rsquo;t do any barre classes before it.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">I mean, look at the views &ndash; simply stunning.</p>', NULL, NULL, NULL, 6, NULL, '2019-11-22 15:04:42', NULL),
(8, 'LAKES IN OLYMPIC NATIONAL PARK', '<h1><span style=\"font-family: \'comic sans ms\', sans-serif;\">LAKES IN OLYMPIC NATIONAL PARK</span></h1>\r\n<p><span style=\"font-family: \'comic sans ms\', sans-serif;\"><span style=\"color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">If you want to experience serenity and calm water activities in the Olympic Park Washington, then escape to its striking alpine and sub-alpine lakes of all shapes, sizes and colors.</span></span></p>', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">From Lake Crescent to Lake Quinault, from Hoh Lake to Heart Lake, the Olympic Peninsula has no shortage of beautiful bodies of water.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">There are over 650 lakes and wetlands in the park.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">300 of them are high mountain lakes and only accessible only in summer and early fall for those with an adventurous spirit, a love for steep climbs and primitive wilderness experiences.</p>\r\n<h3 style=\"box-sizing: border-box; color: #394340; font-family: oswald, sans-serif; font-weight: 500; line-height: 1.2; margin: 0px 0px 16px; font-size: 24px; background-color: #ffffff;\"><span id=\"Lake_Crescent\" class=\"ez-toc-section\" style=\"box-sizing: border-box;\">Lake Crescent</span></h3>', '8_head.jpg', '8_tail.jpg', NULL, NULL, '2019-11-22 15:04:42', '2019-11-22 15:04:42'),
(9, 'LAKES IN OLYMPIC NATIONAL PARK - Section', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">A 624 ft. deep shimmering glacier-carved jewel, Lake Crescent is the second largest of the lakes in Olympic National Park.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">It lies in the northern part of the park, 18 miles west of Port Angeles.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">This 12 mile long sapphire-colored lake sparkles, and it was here, at&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #ef6b50; text-decoration-line: none;\" href=\"https://www.booking.com/hotel/us/lake-crescent-lodge.en.html?aid=1854180&amp;no_rooms=1&amp;group_adults=2&amp;room1=A%2CA&amp;label=olympic-np\" target=\"_blank\" rel=\"noopener noreferrer\">Lake Crescent Lodge</a>&nbsp;(formerly Singer&rsquo;s Tavern) that President Franklin Roosevelt decided to authorize the surrounding wilderness as a national park.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">I can understand why!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Lake Crescent Lodge is seriously charming. If you do nothing else, be sure to grab a local drink and head out to sit on one of the Adirondack-style beach chairs to enjoy the view.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">It&rsquo;s a fantastic way to end your time visitingOlympic National Park.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">There are several hiking trails in the surrounding mountains and lowland forest (see Marymere Falls in the Forest section below).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">Not up for a hike?</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">You can hire boats and kayaks from Lake Crescent Lodge to enjoy water activities &ndash; serene swimming can be one of those!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; color: #555555; font-family: proxima-nova, helveticaneue, \'helvetica neue\', Helvetica, Arial; font-size: 18px; background-color: #ffffff;\">There are plenty of picnic spots in the region as well.</p>', NULL, NULL, NULL, 8, NULL, '2019-11-25 15:20:14', NULL),
(10, 'Omega-3 Fatty Acids’ Health Benefit Linked To Stem Cell Control', '<h1 class=\"entry-title\" style=\"border: 0px; margin: 0px; padding: 0px; font-family: sans-serif; font-size: 40px; font-weight: 300; line-height: 1.2em; text-transform: capitalize; color: #3a3a3a; background-color: #ffffff;\">Omega-3 Fatty Acids&rsquo; Health Benefit Linked To Stem Cell Control</h1>', '<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">For years, researchers have known that defects in an ancient cellular antenna called the primary cilium are linked with obesity and insulin resistance. Now, researchers at the&nbsp;<a style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; color: #1e73be;\" href=\"http://med.stanford.edu/\">Stanford University School of Medicine</a>&nbsp;have discovered that the strange little cellular appendage is sensing omega-3 fatty acids in the diet, and that this signal is directly affecting how stem cells in fat tissue divide and turn into fat cells.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">The finding represents a missing link between two worlds &mdash; that of dietary science, and that of molecular and cellular biology. Dietary studies have long found that the consumption of omega-3 fatty acids, essential fatty acids common in fish and nuts, is associated with lower risk of heart disease, stroke, arthritis and even depression.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">A paper describing the research was published online Nov. 21 in&nbsp;<em>Cell</em>. The senior author is&nbsp;<a style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; color: #1e73be;\" href=\"https://med.stanford.edu/profiles/peter-jackson\">Peter Jackson</a>, PhD, professor of microbiology and immunology and of pathology. The lead author is postdoctoral scholar Keren Hilgendorf, PhD</p>', '10_head.jpg', '10_tail.jpg', NULL, NULL, '2019-11-22 15:20:14', '2019-11-22 15:07:31'),
(11, 'Omega-3 Fatty Acids’ Health Benefit Linked To Stem Cell Control - Section', '<h3 style=\"border: 0px; margin: 0px 0px 20px; padding: 0px; font-family: sans-serif; font-size: 20px; font-weight: 400; line-height: 1.2em; color: #3a3a3a; background-color: #ffffff;\">Looking for signaling molecule</h3>\r\n<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">Researchers in Jackson&rsquo;s laboratory weren&rsquo;t looking for omega-3s when they started their research. They were only looking for the signaling molecule that fat stem cells were sensing. The molecule could have been anything: signaling pathways in cellular biology often involve esoteric molecules few people have heard of. They only knew that in rare diseases involving a defect in the primary cilium, people are always hungry, cannot stop eating and become obese and insulin resistant. So they were surprised when the signal turned out to be omega-3 fatty acids.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">&ldquo;When we saw that the cell was responding to omega-3 fatty acids, we realized that this had changed from just a molecular biology story to a story showing the molecular biology of how diet controls stem cells ,&rdquo; Jackson said.</p>', NULL, NULL, NULL, 10, NULL, '2019-11-22 15:20:14', NULL),
(12, 'Images From Solar Observatory Peel Away Layers Of A Stellar Mystery', '<h1 class=\"entry-title\" style=\"border: 0px; margin: 0px; padding: 0px; font-family: sans-serif; font-size: 40px; font-weight: 300; line-height: 1.2em; text-transform: capitalize; color: #3a3a3a; background-color: #ffffff;\"><span style=\"font-family: \'trebuchet ms\', geneva, sans-serif;\">Images From Solar Observatory Peel Away Layers Of A Stellar Mystery</span></h1>\r\n<p>&nbsp;</p>', '<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\"><a style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; color: #000000;\" href=\"https://www.nsf.gov/awardsearch/showAward?AWD_ID=1821294&amp;HistoricalAwards=false\">NSF-funded</a>&nbsp;scientists at the&nbsp;<a style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; color: #1e73be;\" href=\"https://www.nsf.gov/cgi-bin/good-bye?https://news.njit.edu/images-njits-big-bear-solar-observatory-peel-away-layers-solar-mystery\">New Jersey Institute of Technology</a>&nbsp;have shed new light on one of the central mysteries of solar physics: how energy from the sun is transferred to the star&rsquo;s upper atmosphere, heating it to 1 million degrees Fahrenheit and higher in some regions, temperatures that are vastly hotter than the sun&rsquo;s surface.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">With new images from the&nbsp;<a style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; color: #1e73be;\" href=\"https://www.nsf.gov/cgi-bin/good-bye?https://news.njit.edu/images-njits-big-bear-solar-observatory-peel-away-layers-solar-mystery\">New Jersey Institute of Technology</a>&lsquo;s Big Bear Solar Observatory in Big Bear, California, researchers have revealed what appears to be a likely mechanism &ndash; jets of magnetized plasma known as spicules, which spurt like geysers from the sun&rsquo;s upper atmosphere into the corona.</p>\r\n<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">In a paper published in the journal&nbsp;<a style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; color: #1e73be;\" href=\"https://www.nsf.gov/cgi-bin/good-bye?https://science.sciencemag.org/content/366/6467/890\"><em style=\"border: 0px; margin: 0px; padding: 0px;\">Science</em></a>, the team describes the key features of jet-like spicules that are, in solar terms, small-scale plasma structures between 200 and 500 kilometers wide, which erupt continuously across the sun&rsquo;s expanse. The researchers also, for the first time, show where and how the jets are generated and the paths they travel, at speeds of around 100 kilometers per second in some cases, into the corona.</p>', '12_head.jpg', '12_tail.jpg', NULL, NULL, '2019-11-22 15:20:14', '2019-11-22 17:11:35'),
(13, 'Images From Solar Observatory Peel Away Layers Of A Stellar Mystery - Section', '<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">In a paper published in the journal&nbsp;<a style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; color: #1e73be;\" href=\"https://www.nsf.gov/cgi-bin/good-bye?https://science.sciencemag.org/content/366/6467/890\"><em style=\"border: 0px; margin: 0px; padding: 0px;\">Science</em></a>, the team describes the key features of jet-like spicules that are, in solar terms, small-scale plasma structures between 200 and 500 kilometers wide, which erupt continuously across the sun&rsquo;s expanse. The researchers also, for the first time, show where and how the jets are generated and the paths they travel, at speeds of around 100 kilometers per second in some cases, into the corona.</p>\r\n<div class=\"code-block code-block-6\" style=\"border: 0px; margin: 8px 0px; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff; clear: both;\">&nbsp;</div>\r\n<p style=\"border: 0px; margin: 0px 0px 1.1em; padding: 0px; color: #3a3a3a; font-family: sans-serif; font-size: 17px; background-color: #ffffff;\">&ldquo;Unprecedented high-resolution observations from&nbsp;<a style=\"border: 0px; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; transition: color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s; color: #1e73be;\" href=\"https://www.nsf.gov/cgi-bin/good-bye?https://www.bbso.njit.edu/\">Big Bear Solar Observatory</a>&lsquo;s Goode Solar Telescope clearly show that when magnetic fields with opposite polarities reconnect in the sun&rsquo;s lower atmosphere, these jets of plasma are powerfully ejected,&rdquo; said solar physicist Wenda Cao, the observatory&rsquo;s director and a co-author of the paper.</p>', NULL, NULL, NULL, 12, NULL, '2019-11-22 15:20:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 4, NULL, NULL),
(3, 1, 5, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 4, 4, NULL, NULL),
(6, 4, 5, NULL, NULL),
(7, 6, 1, NULL, NULL),
(8, 6, 4, NULL, NULL),
(9, 6, 5, NULL, NULL),
(10, 8, 1, NULL, NULL),
(11, 8, 4, NULL, NULL),
(12, 10, 6, NULL, NULL),
(13, 12, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Tour', NULL, NULL),
(2, 'Hotel', NULL, NULL),
(3, 'Coffee', NULL, NULL),
(4, 'Adventure', NULL, NULL),
(5, 'Travel', NULL, NULL),
(6, 'Health', NULL, NULL),
(7, 'Technology', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tanvir islam', 'admin@admin.com', NULL, '$2y$10$4BpPKJZC7gOOjoQEUxVN..AhvGUT7q/mblSOclMsgqzBWwLWXTNYm', NULL, '2019-11-19 16:18:27', '2019-11-19 16:18:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
