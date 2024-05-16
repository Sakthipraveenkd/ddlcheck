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
)

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
)
