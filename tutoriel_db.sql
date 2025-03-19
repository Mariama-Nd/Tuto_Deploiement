-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 19 mars 2025 à 22:27
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tutoriel_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `captures`
--

CREATE TABLE `captures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `etape_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `captures`
--

INSERT INTO `captures` (`id`, `etape_id`, `path`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'captures/1tp1.jpeg', 'creer un compte sur alswaysdata', NULL, NULL),
(2, 1, 'captures/2tp2.jpeg', 'Ensuite, sur le sidebar aller sur FTP et ajouter un utilisateur FTP', NULL, NULL),
(3, 1, 'captures/3tp3.jpeg', 'pour le nom ajouter ce que vous voulez après le underscore et saisissez un mot de pass pour cet utilisateur avant de valider', NULL, NULL),
(4, 1, 'captures/4tp1.jpeg', 'copier l\'hôte FTP', NULL, NULL),
(5, 1, 'captures/5tp1.jpeg', 'maintenant connectez-vous en mettant l\'hôte que vous avez copier précédemment,et le nom d\'utilisateur et le mot de passe de l\'utilisateur que vous avez créé pour FTP et cliquer sur \"connexion rapide\"', NULL, NULL),
(6, 1, 'captures/6tp1.jpeg', 'Maintenant l\'espace à gauche représente votre espace local et à droite il ya les fichiers en ligne. faite juste un drag-and-drop ou un copier-coller de la gauche vers la droite dans le dossier \"www\" de ce que vous voulez déployer en ligne ', NULL, NULL),
(7, 1, 'captures/7tp1.jpeg', 'Maintenant de retour sur alwaysdata, aller sur MYSQL et ajouter une base de données, nommer le et valider', NULL, NULL),
(8, 1, 'captures/8tp1.jpeg', 'Ensuite, ajouter un utilisateur pour MYSQL comme vous l\'avez fait pour FTP', NULL, NULL),
(9, 1, 'captures/9tp1.jpeg', 'Retourner ensuite sur FileZilla et faites un clique droit sur votre fichier de connexion à la base de données et choisissez \"Afficher/Editer\" pour l\'ouvrir avec l\'éditeur de votre choix', NULL, NULL),
(10, 1, 'captures/10tp1.jpeg', 'maintenant remplacez l\'hôte par celui de MYSQL sur alwaysdata et pour les le nom d\'utilisateur et le mot de passe, vous remplacez par ceux de l\'utilisateur que vous avez créé pour MYSQL.', NULL, NULL),
(11, 1, 'captures/11tp1.jpeg', 'Maintenant sur alwaysdata cliquez sur phpmyadmin et connectez-vous avec l\'utilisateur de MySQL', NULL, NULL),
(12, 1, 'captures/12tp1.jpeg', 'Ensuite vous importer votre base de données pour enfin terminer complètement le déploiement', NULL, NULL),
(13, 2, 'captures/1tp2.png', '1.1 Mise à jour du système', NULL, NULL),
(14, 2, 'captures/2tp2.png', '1.2 Installation des dépendances nécessaires\r\n1.3 Ajout de la clé GPG de Docker\r\n1.4 Ajout du dépôt Docker à la liste des sources APT\r\n1.5 Installation de Docker\r\n\r\n\r\n', NULL, NULL),
(15, 2, 'captures/3tp2.jpeg', '1.6 Vérification de l’installation\r\n1.7 Activation du service Docker\r\nSupposons que vous ayez une application PHP dans un répertoire nommé `my-php-app`.\r\nCréez un fichier nommé `Dockerfile` dans le répertoire `my-php-app`.\r\n4.1 Construire l’image Docker\r\n4.2 Démarrer le conteneur\r\nAccédez à l\'application via [http://localhost:8080](http://localhost:8080).\r\n', NULL, NULL),
(16, 3, 'captures/1tp3.png', '1.1 Installation de LAMP:sudo apt install apache2 php libapache2-mod-php mysql-server php-mysql,1.2 Telechargement Prometheus:wget https://github.com/prometheus/prometheus/releases/download/v3.0.0/prometheus-3.0.0.linux-amd64.tar.gz,1.3 Décompressez le fichier téléchargé au format « tar.gz » avec la commande « tar xzf » 1.3 Décompressez le fichier téléchargé au format « tar.gz » avec la commande « tar xzf »,1.5 Creer un utilisateur « prometheus » a l’aide de la commande « useradd »,1.6  Spécifiez les dossiers de stockage des donnees « prometheus/data »,1.7 Indiquez que l’utilisateur « prometheus » est propritaire du chemin « /var/lib/prometheus/data » ,1.9 Verifiez la presence d’un fichier « prometheus.yml » dans « /usr/share/prometheus » ', NULL, NULL),
(17, 3, 'captures/2tp3.png', '1.10 Lancez un test  puis CTRL + C pour fermer :sudo /usr/share/prometheus/prometheus --config.file=/usr/share/prometheus/prometheus.yml, 2.1 Creez un script  « SystemD »  pour lancer Prometheus comme service a l’aide l’editeur nano\r\n\r\n', NULL, NULL),
(18, 3, 'captures/3tp3.png', '2.2  Completez le fichier en saisissant les indications suivantes»  \r\n', NULL, NULL),
(19, 3, 'captures/6tp3.png', '2.3 Relancez le daemon afin que le nouveau service prometheus soit pris en compte :  \r\nsudo systemctl daemon-reload,2.4 Activez Prometheus en tant que service :  \r\nsudo systemctl start prometheus,2.5 Verifiez que Prometheus fonctionne:sudo systemctl status prometheus\r\n', NULL, NULL),
(20, 3, 'captures/7tp3.png', '2.6 Accedez a l’interface web de Prometheus au port 9090\r\n', NULL, NULL),
(21, 3, 'captures/8tp3.png', 'Apres installation de Prometheus c’est Grafana qui vous permettra d’obtenir des tableaux de bord (« dashboads ») complets. ', NULL, NULL),
(22, 3, 'captures/9tp3.png', 'Ensuite', NULL, NULL),
(23, 3, 'captures/10tp3.png', '4.1 Verifiez  serveur Grafana marche: sudo systemctl status Grafana-server', NULL, NULL),
(24, 3, 'captures/11tp3.png', '4.2 Accedez a l’interface web de Grafana au port 3000 : firefox %u http://localhost:3000 \r\n', NULL, NULL),
(25, 3, 'captures/12tp3.png', 'Une seconde fenêtre vous demande de créer un nouveau mot de passe ; faites la modification du mot de passe initial et cliquez le bouton « Submit » \r\n', NULL, NULL),
(26, 3, 'captures/13tp3.png', 'Maintenant que Prometheus et Grafana sont installés, nous allons les connecter entre eux. En effet, Grafana doit utiliser la base de données de Prometheus pour pouvoir afficher des relevés en temps réel sur différents critères.', NULL, NULL),
(27, 3, 'captures/14tp3.png', '• Lancez Grafana depuis votre navigateur (http://localhost:3000) et connectez-vous à l’interface \r\n• Cliquez sur « Add your first data source » \r\n• Dans la liste des sources affichées, cliquez sur « Prometheus » \r\n', NULL, NULL),
(28, 3, 'captures/7tp4', 'OBJECTIFS ET ETAPES A SUIVRE', NULL, NULL),
(29, 4, 'captures/1tp4.png', '1.1 Installez nodeJS\r\n1.2  Installer le gestionnaire de package nodeJ NPM :\r\n. Créer un nouveau dossier « node_monitoring »\r\n1.3 Creer l’application Node.js :   \r\n. Installer express\r\n', NULL, NULL),
(30, 4, 'captures/5tp4.png', '1.4 Créez un fichier `app.js` contenant', NULL, NULL),
(31, 4, 'captures/6tp4.png', '1.5 Testez l’application:node  app.js\r\nFirefox %u http://localhost:3000\r\n\r\n1.6 Containeriser l\'application avec Docker:\r\n   a) Creation du Dockerfile:    \r\nsudo nano Dockerfile', NULL, NULL),
(32, 4, 'captures/8tp4.png', '1.6 Containeriser l\'application avec Docker:\r\n   b) Construisez l’image Docker:    \r\nsudo  docker build -t node_app . \r\n', NULL, NULL),
(33, 4, 'captures/9tp4.png', '1.6 Containeriser l\'application avec Docker:\r\n   c) Lancez le conteneu:', NULL, NULL),
(34, 5, 'captures/1tp5.png', 'OBJECTIFS ET ETAPES A SUIVRE\r\n', NULL, NULL),
(35, 5, 'captures/2tp5.png', '2. Configuration d’un projet Firebase et intégration de l’application \r\n', NULL, NULL),
(36, 5, 'captures/3tp5.png', '3. Déploiement de l’application avec Firebase Hosting', NULL, NULL),
(37, 5, 'captures/4tp5.png', '4. Configuration des notifications push pour l’application', NULL, NULL),
(38, 5, 'captures/5tp5.png', 'Fin', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etapes`
--

CREATE TABLE `etapes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ordre` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etapes`
--

INSERT INTO `etapes` (`id`, `titre`, `description`, `ordre`, `created_at`, `updated_at`) VALUES
(1, 'TP1', 'Déployer une application sur alwaysdata avec FileZilla', 1, '2025-01-12 20:05:22', '2025-01-12 20:05:22'),
(2, 'TP2', 'Déploiement d’une application PHP avec Docker', 2, '2025-01-19 20:38:08', '2025-01-19 20:38:08'),
(3, 'TP3', 'Supervision et Monitoring app PHP avec Grafana et Prometheus', 3, '2025-01-19 21:09:45', '2025-01-19 21:09:45'),
(4, 'TP4', 'Supervision et Monitoring Node.js avec Grafana et Prometheus', 4, '2025-01-19 21:11:07', '2025-01-19 21:11:07'),
(5, 'TP5', 'Déploiement d’une application mobile avec Firebase', 5, '2025-01-19 21:11:52', '2025-01-19 21:11:52');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_12_193028_create_etapes_table', 1),
(5, '2025_01_12_193046_create_captures_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4aIbpAdbTlAe84PUZChX2uWwS1hl8L5qX3aHVhhc', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMW9zZWQxVHJNM2tsN1VkTGhwcFBZeWVUN1NNWk4zTlhYTWY4RUJGMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldGFwZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737331215),
('AGnU01qCVgaFtxPsmXrRiUOd4G3mJ3GN8NE6qkHi', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTdscjRoYm9xVjZSWEFkWXdKZm13c2VvS0xJM3RUczJTSk9kVzFHZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldGFwZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737505162),
('dXd6GZc4uEQPbl5RYIeNJT1ChWBJfSBWvELZkLhy', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidU81T1NYeFhKZVV4UlRDWnQ5bTRkbHkydVFvQzdzcWVNaXJ3c1lhUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldGFwZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737663503),
('MqBq0J13q6PUqDYsbpOsleu8GVCcyQNujC9uTCcY', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkxsYlU4WUQ3dDRsdEdqemd3QW1ZdWlNR2ZSVDBITDZIbFJPZGNRbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldGFwZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737636616),
('XAxvXcnmOspmzuq6YmZbTFpf3QLTEASGbVwmqBpE', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR01jbWdJa1A4NjgxaE9yZ0VFZ0NzZEhYdG1nTkVYNVVoZzN0YTRaZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldGFwZXMvNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737548997),
('xSHaDZo2M8yr9V7Xh4wpQtapcGQduWV0hEJyL1DK', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3hCTUlFV1FRV2VWU095Ym9YRlFic2VBV2VXMUVub0tldWIybzBuYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldGFwZXMvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737464842);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `captures`
--
ALTER TABLE `captures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `captures_etape_id_foreign` (`etape_id`);

--
-- Index pour la table `etapes`
--
ALTER TABLE `etapes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `etapes_ordre_unique` (`ordre`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `captures`
--
ALTER TABLE `captures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `etapes`
--
ALTER TABLE `etapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `captures`
--
ALTER TABLE `captures`
  ADD CONSTRAINT `captures_etape_id_foreign` FOREIGN KEY (`etape_id`) REFERENCES `etapes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
