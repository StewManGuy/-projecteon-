CREATE TABLE IF NOT EXISTS `ik_fd_contracts` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT,
  `resto` varchar(30) NOT NULL,
  `food` varchar(30) NOT NULL,
  `route` int(2) NOT NULL,
  `distance` float NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `minlevel` int(2) DEFAULT NULL,
  `image` text DEFAULT NULL,
  KEY `contract_id` (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `ik_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(30) NOT NULL,
  `experience` int(11) NOT NULL,
  `job` varchar(50) NOT NULL,
  `dailylimit` int(10) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;