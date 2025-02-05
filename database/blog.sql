-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2025 at 08:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Education', 'education', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(2, 'Technology', 'technology', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(3, 'Health', 'health', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(4, 'Lifestyle', 'lifestyle', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(5, 'Business', 'business', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(6, 'Travel', 'travel', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(7, 'Food', 'food', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(8, 'Entertainment', 'entertainment', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(9, 'Science', 'science', '2025-01-31 17:26:11', '2025-01-31 17:26:11'),
(10, 'Sports', 'sports', '2025-01-31 17:26:11', '2025-01-31 17:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'hi!', '2025-01-31 16:37:06', '2025-01-31 16:37:06'),
(2, 5, 2, 'Awesome, I love koshary!', '2025-01-31 17:24:07', '2025-01-31 17:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_08_180818_create_posts_table', 1),
(5, '2021_04_16_154312_create_categories_table', 1),
(6, '2021_06_18_143226_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `thumbnail`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(2, 1, 2, 'getting-started-with-php', 'Getting Started with PHP: What is PHP?', 'thumbnails/NGaxgf4GDb0YC4ZnG3DDDUZl59IHDKBdWvislS1P.png', 'Dive into the basics of PHP programming and start building dynamic web applications today!', 'PHP is a server-side scripting language, meaning it runs on the web server where your website is hosted. It processes code on the server to generate HTML, which is then sent to the client\'s browser. This allows PHP to create dynamic content, interact with databases, handle forms, and much more.', '2025-01-31 15:37:42', '2025-01-31 16:56:36', NULL),
(3, 1, 3, 'importance-of-maintaining-healthy-lifestyle', 'The Importance of Maintaining a Healthy Lifestyle', 'thumbnails/Xt3poZQY8h8uFxbbJePgxSpTxFYMlNeYc0fUoFXQ.png', 'Learn the key factors in maintaining a healthy lifestyle and how small changes can lead to significant improvements in your overall well-being.', 'In today\'s fast-paced world, prioritizing health is essential for overall well-being. A healthy lifestyle enhances energy levels, mental clarity, and longevity while reducing the risk of chronic diseases. Achieving this balance involves proper nutrition, regular physical activity, quality sleep, and mental well-being. Small, consistent changes—such as mindful eating, staying active, and managing stress—can lead to lasting improvements in health and happiness. It’s never too late to make positive changes, and every step toward a healthier lifestyle benefits your future self.', '2025-01-31 16:51:21', '2025-01-31 16:56:03', NULL),
(4, 1, 1, 'future-of-education-embracing-technology-innovation', 'The Future of Education: Embracing Technology and Innovation', 'thumbnails/ae8mZ1IjFqGirQ2QY5cmsA0jd7P5dlDCRKbPEX21.png', 'Explore how technological advancements are shaping the future of education and how they can enhance learning experiences for students of all ages.', 'Education is rapidly evolving with technology, making learning more accessible, personalized, and engaging. Online platforms allow students to learn at their own pace, while AI-powered tools provide instant feedback and adaptive learning experiences. Innovations like virtual classrooms, project-based learning, and experiential teaching methods are transforming traditional education models. However, technology should complement, not replace, the human connection between teachers and students. The future of education lies in balancing digital advancements with meaningful personal interaction, ensuring holistic development and lifelong learning.', '2025-01-31 16:54:13', '2025-01-31 16:55:32', NULL),
(5, 1, 7, 'rich-flavors-of-egyptian-koshari', 'The Rich Flavors of Egyptian Koshari: A Taste of Tradition', 'thumbnails/3BOn4O9RiJI26UCUtA6H3LpD2nywaMxbydAQ7eiI.png', 'Discover the history and flavors of Koshari, Egypt\'s beloved national dish, and why it holds a special place in Egyptian cuisine.', 'Egyptian Koshari is a beloved street food that embodies the rich cultural heritage of Egypt. A hearty and flavorful dish, Koshari is made from a unique combination of rice, lentils, pasta, and chickpeas, topped with a tangy tomato sauce, crispy fried onions, and a dash of spicy vinegar. Its origins trace back to the 19th century, influenced by Indian and Italian culinary traditions, but it has since evolved into a national favorite enjoyed by people from all walks of life. Known for its affordability and satisfying taste, Koshari is a staple of Egyptian street food culture, offering a delicious blend of textures and flavors in every bite. Whether eaten at a bustling food stall or made at home, Koshari represents the essence of Egypt—warm, diverse, and deeply rooted in tradition.', '2025-01-31 17:05:47', '2025-01-31 17:05:47', NULL),
(6, 1, 5, 'power-of-networking-in-business-success', 'The Power of Networking in Business Success', 'thumbnails/WEWxxfJn8WEt6S4nQI7jpxP6h2gd5yEz99ljmPbM.png', 'Discover how strategic networking can open doors to new opportunities, partnerships, and long-term business growth.', 'In the business world, success is often built on strong relationships. Networking is more than just exchanging business cards; it’s about creating meaningful connections that can lead to new opportunities, collaborations, and professional growth. Whether through industry events, online platforms like LinkedIn, or informal meetings, effective networking helps businesses gain insights, attract potential clients, and stay ahead of market trends. Strong professional relationships can lead to mentorship, investment opportunities, and valuable partnerships that drive long-term success. By actively engaging with peers, sharing knowledge, and fostering trust, businesses can expand their reach and unlock new levels of growth.', '2025-01-31 17:33:04', '2025-01-31 17:33:04', NULL),
(7, 1, 10, 'rise-of-padel-fastest-growing-sport', 'The Rise of Padél: The Fastest-Growing Sport in the World', 'thumbnails/RmRqCYuW45LewqWc1dOFvb1mrQbqFNa6dbBmk1mp.png', 'Discover why padél, a mix of tennis and squash, is becoming a global phenomenon and attracting players of all levels.', 'Padél is quickly gaining popularity worldwide, blending elements of tennis and squash into an exciting and accessible sport. Played on a smaller court surrounded by glass walls, padél emphasizes strategy and teamwork over sheer power, making it enjoyable for beginners and experienced athletes alike. Originating in Mexico in the late 1960s, the sport has seen a massive rise in Europe, Latin America, and the Middle East, with professional tournaments and dedicated clubs emerging globally. Its social aspect, fast-paced rallies, and lower entry barriers compared to traditional racket sports make padél an appealing choice for those looking to stay active and have fun. As more people embrace this dynamic game, padél continues to establish itself as a key player in the world of modern sports.', '2025-01-31 17:34:56', '2025-01-31 17:34:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mennatallah', 'Mennatallah Amir Monir', 'mennatallah@gmail.com', NULL, '$2y$10$VT44DylIKmjxnWpqBcF2wuo8/0wAsErkQfN7F45jzBTfKzppmlKMG', NULL, '2025-01-31 12:38:00', '2025-01-31 12:38:00'),
(2, 'Ahmed', 'Ahmed Ahmed', 'ahmed@gmail.com', NULL, '$2y$10$Bq.Ol2Uv5sLbyf0o4pKj7.CWAhSzMP2M5vMhqBrAwaB9ys.x/0mOq', NULL, '2025-01-31 17:17:32', '2025-01-31 17:17:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
