CREATE TABLE `keygen` (
  `aid` varchar(500) DEFAULT NULL,
  `pars` varchar(1000) DEFAULT NULL,
  `msk` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `keygen` */

insert  into `keygen`(`aid`,`pars`,`msk`) values ('AA','3fefe88e81cc3e52','3fc5dba52a35ae2c');

/*Table structure for table `privatecloud` */

DROP TABLE IF EXISTS `privatecloud`;

CREATE TABLE `privatecloud` (
  `fid` varchar(500) DEFAULT NULL,
  `Tags` varchar(5000) DEFAULT NULL,
  `Labels` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `privatecloud` */

/*Table structure for table `publiccloud` */

DROP TABLE IF EXISTS `publiccloud`;

CREATE TABLE `publiccloud` (
  `fid` int(100) DEFAULT NULL,
  `fname` varchar(1000) DEFAULT NULL,
  `filedata` blob,
  `access` varchar(1000) DEFAULT NULL,
  `owner` varchar(1000) DEFAULT NULL,
  `pubkey` blob,
  `Label` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `publiccloud` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `username` varchar(200) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mno` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `dept` varchar(200) DEFAULT NULL,
  `subdept` varchar(200) DEFAULT NULL,
  `job` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `sk` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`username`,`uid`,`pass`,`email`,`mno`,`branch`,`dept`,`subdept`,`job`,`status`,`sk`) values ('swamy','swamy','swamy','swamy@gmail.com','8522991105','Delhi','Accounting','Payroll','Saller','Active','3fde9e0baf404024'),('sajid','sajid','sajid','sajid24X7@gmail.com','9985714374','Mumbai','Engineering','Programming','Java','Active','3fe527ad324b835b'),('ali','ali','ali','cloudtechnologiesprojects@gmail.com','8121953811','Mumbai','Engineering','Programming','Android','Active','3feee2e12beaa92f');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `uid` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `proof` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`uid`,`status`,`proof`) values ('ali','finish','1');

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `fid` int(100) DEFAULT NULL,
  `fname` varchar(1000) DEFAULT NULL,
  `filedata` blob,
  `access` varchar(1000) DEFAULT NULL,
  `owner` varchar(1000) DEFAULT NULL,
  `Tag` varchar(1000) DEFAULT NULL,
  `Label` blob,
  `pf` varchar(1000) DEFAULT NULL,
  `trapdrkey` varchar(1000) DEFAULT NULL,
  `sts` varchar(500) DEFAULT NULL,
  `pubkey` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

/*Table structure for table `temp1` */

DROP TABLE IF EXISTS `temp1`;

CREATE TABLE `temp1` (
  `fnm` varchar(1000) DEFAULT NULL,
  `fdata` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp1` */

/*Table structure for table `verify` */

DROP TABLE IF EXISTS `verify`;

CREATE TABLE `verify` (
  `c` varchar(1000) DEFAULT NULL,
  `d` varchar(2000) DEFAULT NULL,
  `sd` varchar(2000) DEFAULT NULL,
  `job` varbinary(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `verify` */

insert  into `verify`(`c`,`d`,`sd`,`job`) values ('Mumbai','Engineering','Programming','Java');