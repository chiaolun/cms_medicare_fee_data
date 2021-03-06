/* Just the fields relevant to each payment record per hcpcs_code per provider */

/*  Note: field sizes are not optimized, check appendix A in the CMS methodology */

CREATE TABLE `payments` (
  `npi` char(12) DEFAULT NULL,
  `medicare_participation_indicator` char(1) DEFAULT NULL,
  `place_of_service` char(1) DEFAULT NULL,
  `hcpcs_code` char(6) DEFAULT NULL,
  `hcpcs_description` varchar(255) DEFAULT NULL,
  `line_srvc_cnt` mediumint(7) DEFAULT NULL,
  `bene_unique_cnt` mediumint(7) DEFAULT NULL,
  `bene_day_srvc_cnt` mediumint(7) DEFAULT NULL,
  `average_Medicare_allowed_amt` decimal(15,2) DEFAULT NULL,
  `stdev_Medicare_allowed_amt` decimal(15,2) DEFAULT NULL,
  `average_submitted_chrg_amt` decimal(15,2) DEFAULT NULL,
  `stdev_submitted_chrg_amt` decimal(15,2) DEFAULT NULL,
  `average_Medicare_payment_amt` decimal(15,2) DEFAULT NULL,
  `stdev_Medicare_payment_amt` decimal(15,2) DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
