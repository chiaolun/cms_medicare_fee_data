/* Just the fields relevant for each provider */
/*
  A unique id can be derived from npi, medicare_participation_indicator, and place_of_service
*/

CREATE TABLE `providers` (
  `npi` char(12) DEFAULT NULL,
  `nppes_provider_last_org_name` varchar(255) DEFAULT NULL,
  `nppes_provider_first_name` varchar(255) DEFAULT NULL,
  `nppes_provider_mi` char(2) DEFAULT NULL,
  `nppes_credentials` varchar(20) DEFAULT NULL,
  `nppes_provider_gender` char(1) DEFAULT NULL,
  `nppes_entity_code` char(2) DEFAULT NULL,
  `nppes_provider_street1` varchar(255) DEFAULT NULL,
  `nppes_provider_street2` varchar(255) DEFAULT NULL,
  `nppes_provider_city` varchar(100) DEFAULT NULL,
  `nppes_provider_zip` varchar(20) DEFAULT NULL,
  `nppes_provider_state` char(4) DEFAULT NULL,
  `nppes_provider_country` char(4) DEFAULT NULL,
  `provider_type` varchar(100) DEFAULT NULL,
  `medicare_participation_indicator` char(1) DEFAULT NULL,
  `place_of_service` char(1) DEFAULT NULL,
  KEY `npi_participation_indicator_pos` (`npi`,`medicare_participation_indicator`,`place_of_service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
