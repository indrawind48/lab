/*
SQLyog Ultimate v10.42 
MySQL - 5.0.17-nt : Database - klin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`klin` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `klin`;

/*Table structure for table `backup_kelompok_parameter_uji` */

DROP TABLE IF EXISTS `backup_kelompok_parameter_uji`;

CREATE TABLE `backup_kelompok_parameter_uji` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(10) NOT NULL default '',
  `nama` char(50) default '',
  PRIMARY KEY  (`kode`),
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `backup_kelompok_parameter_uji` */

insert  into `backup_kelompok_parameter_uji`(`id`,`kode`,`nama`) values (5,'ANA01','ANALISA FESES'),(7,'CAI01','CAIRAN TUBUH'),(1,'HEM01','HEMATOLOGI'),(10,'HEM02','HEMOSTASIS'),(3,'IMU01','IMUNO-SEROLOGI'),(2,'KIM01','KIMIA'),(8,'MIK01','MIKROBIOLOGI'),(6,'NAR01','NARKOBA'),(9,'PAT01','PATOLOGI ANATOMI'),(4,'URI01','URINALISIS');

/*Table structure for table `backup_parameter_uji` */

DROP TABLE IF EXISTS `backup_parameter_uji`;

CREATE TABLE `backup_parameter_uji` (
  `no` int(10) NOT NULL auto_increment,
  `kode` char(10) NOT NULL default '',
  `sub_kode` char(10) default '',
  `nama` varchar(100) default '',
  KEY `no` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `backup_parameter_uji` */

insert  into `backup_parameter_uji`(`no`,`kode`,`sub_kode`,`nama`) values (1,'HEM01','HEM01-001','Hematologi Rutin/10 parameter (Hb, WBC, Plt, RBC, Hmt, MCV, MCH, MCHC, RDW,3 Diff)'),(2,'HEM01','HEM01-002','Hematologi Rutin/4 parameter (Hb, WBC, Hmt, Plt)'),(3,'HEM01','HEM01-003','Hitung Jenis Lekosit (5 Diff)'),(4,'HEM01','HEM01-004','Trombosit (Plt)'),(5,'HEM01','HEM01-005','Limfosit Plasma Biru (LPB)'),(6,'HEM01','HEM01-006','KED / LED'),(7,'HEM01','HEM01-007','Morfologi Darah Tepi (MDT)'),(8,'HEM01','HEM01-008','Retikulosit'),(9,'HEM01','HEM01-009','Golongan Darah ABO/Rhesus'),(10,'HEM01','HEM01-010','Ratio IM / IT'),(11,'HEM01','HEM01-011','Coomb\'s Direk'),(12,'HEM01','HEM01-012','Coomb\'s Indirek'),(13,'HEM01','HEM01-013','Malaria'),(14,'HEM01','HEM01-014','Angka Parasit Malaria'),(15,'HEM01','HEM01-015','Filaria'),(16,'HEM02','HEM02-001','Masa Pembekuan (CT)'),(17,'HEM02','HEM02-002','Masa Pendarahan (BT)'),(18,'HEM02','HEM02-003','PPT'),(19,'HEM02','HEM02-004','aPPT'),(20,'HEM02','HEM02-005','D-Dimer'),(21,'HEM02','HEM02-006','ACA lgM'),(22,'HEM02','HEM02-007','ACA lgG');

/*Table structure for table `dokter` */

DROP TABLE IF EXISTS `dokter`;

CREATE TABLE `dokter` (
  `id` int(10) NOT NULL auto_increment,
  `dokter_pemeriksa` char(35) NOT NULL default '',
  `kode` char(15) NOT NULL default '',
  `fee` int(10) NOT NULL default '0',
  `persen` int(10) NOT NULL default '0',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dokter` */

insert  into `dokter`(`id`,`dokter_pemeriksa`,`kode`,`fee`,`persen`) values (6,'dr Jani T','51008134200',4500,10),(7,'x','51013135623',17280,16),(8,'x','51013140424',12500,10),(9,'dr. Sitek F','51028113209',21600,20),(10,'dr. Sitek F','51028114541',0,0),(11,'dr. Eko S, SpPD','51102134456',10500,10),(12,'ad','51109113714',0,0),(13,'ad','51109114032',0,0),(14,'asdsa','51110024234',0,0),(15,'asdsa','51110024606',0,0),(16,'asdsa','51110030247',0,0),(17,'zz','51110053835',0,0),(18,'asd','51114120658',0,0),(19,'dr. Eko S, SpPD','51115132446',0,0),(20,'dr Jani T','51115133106',0,0),(21,'asd','51115162010',0,0),(22,'asd','51115162037',0,0),(23,'asd','51115162050',0,0),(24,'asd','51115162140',0,0),(25,'sad','51115163741',0,0),(26,'sad','51115163807',0,0),(27,'sad','51115163810',0,0),(28,'sad','51115163821',0,0),(29,'sad','51115163926',0,0),(30,'sad','51115164003',0,0),(31,'www','51115164235',0,0),(32,'www','51115164405',0,0),(33,'www','51115164426',0,0),(34,'saf','51115164723',0,0),(35,'dddddd','51129131837',0,0),(36,'zxasd','60113043025',0,0),(37,'qqq','60118052845',0,0),(38,'a','60118054056',0,0),(39,'d','60118054532',0,0),(40,'f','60118081817',0,0),(41,'ads','60118084327',0,0),(42,'dsa','60120042937',0,0);

/*Table structure for table `jenis_pasien` */

DROP TABLE IF EXISTS `jenis_pasien`;

CREATE TABLE `jenis_pasien` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(5) default '',
  `jenis` char(50) default '',
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jenis_pasien` */

insert  into `jenis_pasien`(`id`,`kode`,`jenis`) values (1,'UMU','UMUM'),(2,'ASU','ASURANSI'),(3,'MCU','MCU'),(4,'ETC','LAIN-LAIN');

/*Table structure for table `kelompok_parameter_uji` */

DROP TABLE IF EXISTS `kelompok_parameter_uji`;

CREATE TABLE `kelompok_parameter_uji` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(10) NOT NULL default '',
  `nama` char(50) default '',
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kelompok_parameter_uji` */

insert  into `kelompok_parameter_uji`(`id`,`kode`,`nama`) values (5,'ANA','ANALISA FESES'),(7,'CAI','CAIRAN_TUBUH'),(1,'HEM','HEMATOLOGI'),(3,'IMU','IMUNO-SEROLOGI'),(2,'KIM','KIMIA'),(8,'MIK','MIKROBIOLOGI'),(6,'NAR','NARKOBA'),(9,'PAT','PATOLOGI_ANATOMI'),(12,'URI','URINALISA');

/*Table structure for table `kunjungan_pasien` */

DROP TABLE IF EXISTS `kunjungan_pasien`;

CREATE TABLE `kunjungan_pasien` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(15) default NULL,
  `id_pasien` char(15) default NULL,
  `tanggal` date default NULL,
  `nama_pengunjung` char(20) default '',
  `alamat_pengunjung` varchar(100) default '',
  `jenis_pengunjung` char(20) default '',
  `dokter_pengirim` char(35) default '',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kunjungan_pasien` */

insert  into `kunjungan_pasien`(`id`,`kode`,`id_pasien`,`tanggal`,`nama_pengunjung`,`alamat_pengunjung`,`jenis_pengunjung`,`dokter_pengirim`) values (10,'51008134200','PSN0001','2015-10-08','Andi','Sintang','UMU','dr Jani T'),(11,'51013135623','PSN0002','2015-10-13','x','jl,mt haryono','UMU','x'),(12,'51013140424','PSN0003','2015-10-13','y','jl.siliwangi','UMU','x'),(13,'51028113209','PSN0004','2015-10-28','An. Ajril','Mungguk Serantung','UMU','dr. Sitek F'),(14,'51028114541','PSN0005','2015-10-28','An. Ajril','Mungguk Serantung','UMU','dr. Sitek F'),(15,'51102134456','PSN0006','2015-11-02','Tn. Lupat','Nanga Dangkan','UMU','dr. Eko S, SpPD'),(16,'51109113714','PSN0007','2015-11-09','r','asd','ASU','ad'),(17,'51109114032','PSN0008','2015-11-09','r','asd','ASU','ad'),(18,'51110024234','PSN0009','2015-11-10','ad','sad','ASU','asdsa'),(19,'51110024606','PSN0010','2015-11-10','ad','sad','ASU','asdsa'),(20,'51110030247','PSN0011','2015-11-10','adaaa','sad','ASU','asdsa'),(21,'51110053835','PSN0012','2015-11-10','zz','zzz','UMU','zz'),(22,'51114120658','PSN0013','2015-11-14','sad','sad','MCU','asd'),(23,'51115132446','PSN0006','2015-11-15','Tn. Lupat','Nanga Dangkan','UMU','dr. Eko S, SpPD'),(24,'51115133106','PSN0001','2015-11-15','Andi','Sintang','UMU','dr Jani T'),(25,'51115162010','PSN0014','2015-11-15','asdsadas','asd','MCU','asd'),(26,'51115162037','PSN0015','2015-11-15','asdsadas','asd','MCU','asd'),(27,'51115162050','PSN0016','2015-11-15','asdsadas','asd','MCU','asd'),(28,'51115162140','PSN0017','2015-11-15','asda','asd','MCU','asd'),(29,'51115163741','PSN0018','2015-11-15','d','sad','UMU','sad'),(30,'51115163807','PSN0019','2015-11-15','d','sad','UMU','sad'),(31,'51115163810','PSN0020','2015-11-15','d','sad','UMU','sad'),(32,'51115163821','PSN0021','2015-11-15','d','sad','UMU','sad'),(33,'51115163926','PSN0022','2015-11-15','d','sad','UMU','sad'),(34,'51115164003','PSN0023','2015-11-15','d','sad','UMU','sad'),(35,'51115164235','PSN0024','2015-11-15','www','www','UMU','www'),(36,'51115164405','PSN0025','2015-11-15','www','www','UMU','www'),(37,'51115164426','PSN0026','2015-11-15','www','www','UMU','www'),(38,'51115164723','PSN0027','2015-11-15','asd','asd','UMU','saf'),(39,'51129131837','PSN0028','2015-11-29','ddddd','dddd','UMU','dddddd'),(40,'60113043025','PSN0029','2016-01-13','asd','asd','ASU','zxasd'),(41,'60118052845','PSN0030','2016-01-18','qqq','qq','ASU','qqq'),(42,'60118054056','PSN0031','2016-01-18','q','qq','ASU','a'),(43,'60118054532','PSN0032','2016-01-18','dd','d','MCU','d'),(44,'60118081817','PSN0033','2016-01-18','k','sa','ETC','f'),(45,'60118084327','PSN0034','2016-01-18','asd','a','ASU','ads'),(46,'60120042937','PSN0035','2016-01-20','asda','asd','ASU','dsa');

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `tanggal` timestamp NULL default CURRENT_TIMESTAMP,
  `user` char(15) NOT NULL default 'admin',
  `desk` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `log` */

insert  into `log`(`tanggal`,`user`,`desk`) values ('2015-10-30 15:24:05','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:18:58','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-01 10:55:50','admin','Tambah Data Pasien, ID Pasien = PSN0004'),('2015-10-27 15:00:12','admin','Tambah Data Kelompok Parameter Uji, Nama Kelompok = gh'),('2015-09-26 10:58:13','admin','Tambah Data Pasien, ID Pasien = PSN0008'),('2015-10-26 11:13:16','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-26 11:13:58','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-26 11:14:20','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-26 11:20:38','admin','Tambah Data Pasien, ID Pasien = asdasdasdasdasdas'),('2015-10-26 11:21:04','admin','Tambah Data Pasien, Nama Pasien = llllll'),('2015-10-26 11:21:29','admin','Tambah Data Kelompok Parameter Uji, Nama = hhhhhhhhhhhhh'),('2015-10-26 11:23:37','admin','Tambah Data Parameter Uji, Nama Parameter = hasdkjhaskhdashkd'),('2015-10-26 10:11:38','admin','Tambah Data Paket Pemeriksaan, Nama Paket = asdsadasdsad'),('2015-10-30 15:26:37','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:27:21','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:43:28','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:45:23','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:46:02','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:46:45','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:55:00','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:58:31','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 15:58:44','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:00:06','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:00:20','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:25:33','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:25:55','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:27:59','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:29:01','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:29:06','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:29:40','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:36:27','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:41:09','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:41:35','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:41:52','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:42:07','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:42:18','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:44:21','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:45:33','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:45:54','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:46:36','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:48:03','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:49:59','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-10-30 16:52:51','admin','Tambah Data Hasil Uji, No Registrasi = 51015104408'),('2015-11-01 17:43:06','admin','Tambah Data Pasien, Nama Pasien = indra minggui'),('2015-11-01 17:45:09','admin','Tambah Data Hasil Uji, No Registrasi = 51101114234'),('2015-11-01 17:47:47','admin','Tambah Data Hasil Uji, No Registrasi = 51101114234'),('2015-11-01 17:48:19','admin','Tambah Data Hasil Uji, No Registrasi = 51101114234'),('2015-11-01 17:49:12','admin','Tambah Data Pasien, Nama Pasien = asd'),('2015-11-01 17:49:24','admin','Tambah Data Hasil Uji, No Registrasi = 51101114852'),('2015-11-01 19:55:42','admin','Tambah Data Pasien, Nama Pasien = qq'),('2015-11-01 19:56:01','admin','Tambah Data Hasil Uji, No Registrasi = 51101135516'),('2015-11-03 14:56:54','admin','Tambah Data Hasil Uji, No Registrasi = 51101114234'),('2015-11-03 16:59:39','admin','Tambah Data Hasil Uji, No Registrasi = 51101114234'),('2015-11-03 17:01:15','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-11-08 16:21:35','admin','Tambah Data Pasien, Nama Pasien = indra las'),('2015-11-09 10:53:18','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-11-09 10:55:05','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-11-09 10:55:26','admin','Tambah Data Hasil Uji, No Registrasi = 51015085616'),('2015-11-09 12:20:15','admin','Tambah Data Pasien, Nama Pasien = tes'),('2015-11-10 07:50:57','admin','Tambah Data Hasil Uji, No Registrasi = 51109113714'),('2015-11-10 11:42:14','admin','Tambah Data Hasil Uji, No Registrasi = 51110053835'),('2015-11-13 09:40:01','admin','Tambah Data Hasil Uji, No Registrasi = 51109114032'),('2015-11-13 09:40:58','admin','Tambah Data Hasil Uji, No Registrasi = 51109114032'),('2015-11-13 09:41:05','admin','Tambah Data Hasil Uji, No Registrasi = 51109114032'),('2015-11-13 09:53:02','admin','Tambah Data Hasil Uji, No Registrasi = 51112122052'),('2015-11-13 17:28:51','admin','Tambah Data Hasil Uji, No Registrasi = 51008134200');

/*Table structure for table `paket_filter` */

DROP TABLE IF EXISTS `paket_filter`;

CREATE TABLE `paket_filter` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(20) NOT NULL default '',
  `parameter` char(50) NOT NULL default '',
  `biaya` int(10) NOT NULL default '0',
  PRIMARY KEY  (`kode`,`parameter`),
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paket_filter` */

insert  into `paket_filter`(`id`,`kode`,`parameter`,`biaya`) values (13,'PAKET-001','HEM-001',0),(14,'PAKET-002','NAR-001',0),(15,'PAKET-002','NAR-002',0),(16,'PAKET-002','NAR-003',0);

/*Table structure for table `paket_nama` */

DROP TABLE IF EXISTS `paket_nama`;

CREATE TABLE `paket_nama` (
  `kode` char(20) NOT NULL default '',
  `parameter` char(50) NOT NULL default '',
  `nama_parameter` varchar(100) default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paket_nama` */

insert  into `paket_nama`(`kode`,`parameter`,`nama_parameter`) values ('PAKET-001','HEM-001','Hemoglobin'),('PAKET-002','NAR-001','Amphetamin'),('PAKET-002','NAR-002','Benzodiazepin'),('PAKET-002','NAR-003','Coccain');

/*Table structure for table `paket_pemeriksaan` */

DROP TABLE IF EXISTS `paket_pemeriksaan`;

CREATE TABLE `paket_pemeriksaan` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(30) NOT NULL default '',
  `nama_paket` char(50) NOT NULL default '',
  `parameter` text NOT NULL,
  `biaya` int(20) NOT NULL default '0',
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paket_pemeriksaan` */

insert  into `paket_pemeriksaan`(`id`,`kode`,`nama_paket`,`parameter`,`biaya`) values (2,'PAKET-001','ASD1','HEM-001',1112),(3,'PAKET-002','NAR','NAR-001,NAR-002,NAR-003',1000);

/*Table structure for table `paket_total` */

DROP TABLE IF EXISTS `paket_total`;

CREATE TABLE `paket_total` (
  `kode` char(20) NOT NULL default '',
  `total` decimal(32,0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paket_total` */

insert  into `paket_total`(`kode`,`total`) values ('PAKET-001',0),('PAKET-002',0);

/*Table structure for table `parameter_pasien` */

DROP TABLE IF EXISTS `parameter_pasien`;

CREATE TABLE `parameter_pasien` (
  `id` int(10) NOT NULL auto_increment,
  `tanggal` date default NULL,
  `id_pasien` char(15) default NULL,
  `kode` char(15) default NULL,
  `parameter_uji` text,
  `paket` text,
  `load` char(1) default NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `parameter_pasien` */

insert  into `parameter_pasien`(`id`,`tanggal`,`id_pasien`,`kode`,`parameter_uji`,`paket`,`load`) values (10,'2015-10-08','PSN0001','51008134200','HEM-003,HEM-009',NULL,'Y'),(11,'2015-10-13','PSN0002','51013135623','HEM-001,HEM-002,HEM-004,HEM-023,HEM-024,HEM-025,HEM-026,HEM-027,HEM-028,HEM-029',NULL,'Y'),(12,'2015-10-13','PSN0003','51013140424','HEM-001,HEM-002,IMU-028,KIM-006,URI-001',NULL,'Y'),(13,'2015-10-28','PSN0004','51028113209','HEM-001,HEM-002,HEM-004,HEM-023,HEM-024,HEM-025,HEM-026,HEM-027,HEM-028,HEM-029',NULL,'Y'),(14,'2015-10-28','PSN0005','51028114541','HEM-001,HEM-002,HEM-004,HEM-023,HEM-024,HEM-025,HEM-026,HEM-027,HEM-028,HEM-029',NULL,'Y'),(15,'2015-11-02','PSN0006','51102134456','KIM-006,KIM-007,KIM-012,KIM-013',NULL,'Y'),(16,'2015-11-09','PSN0007','51109113714','CAI-001,CAI-002',NULL,'Y'),(17,'2015-11-09','PSN0008','51109114032','HEM-001,HEM-002,HEM-004,HEM-024',NULL,'Y'),(18,'2015-11-10','PSN0009','51110024234','ANA-001,ANA-015,HEM-001,HEM-002,HEM-004,HEM-024',NULL,'Y'),(19,'2015-11-10','PSN0010','51110024606','ANA-001,ANA-015,CAI-001,CAI-002,KIM-001,KIM-002,KIM-003,KIM-004,KIM-005,KIM-006,KIM-007,KIM-008,KIM-009,KIM-010,NAR-001,NAR-002,NAR-003,NAR-004,NAR-005,NAR-006,URI-001,URI-002,URI-014,URI-015,HEM-001,HEM-002,HEM-004,HEM-024',NULL,'Y'),(20,'2015-11-10','PSN0011','51110030247','ANA-001,ANA-015,CAI-001,CAI-002,KIM-001,KIM-002,KIM-003,KIM-004,KIM-005,KIM-006,KIM-007,KIM-008,KIM-009,KIM-010,NAR-001,NAR-002,NAR-003,NAR-004,NAR-005,NAR-006,URI-001,URI-002,URI-014,URI-015',NULL,'Y'),(21,'2015-11-10','PSN0012','51110053835','ANA-001,ANA-015,CAI-001,CAI-002,HEM-001,HEM-002,HEM-004,HEM-007,HEM-023,HEM-024,HEM-025,HEM-026,HEM-027,HEM-028,HEM-029',NULL,'Y'),(22,'2015-11-14','PSN0013','51114120658','ANA-001',NULL,'Y'),(23,'2015-11-15','PSN0006','51115132446','ANA-001,ANA-015',NULL,'Y'),(24,'2015-11-15','PSN0001','51115133106','ANA-001,ANA-015,HEM-001,HEM-002,HEM-004,HEM-024',NULL,'Y'),(25,'2015-11-15','PSN0014','51115162010','KIM-001',NULL,'Y'),(26,'2015-11-15','PSN0015','51115162037','KIM-001',NULL,'Y'),(27,'2015-11-15','PSN0016','51115162050','KIM-001',NULL,'Y'),(28,'2015-11-15','PSN0017','51115162140','MIK-001',NULL,'Y'),(29,'2015-11-15','PSN0018','51115163741','HEM-001',NULL,'Y'),(30,'2015-11-15','PSN0019','51115163807','HEM-001',NULL,'Y'),(31,'2015-11-15','PSN0020','51115163810','HEM-001',NULL,'Y'),(32,'2015-11-15','PSN0021','51115163821','HEM-001',NULL,'Y'),(33,'2015-11-15','PSN0022','51115163926','HEM-001',NULL,'Y'),(34,'2015-11-15','PSN0023','51115164003','HEM-001',NULL,'Y'),(35,'2015-11-15','PSN0024','51115164235','PAT-001',NULL,'Y'),(36,'2015-11-15','PSN0025','51115164405','MIK-001,MIK-002,MIK-003,PAT-001',NULL,'Y'),(37,'2015-11-15','PSN0026','51115164426','KIM-001,KIM-002,KIM-003,MIK-001,MIK-002,MIK-003,PAT-001',NULL,'Y'),(38,'2015-11-15','PSN0027','51115164723','IMU-001,IMU-002,IMU-003,MIK-001,MIK-006,MIK-007',NULL,'Y'),(40,'2015-11-15','PSN0028','51115164724','IMU-001,IMU-002,IMU-003,MIK-001,MIK-006,MIK-007',NULL,'Y'),(41,'2015-11-29','PSN0028','51129131837','ANA-001,HEM-001,HEM-001,HEM-003',NULL,'Y'),(42,'2016-01-13','PSN0029','60113043025','HEM-001,NAR-001,NAR-002,NAR-003',NULL,'Y'),(43,'2016-01-18','PSN0030','60118052845','HEM-001,NAR-001,NAR-002,NAR-003','NAR','Y'),(44,'2016-01-18','PSN0031','60118054056','HEM-001,NAR-001,NAR-002,NAR-003','','Y'),(45,'2016-01-18','PSN0032','60118054532','HEM-001,NAR-001,NAR-002,NAR-003','NAR,ASD1','Y'),(46,'2016-01-18','PSN0033','60118081817','HEM-001,NAR-001,NAR-002,NAR-003','ASD1,NAR','Y'),(47,'2016-01-18','PSN0034','60118084327','IMU-001,HEM-001','PAKET-001','Y'),(48,'2016-01-20','PSN0035','60120042937','HEM-001,NAR-001,NAR-002,NAR-003','PAKET-001,PAKET-002','Y');

/*Table structure for table `parameter_uji` */

DROP TABLE IF EXISTS `parameter_uji`;

CREATE TABLE `parameter_uji` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(10) NOT NULL default '',
  `sub_kode` char(10) NOT NULL default '',
  `nama_parameter` varchar(100) NOT NULL default '',
  `satuan` char(30) NOT NULL,
  `metode` char(50) NOT NULL,
  `batas_normal` varchar(100) NOT NULL,
  `biaya` int(10) NOT NULL default '0',
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `parameter_uji` */

insert  into `parameter_uji`(`id`,`kode`,`sub_kode`,`nama_parameter`,`satuan`,`metode`,`batas_normal`,`biaya`) values (1,'HEM','HEM-001','Hemoglobin','g/dL','-','â™‚ 13,5-18,0; â™€ 11,5-16,0 ',55000),(2,'HEM','HEM-002','WBC','sel/uL','-','4.000-11.000 ',25000),(3,'HEM','HEM-003','Hitung Jenis Lekosit (5 Diff)','sel/uL','mikroskopik','-',25000),(4,'HEM','HEM-004','Trombosit (Plt)','sel/uL','-','150.000-450.000 ',25000),(5,'HEM','HEM-005','Limfosit Plasma Biru (LPB)','%','mikroskopik','<40%',25000),(6,'HEM','HEM-006','KED / LED','mm/jam','gravitasi','â™‚ 0-15; â™€ 0-20',20000),(7,'HEM','HEM-007','Morfologi Darah Tepi (MDT)','-','mikroskopik','-',80000),(8,'HEM','HEM-008','Retikulosit','%','mikroskopik','0,5-1,5',35000),(9,'HEM','HEM-009','Golongan Darah ABO/Rhesus','-','aglutinasi','-',20000),(10,'HEM','HEM-010','Ratio IM / IT','-','mikroskopik','<0,2',25000),(11,'HEM','HEM-011','Coomb\'s Direk','','','',500),(12,'HEM','HEM-012','Coomb\'s Indirek','','','',500),(13,'HEM','HEM-013','Malaria','-','mikroskopik','tidak ditemukan plasmodium',25000),(14,'HEM','HEM-014','Angka Parasit Malaria','%','mikroskopik','0',40000),(15,'HEM','HEM-015','Filaria','-','mikroskopik','tidak ditemukan mikrofilaria',25000),(16,'HEM','HEM-016','Masa Pembekuan (CT)','menit','Lee & White','5-11',15000),(17,'HEM','HEM-017','Masa Pendarahan (BT)','menit','Ivy','1-5',15000),(18,'HEM','HEM-018','PPT','detik','photometric','10,5-13,4',140000),(19,'HEM','HEM-019','aPPT','detik','photometric','23,5-36,4',140000),(20,'HEM','HEM-020','D-Dimer','ng/L','photometric','< 200',50000),(21,'HEM','HEM-021','ACA lgM','','','',500),(22,'HEM','HEM-022','ACA lgG','','','',500),(23,'KIM','KIM-001','CK / CPK','','','',1000),(24,'KIM','KIM-002','CK - MB','','','',1000),(25,'KIM','KIM-003','LDH','','','',1000),(26,'KIM','KIM-004','GOT','U/L','-','0-37 ',30000),(27,'KIM','KIM-005','Troponin I','','','',1000),(28,'HEM','HEM-023','RBC','','','',500),(29,'HEM','HEM-024','Hmt','','','',500),(30,'HEM','HEM-025','MCV','','','',500),(31,'HEM','HEM-026','MCH','','','',500),(32,'HEM','HEM-027','MCHC','','','',500),(33,'HEM','HEM-028','RDW','','','',500),(35,'IMU','IMU-001','HbsAg rapid','-','ICT','non reaktif',60000),(36,'IMU','IMU-002','HbsAg kuantitatif','IU/mL','ELISA','(-)/negatif ',200000),(37,'IMU','IMU-003','Anti Hbs rapid','-','ICT','negatif/ (+) jika post imunisasi',70000),(38,'IMU','IMU-004','Anti Hbs kuantitatif','IU/mL','ELISA','(-)/negatif atau  N=20 setelah vaksinasi',200000),(39,'IMU','IMU-005','HbeAg rapid','-','ICT','negatif',90000),(40,'IMU','IMU-006','HbeAg kuantitatif','IU/mL','ELISA','negatif',500000),(42,'IMU','IMU-007','Anti Hbc','IU/mL','ELISA','negatif',400000),(43,'IMU','IMU-008','Anti Hbc IgM','IU/mL','ELISA','negatif',600000),(44,'IMU','IMU-009','Anti Hbe kuantitatif','IU/mL','ELISA','negatif',640000),(45,'IMU','IMU-010','Anti HCV kuantitatif','IU/mL','ELISA','negatif',525000),(46,'IMU','IMU-011','Anti HCV rapid','-','ICT','negatif',100000),(47,'IMU','IMU-012','Anti HAV Total','-','ICT','negatif',140000),(48,'IMU','IMU-013','IgM Anti Toxoplasma','-','-','-',0),(49,'IMU','IMU-014','IgG Anti Toxoplasma','-','-','-',0),(50,'IMU','IMU-015','IgM Anti Rubella','-','-','-',0),(51,'IMU','IMU-016','IgG Anti Rubella','-','-','-',0),(52,'IMU','IMU-017','IgM Anti CMV','-','-','-',0),(53,'IMU','IMU-018','IgG Anti CMV','-','-','-',0),(54,'IMU','IMU-019','IgM Anti HSV 1','-','-','-',0),(55,'IMU','IMU-020','IgG Anti HSV 1','-','-','-',0),(56,'IMU','IMU-021','IgM Anti HSV 2','-','-','-',0),(57,'IMU','IMU-022','IgG Anti HSV 2','-','-','-',0),(58,'IMU','IMU-023','Syphilis/VDRL','-','ICT','Non Reaktif',0),(59,'IMU','IMU-024','Widal','-','aglutinasi','Negatif',0),(60,'IMU','IMU-025','Tubex','Score','Magnetic Semi Quantitatif Rapid Immuno Assay','â‰¤2 (negatif); 3 (borderline); 4 (Positif lemah menunjukkan infeksi demam typhoid aktif); 6-10 (Pos',0),(61,'IMU','IMU-026','IgG/IgM Typhoid','-','ICT','Negatif',0),(62,'IMU','IMU-027','IgG/IgM Anti Dengue','-','ICT','Negatif',0),(63,'IMU','IMU-028','NS1 Ag','-','ICT','Negatif',0),(64,'IMU','IMU-029','Malaria ICT','-','ICT','Negatif',0),(65,'IMU','IMU-030','IgM/IgG Anti TB','-','ICT','Negatif',0),(66,'IMU','IMU-031','Anti HIV','-','ICT','Non Reaktif',0),(67,'IMU','IMU-032','TSHs','ÂµIU/mL','ELISA','0,40-5,50',0),(68,'IMU','IMU-033','Free T4','ng/dL','ELISA','0,80-2,00',0),(69,'IMU','IMU-034','Free T3','pg/mL','ELISA','1,40-4,20',0),(70,'IMU','IMU-035','T3','ng/mL','ELISA','0,80-2,10',0),(71,'IMU','IMU-036','T4','Âµg/dL','ELISA','5,00-13,00',0),(72,'IMU','IMU-037','Î² hCG','-','-','-',0),(73,'IMU','IMU-038','Prolactin','-','-','-',0),(74,'IMU','IMU-039','Progesteron','-','-','-',0),(75,'IMU','IMU-040','Testoteron','-','-','-',0),(76,'IMU','IMU-041','LH','-','-','-',0),(77,'IMU','IMU-042','FSH','-','-','-',0),(78,'IMU','IMU-043','Estradiol','-','-','-',0),(79,'IMU','IMU-044','DHEA-S','-','-','-',0),(80,'IMU','IMU-045','PSA','-','-','-',0),(81,'IMU','IMU-046','AFP','-','-','-',0),(82,'IMU','IMU-047','CEA','-','-','-',0),(83,'IMU','IMU-048','Ca 125','-','-','-',0),(84,'IMU','IMU-049','Ca 15.3','-','-','-',0),(85,'IMU','IMU-050','Ca 19.9','-','-','-',0),(86,'IMU','IMU-051','IgM ACA','-','-','-',0),(87,'IMU','IMU-052','IgG ACA','-','-','-',0),(88,'IMU','IMU-053','ANA (IF)','-','-','-',0),(89,'IMU','IMU-054','ANA Profile','-','-','-',0),(90,'IMU','IMU-055','CRP','-','ICT','(-)/negatif (<3mg/dl)',0),(91,'IMU','IMU-056','ASTO','-','aglutinasi','(-)/negatif ',0),(92,'IMU','IMU-057','Rhematoid Factor (RF)','-','aglutinasi','(-)/negatif ',0),(93,'IMU','IMU-058','Tes Kehamilan','-','-','-',0),(94,'URI','URI-001','Urine rutin','-','kimia','pH: 4.5-8. BJ: 1.015-1.030. Lain-lain: negatif',20000),(95,'URI','URI-002','Sedimen urine','-','makroskopis & mikroskopik','warna: kuning jernih. leukosit 0-5/LPB, eritrosit 0-3/LPB. lain-lain (-)',15000),(107,'URI','URI-014','Protein Esbach','-','Esbach','gram protein/L urin ',0),(108,'URI','URI-015','Protein Bence Jones','-','Osgood','(-)/negatif ',0),(109,'ANA','ANA-001','Feses Rutin','-','makroskopis, mikroskopis','Kuning kecoklatan, lunak, epitel (+) sisa makanan (+)lain-lain (-)',35000),(123,'ANA','ANA-015','Darah Samar','-','-','(-)/negatif ',0),(124,'NAR','NAR-001','Amphetamin','-','ICT','(-)/negatif ',0),(125,'NAR','NAR-002','Benzodiazepin','-','ICT','(-)/negatif ',0),(126,'NAR','NAR-003','Coccain','-','ICT','(-)/negatif ',0),(127,'NAR','NAR-004','Metamphetamin','-','ICT','(-)/negatif ',0),(128,'NAR','NAR-005',' Opiate/Morphin','-','ICT','(-)/negatif ',0),(129,'NAR','NAR-006','THC/Mariyuana','-','ICT','(-)/negatif ',0),(130,'MIK','MIK-001','BTA pagi','-','mikroskopik','Tidak ditemukan kuman BTA/100 LP',0),(131,'MIK','MIK-002','Gram','-','Gram','Tidak ditemukan bakteri gram',0),(132,'MIK','MIK-003','Jamur','-','KOH 10%','Tidak ditemukan jamur',0),(133,'MIK','MIK-004','Sekret mata','-','Gram','Tidak ditemukan bakteri gram',0),(134,'MIK','MIK-005','Sekret Vagina','-','Hapusan giemsa','-',0),(135,'PAT','PAT-001','FNAB','-','-','-',0),(136,'PAT','PAT-002','Sitologi','-','-','-',0),(137,'PAT','PAT-003','Papsmear','-','-','-',0),(138,'PAT','PAT-004','PA','-','-','-',0),(139,'CAI','CAI-001','Analisa Cairan Pleura','-','makroskopis, mikroskopis, kimiawi','-',0),(140,'CAI','CAI-002','Analisa cairan ascites','-','makroskopis, mikroskopis, kimiawi','-',0),(141,'HEM','HEM-029','Hitung jenis  ( 3diff )','%','hematologi otomatis','Limf 20-40/mid 3-15/gran 50-70',0),(142,'IMU','IMU-059','CRP kuantitatif','mg/dl','ELISA','<0.3',0),(143,'KIM','KIM-006','Bilirubin Total','mg/dl','Diazo','0-1,1',25000),(144,'KIM','KIM-007','Bilirubin Direk','mg/dl','Diazo','<0.3',25000),(145,'KIM','KIM-008','Bilirubin indirek','mg/dl','-','0.7',25000),(146,'KIM','KIM-009','Protein Total','mg/dl','Jenderick','5-8',25000),(147,'KIM','KIM-010','Albumin','mg/dl','BCB','3.5-5',25000),(148,'KIM','KIM-011','Globulin','mg/dl','-','-',25000),(149,'KIM','KIM-012','SGOT/AST','U/L','-','0-37 ',30000),(150,'KIM','KIM-013','SGPT/ALT','U/L','-','0-42',25000),(151,'KIM','KIM-014','Gamma-GT','IU','-','â™‚ 11-61; â™€ 9-39',0),(152,'KIM','KIM-015','Alkali Fosfatase/ALP','IU','-','â™‚61-232; â™€49-232 Anak-15 th <488',0),(153,'KIM','KIM-016','Ureum','mg/dl','-','15-39',25000),(154,'KIM','KIM-017','Kreatinin','mg/dl','-','â™‚ 0,7-1,3; â™€ 0,6-1,1 ',25000),(155,'KIM','KIM-018','Asam Urat','mg/dl','-','â™‚ 3,4-7,0; â™€ 2,4-5,7 ',30000),(156,'KIM','KIM-019','Glukosa Sewaktu/GDS','mg/dl','Hexokinase','<126',25000),(157,'KIM','KIM-020','Glukosa Puasa','mg/dl','Hexokinase','65-115',25000),(158,'KIM','KIM-021','Glukosa 2 jam PP','mg/dl','Hexokinase','85-125 ',25000),(159,'KIM','KIM-022','HbA1c','%','-','<6.5',0),(160,'KIM','KIM-023','Kolesterol Total','mg/dl','-','<200 (low risk) 200-239 (moderate risk) >240 (high risk)',30000),(161,'KIM','KIM-024','Kolesterol HDL','mg/dl','-','â™€>65; â™‚>55 (no risk) â™€45-65; â™‚35-55 (moderate risk) â™€<45; â™‚<35 (high risk)',40000),(162,'KIM','KIM-025','Kolesterol LDL','mg/dl','-','<100 (low risk) <135 (moderate risk) >160 (high risk)',35000),(163,'KIM','KIM-026','Trigliserida','mg/dl','-','<200 (â‰¤65 th)  <325 (>65 th)',45000),(164,'KIM','KIM-027','Amilase','-','-','-',0),(165,'KIM','KIM-028','Lipase','-','-','-',0),(166,'KIM','KIM-029','Natrium (Na)','Mmol/L','ISE','136-145',0),(167,'KIM','KIM-030','Kalium (K)','Mmol/L','ISE','3,5-5,1',0),(168,'KIM','KIM-031','Klorida (Cl)','Mmol/L','ISE','97-111',0),(169,'KIM','KIM-032','Kalsium (Ca)','Mmol/L','ISE','1.12-1.32',0),(170,'MIK','MIK-006','BTA sewaktu 1','-','mikroskopik','Tidak ditemukan kuman BTA/100 LP',35000),(171,'MIK','MIK-007','BTA sewaktu 2','-','mikroskopik','Tidak ditemukan kuman BTA/100 LP',35000);

/*Table structure for table `pasien` */

DROP TABLE IF EXISTS `pasien`;

CREATE TABLE `pasien` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(15) default NULL,
  `id_pasien` char(15) default NULL,
  `tanggal` date default '0000-00-00',
  `nama` char(20) default '',
  `tempat_lahir` char(20) default '',
  `tanggal_lahir` date default '0000-00-00',
  `jenis_kelamin` char(10) default '',
  `pekerjaan` char(20) default '',
  `jenis_pasien` char(20) default '',
  `alamat` varchar(100) default '',
  `no_telp` char(15) default '',
  `dokter_pemeriksa` char(35) default '',
  `alamat_dokter` varchar(100) default '',
  `no_telp_dokter` char(15) default '',
  `nama_kontak` char(20) default '',
  `alamat_kontak` char(50) default '',
  `no_telp_kontak` char(15) default '',
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pasien` */

insert  into `pasien`(`id`,`kode`,`id_pasien`,`tanggal`,`nama`,`tempat_lahir`,`tanggal_lahir`,`jenis_kelamin`,`pekerjaan`,`jenis_pasien`,`alamat`,`no_telp`,`dokter_pemeriksa`,`alamat_dokter`,`no_telp_dokter`,`nama_kontak`,`alamat_kontak`,`no_telp_kontak`) values (5,'51008134200','PSN0001','2015-10-08','Andi','Sintang','0000-00-00','Laki-Laki','SWA','UMU','Sintang','22022','dr Jani T','Sintang','22056','Andi','Sintang','22022'),(6,'51013135623','PSN0002','2015-10-13','x','sintang','2014-12-01','Laki-Laki','NON','UMU','jl,mt haryono','08','x','jl,mt haryono','08','','jl,mt haryono','08'),(7,'51013140424','PSN0003','2015-10-13','y','sintang','2015-10-06','Perempuan','ETC','UMU','jl.siliwangi','08','x','jl.siliwangi','08','xy','jl.mt haryono','08'),(8,'51028113209','PSN0004','2015-10-28','An. Ajril','Nanga Sokan','0000-00-00','Laki-Laki','ETC','UMU','Mungguk Serantung','000','dr. Sitek F','Jl. Wirapati No.1, Sintang','81522521923','000','000','000'),(9,'51028114541','PSN0005','2015-10-28','An. Ajril','Nanga Sokan','2012-06-22','Laki-Laki','ETC','UMU','Mungguk Serantung','000','dr. Sitek F','Jl. Wirapati No. 1, Sintang','081522521925','000','Sintang','000'),(10,'51102134456','PSN0006','2015-11-02','Tn. Lupat','Nanga Dangkan','1952-03-05','Laki-Laki','ETC','UMU','Nanga Dangkan','0','dr. Eko S, SpPD','Sintang','0','0','0','0'),(11,'51109113714','PSN0007','2015-11-09','r','as','2015-10-28','Laki-Laki','PNS','ASU','asd','123132','ad','ads','12121','','',''),(12,'51109114032','PSN0008','2015-11-09','r','as','2015-10-28','Laki-Laki','PNS','ASU','asd','123132','ad','ads','12121','','',''),(13,'51110024234','PSN0009','2015-11-10','ad','asd','2015-11-12','Laki-Laki','PNS','ASU','sad','213123','asdsa','adsdsa','231123','','',''),(14,'51110024606','PSN0010','2015-11-10','ad','asd','2015-11-12','Laki-Laki','PNS','ASU','sad','213123','asdsa','adsdsa','231123','','',''),(15,'51110030247','PSN0011','2015-11-10','adaaa','asd','2015-11-12','Laki-Laki','PNS','ASU','sad','213123','asdsa','adsdsa','231123','','',''),(16,'51110053835','PSN0012','2015-11-10','zz','zz','2015-11-02','Laki-Laki','PNS','UMU','zzz','21','zz','zcxz','232','','',''),(17,'51114120658','PSN0013','2015-11-14','sad','asdasdasdas','2015-11-12','Laki-Laki','PNS','MCU','sad','23','asd','ads','123','','',''),(18,'51115162010','PSN0014','2015-11-15','asdsadas','as','2015-10-30','Perempuan','NON','MCU','asd','1221','asd','asd','231','','',''),(19,'51115162037','PSN0015','2015-11-15','asdsadas','as','2015-10-30','Perempuan','NON','MCU','asd','1221','asd','asd','231','','',''),(20,'51115162050','PSN0016','2015-11-15','asdsadas','as','2015-10-30','Perempuan','NON','MCU','asd','1221','asd','asd','231','','',''),(21,'51115162140','PSN0017','2015-11-15','asda','asd','2015-11-10','Perempuan','NON','MCU','asd','2131','asd','asd','123','','',''),(22,'51115163741','PSN0018','2015-11-15','d','d','2015-11-04','Laki-Laki','PNS','UMU','sad','2','sad','asd','12','','',''),(23,'51115163807','PSN0019','2015-11-15','d','d','2015-11-04','Laki-Laki','PNS','UMU','sad','2','sad','asd','12','','',''),(24,'51115163810','PSN0020','2015-11-15','d','d','2015-11-04','Laki-Laki','PNS','UMU','sad','2','sad','asd','12','','',''),(25,'51115163821','PSN0021','2015-11-15','d','d','2015-11-04','Laki-Laki','PNS','UMU','sad','2','sad','asd','12','','',''),(26,'51115163926','PSN0022','2015-11-15','d','d','2015-11-04','Laki-Laki','PNS','UMU','sad','2','sad','asd','12','','',''),(27,'51115164003','PSN0023','2015-11-15','d','d','2015-11-04','Laki-Laki','PNS','UMU','sad','2','sad','asd','12','','',''),(28,'51115164235','PSN0024','2015-11-15','www','www','2015-11-11','Perempuan','PNS','UMU','www','222','www','www','213','','',''),(29,'51115164405','PSN0025','2015-11-15','www','www','2015-11-11','Perempuan','PNS','UMU','www','222','www','www','213','','',''),(30,'51115164426','PSN0026','2015-11-15','www','www','2015-11-11','Perempuan','PNS','UMU','www','222','www','www','213','','',''),(31,'51115164723','PSN0027','2015-11-15','asd','SAD','2015-11-13','Laki-Laki','PNS','UMU','asd','2','saf','sdf','2','','',''),(32,'51129131837','PSN0028','2015-11-29','ddddd','dddd','2015-11-05','Laki-Laki','NON','UMU','dddd','222','dddddd','12ddd','2112','','',''),(33,'60113043025','PSN0029','2016-01-13','asd','asdasdasdas','2015-11-19','Laki-Laki','NON','ASU','asd','21','zxasd','dadsa','213213','','',''),(34,'60118052845','PSN0030','2016-01-18','qqq','qq','1899-12-06','Laki-Laki','NON','ASU','qq','111','qqq','qq','111','','',''),(35,'60118054056','PSN0031','2016-01-18','q','q','2016-01-01','Laki-Laki','SWA','ASU','qq','1','a','q','1','','',''),(36,'60118054532','PSN0032','2016-01-18','dd','d','2016-01-05','Perempuan','PER','MCU','d','1','d','d','1','','',''),(37,'60118081817','PSN0033','2016-01-18','k','k','2016-01-06','Perempuan','SWA','ETC','sa','1','f','f','1','','',''),(38,'60118084327','PSN0034','2016-01-18','asd','22','2016-01-16','Perempuan','ETC','ASU','a','11','ads','11','11','','',''),(39,'60120042937','PSN0035','2016-01-20','asda','213','2016-01-13','Laki-Laki','NON','ASU','asd','1','dsa','das','1','','','');

/*Table structure for table `pekerjaan` */

DROP TABLE IF EXISTS `pekerjaan`;

CREATE TABLE `pekerjaan` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(5) default '',
  `nama_pekerjaan` char(50) default '',
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pekerjaan` */

insert  into `pekerjaan`(`id`,`kode`,`nama_pekerjaan`) values (9,'PNS','PNS'),(10,'NON','NON PNS'),(11,'PER','PERUSAHAAN'),(12,'SWA','SWASTA'),(13,'ETC','LAIN-LAIN');

/*Table structure for table `pemeriksaan` */

DROP TABLE IF EXISTS `pemeriksaan`;

CREATE TABLE `pemeriksaan` (
  `id` int(10) NOT NULL auto_increment,
  `tanggal` date NOT NULL default '0000-00-00',
  `kode` char(15) NOT NULL,
  `parameter` varchar(30) NOT NULL,
  `biaya` int(10) NOT NULL,
  `hasil` varchar(500) NOT NULL default '',
  `gambar` varchar(100) NOT NULL default '',
  `pending` int(1) NOT NULL default '1',
  `tag` char(1) NOT NULL default 'N',
  `paket` char(15) default NULL,
  PRIMARY KEY  (`kode`,`parameter`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pemeriksaan` */

insert  into `pemeriksaan`(`id`,`tanggal`,`kode`,`parameter`,`biaya`,`hasil`,`gambar`,`pending`,`tag`,`paket`) values (63,'2015-10-08','51008134200','HEM-003',25000,'0/0/6/56/30/10','',1,'Y',NULL),(64,'2015-10-08','51008134200','HEM-009',20000,'0/+','',1,'Y',NULL),(67,'2015-10-13','51013135623','HEM-001',55000,'10','',1,'Y',NULL),(68,'2015-10-13','51013135623','HEM-002',25000,'6000','',1,'Y',NULL),(69,'2015-10-13','51013135623','HEM-004',25000,'120000','',1,'Y',NULL),(70,'2015-10-13','51013135623','HEM-023',500,'3.67','',1,'Y',NULL),(71,'2015-10-13','51013135623','HEM-024',500,'34.3','',1,'Y',NULL),(72,'2015-10-13','51013135623','HEM-025',500,'78','',1,'Y',NULL),(73,'2015-10-13','51013135623','HEM-026',500,'26.1','',1,'Y',NULL),(74,'2015-10-13','51013135623','HEM-027',500,'30','',1,'Y',NULL),(75,'2015-10-13','51013135623','HEM-028',500,'17.3','',1,'Y',NULL),(76,'2015-10-13','51013135623','HEM-029',0,'12/5/83','',1,'Y',NULL),(125,'2015-10-13','51013140424','HEM-001',55000,'15','',1,'Y',NULL),(126,'2015-10-13','51013140424','HEM-002',25000,'12.000','',1,'Y',NULL),(127,'2015-10-13','51013140424','IMU-028',0,'negatif','',1,'Y',NULL),(128,'2015-10-13','51013140424','KIM-006',25000,'0.9','',1,'Y',NULL),(129,'2015-10-13','51013140424','URI-001',20000,'Leu:(-);Nit:(-);Uro:','',1,'Y',NULL),(147,'2015-10-28','51028113209','HEM-001',55000,'7,8*','',1,'Y',NULL),(148,'2015-10-28','51028113209','HEM-002',25000,'5.100','',1,'Y',NULL),(149,'2015-10-28','51028113209','HEM-004',25000,'134.000*','',1,'Y',NULL),(150,'2015-10-28','51028113209','HEM-023',500,'3,08','',1,'Y',NULL),(151,'2015-10-28','51028113209','HEM-024',500,'24,3*','',1,'Y',NULL),(152,'2015-10-28','51028113209','HEM-025',500,'79,0*','',1,'Y',NULL),(153,'2015-10-28','51028113209','HEM-026',500,'25,3*','',1,'Y',NULL),(154,'2015-10-28','51028113209','HEM-027',500,'32,1','',1,'Y',NULL),(155,'2015-10-28','51028113209','HEM-028',500,'13,3','',1,'Y',NULL),(156,'2015-10-28','51028113209','HEM-029',0,'40,3/7,5/52,2','',1,'Y',NULL),(211,'2015-10-28','51028114541','HEM-001',55000,'7,8*','',1,'Y',NULL),(212,'2015-10-28','51028114541','HEM-002',25000,'5.100','',1,'Y',NULL),(213,'2015-10-28','51028114541','HEM-004',25000,'134.000*','',1,'Y',NULL),(214,'2015-10-28','51028114541','HEM-023',500,'3,08','',1,'Y',NULL),(215,'2015-10-28','51028114541','HEM-024',500,'24,3','',1,'Y',NULL),(216,'2015-10-28','51028114541','HEM-025',500,'79,0*','',1,'Y',NULL),(217,'2015-10-28','51028114541','HEM-026',500,'25,3*','',1,'Y',NULL),(218,'2015-10-28','51028114541','HEM-027',500,'32,1','',1,'Y',NULL),(219,'2015-10-28','51028114541','HEM-028',500,'13,3','',1,'Y',NULL),(220,'2015-10-28','51028114541','HEM-029',0,'40,3/7,5/52,2','',1,'Y',NULL),(258,'2015-11-02','51102134456','KIM-006',25000,'0,15','',1,'Y',NULL),(259,'2015-11-02','51102134456','KIM-007',25000,'0,02','',1,'Y',NULL),(260,'2015-11-02','51102134456','KIM-012',30000,'57','',1,'Y',NULL),(261,'2015-11-02','51102134456','KIM-013',25000,'39','',1,'Y',NULL),(303,'2015-11-09','51109113714','CAI-001',0,'asd','',1,'Y',NULL),(304,'2015-11-09','51109113714','CAI-002',0,'asd','',1,'Y',NULL),(305,'2015-11-09','51109114032','HEM-001',55000,'1','',1,'Y',NULL),(306,'2015-11-09','51109114032','HEM-002',25000,'2','',1,'Y',NULL),(307,'2015-11-09','51109114032','HEM-004',25000,'3','',1,'Y',NULL),(308,'2015-11-09','51109114032','HEM-024',500,'44','',1,'Y',NULL),(309,'2015-11-10','51110024234','ANA-001',35000,'1','',1,'Y',NULL),(310,'2015-11-10','51110024234','ANA-015',0,'2','',1,'Y',NULL),(311,'2015-11-10','51110024234','HEM-001',55000,'3','',1,'Y',NULL),(312,'2015-11-10','51110024234','HEM-002',25000,'4','',1,'Y',NULL),(313,'2015-11-10','51110024234','HEM-004',25000,'5','',1,'Y',NULL),(314,'2015-11-10','51110024234','HEM-024',500,'6','',1,'Y',NULL),(315,'2015-11-10','51110024606','ANA-001',35000,'1','',1,'Y',NULL),(316,'2015-11-10','51110024606','ANA-015',0,'2','',1,'Y',NULL),(317,'2015-11-10','51110024606','CAI-001',0,'3','',1,'Y',NULL),(318,'2015-11-10','51110024606','CAI-002',0,'4','',1,'Y',NULL),(339,'2015-11-10','51110024606','HEM-001',55000,'5','',1,'Y',NULL),(340,'2015-11-10','51110024606','HEM-002',25000,'6','',1,'Y',NULL),(341,'2015-11-10','51110024606','HEM-004',25000,'7','',1,'Y',NULL),(342,'2015-11-10','51110024606','HEM-024',500,'8','',1,'Y',NULL),(319,'2015-11-10','51110024606','KIM-001',1000,'9','',1,'Y',NULL),(320,'2015-11-10','51110024606','KIM-002',1000,'1','',1,'Y',NULL),(321,'2015-11-10','51110024606','KIM-003',1000,'11','',1,'Y',NULL),(322,'2015-11-10','51110024606','KIM-004',30000,'12','',1,'Y',NULL),(323,'2015-11-10','51110024606','KIM-005',1000,'12','',1,'Y',NULL),(324,'2015-11-10','51110024606','KIM-006',25000,'1','',1,'Y',NULL),(325,'2015-11-10','51110024606','KIM-007',25000,'1','',1,'Y',NULL),(326,'2015-11-10','51110024606','KIM-008',25000,'1','',1,'Y',NULL),(327,'2015-11-10','51110024606','KIM-009',25000,'12','',1,'Y',NULL),(328,'2015-11-10','51110024606','KIM-010',25000,'12','',1,'Y',NULL),(329,'2015-11-10','51110024606','NAR-001',0,'1','',1,'Y',NULL),(330,'2015-11-10','51110024606','NAR-002',0,'1','',1,'Y',NULL),(331,'2015-11-10','51110024606','NAR-003',0,'1','',1,'Y',NULL),(332,'2015-11-10','51110024606','NAR-004',0,'1','',1,'Y',NULL),(333,'2015-11-10','51110024606','NAR-005',0,'12','',1,'Y',NULL),(334,'2015-11-10','51110024606','NAR-006',0,'12','',1,'Y',NULL),(335,'2015-11-10','51110024606','URI-001',20000,'12','',1,'Y',NULL),(336,'2015-11-10','51110024606','URI-002',15000,'12','',1,'Y',NULL),(337,'2015-11-10','51110024606','URI-014',0,'12','',1,'Y',NULL),(338,'2015-11-10','51110024606','URI-015',0,'12','',1,'Y',NULL),(343,'2015-11-10','51110030247','ANA-001',35000,'','',1,'N',NULL),(344,'2015-11-10','51110030247','ANA-015',0,'','',1,'N',NULL),(345,'2015-11-10','51110030247','CAI-001',0,'','',1,'N',NULL),(346,'2015-11-10','51110030247','CAI-002',0,'','',1,'N',NULL),(347,'2015-11-10','51110030247','KIM-001',1000,'','',1,'N',NULL),(348,'2015-11-10','51110030247','KIM-002',1000,'','',1,'N',NULL),(349,'2015-11-10','51110030247','KIM-003',1000,'','',1,'N',NULL),(350,'2015-11-10','51110030247','KIM-004',30000,'','',1,'N',NULL),(351,'2015-11-10','51110030247','KIM-005',1000,'','',1,'N',NULL),(352,'2015-11-10','51110030247','KIM-006',25000,'','',1,'N',NULL),(353,'2015-11-10','51110030247','KIM-007',25000,'','',1,'N',NULL),(354,'2015-11-10','51110030247','KIM-008',25000,'','',1,'N',NULL),(355,'2015-11-10','51110030247','KIM-009',25000,'','',1,'N',NULL),(356,'2015-11-10','51110030247','KIM-010',25000,'','',1,'N',NULL),(357,'2015-11-10','51110030247','NAR-001',0,'','',1,'N',NULL),(358,'2015-11-10','51110030247','NAR-002',0,'','',1,'N',NULL),(359,'2015-11-10','51110030247','NAR-003',0,'','',1,'N',NULL),(360,'2015-11-10','51110030247','NAR-004',0,'','',1,'N',NULL),(361,'2015-11-10','51110030247','NAR-005',0,'','',1,'N',NULL),(362,'2015-11-10','51110030247','NAR-006',0,'','',1,'N',NULL),(363,'2015-11-10','51110030247','URI-001',20000,'','',1,'N',NULL),(364,'2015-11-10','51110030247','URI-002',15000,'','',1,'N',NULL),(365,'2015-11-10','51110030247','URI-014',0,'','',1,'N',NULL),(366,'2015-11-10','51110030247','URI-015',0,'','',1,'N',NULL),(367,'2015-11-10','51110053835','ANA-001',35000,'','',1,'N',NULL),(368,'2015-11-10','51110053835','ANA-015',0,'','',1,'N',NULL),(369,'2015-11-10','51110053835','CAI-001',0,'','',1,'N',NULL),(370,'2015-11-10','51110053835','CAI-002',0,'','',1,'N',NULL),(371,'2015-11-10','51110053835','HEM-001',55000,'','',1,'N',NULL),(372,'2015-11-10','51110053835','HEM-002',25000,'','',1,'N',NULL),(373,'2015-11-10','51110053835','HEM-004',25000,'','',1,'N',NULL),(374,'2015-11-10','51110053835','HEM-007',80000,'','',1,'N',NULL),(375,'2015-11-10','51110053835','HEM-023',500,'','',1,'N',NULL),(376,'2015-11-10','51110053835','HEM-024',500,'','',1,'N',NULL),(377,'2015-11-10','51110053835','HEM-025',500,'','',1,'N',NULL),(378,'2015-11-10','51110053835','HEM-026',500,'','',1,'N',NULL),(379,'2015-11-10','51110053835','HEM-027',500,'','',1,'N',NULL),(380,'2015-11-10','51110053835','HEM-028',500,'','',1,'N',NULL),(381,'2015-11-10','51110053835','HEM-029',0,'','',1,'N',NULL),(382,'2015-11-14','51114120658','ANA-001',35000,'50\r\n','',1,'Y',NULL),(383,'2015-11-15','51115132446','ANA-001',35000,'asd','',1,'Y',NULL),(384,'2015-11-15','51115132446','ANA-015',0,'asd','',1,'Y',NULL),(385,'2015-11-15','51115133106','ANA-001',35000,'','',1,'N',NULL),(386,'2015-11-15','51115133106','ANA-015',0,'','',1,'N',NULL),(387,'2015-11-15','51115133106','HEM-001',55000,'','',1,'N',NULL),(388,'2015-11-15','51115133106','HEM-002',25000,'dfs','',1,'Y',NULL),(389,'2015-11-15','51115133106','HEM-004',25000,'234','',1,'Y',NULL),(390,'2015-11-15','51115133106','HEM-024',500,'sf','',1,'Y',NULL),(391,'2015-11-15','51115162010','KIM-001',1000,'','',1,'N',NULL),(392,'2015-11-15','51115162037','KIM-001',1000,'','',1,'N',NULL),(393,'2015-11-15','51115162050','KIM-001',1000,'','',1,'N',NULL),(394,'2015-11-15','51115162140','MIK-001',0,'','',1,'N',NULL),(395,'2015-11-15','51115163741','HEM-001',55000,'','',1,'N',NULL),(396,'2015-11-15','51115163807','HEM-001',55000,'','',1,'N',NULL),(397,'2015-11-15','51115163810','HEM-001',55000,'','',1,'N',NULL),(398,'2015-11-15','51115163821','HEM-001',55000,'','',1,'N',NULL),(399,'2015-11-15','51115163926','HEM-001',55000,'','',1,'N',NULL),(400,'2015-11-15','51115164003','HEM-001',55000,'','',1,'N',NULL),(401,'2015-11-15','51115164235','PAT-001',0,'','',1,'N',NULL),(402,'2015-11-15','51115164405','MIK-001',0,'','',1,'N',NULL),(403,'2015-11-15','51115164405','MIK-002',0,'','',1,'N',NULL),(404,'2015-11-15','51115164405','MIK-003',0,'','',1,'N',NULL),(405,'2015-11-15','51115164405','PAT-001',0,'','',1,'N',NULL),(406,'2015-11-15','51115164426','KIM-001',1000,'','',1,'N',NULL),(407,'2015-11-15','51115164426','KIM-002',1000,'','',1,'N',NULL),(408,'2015-11-15','51115164426','KIM-003',1000,'','',1,'N',NULL),(409,'2015-11-15','51115164426','MIK-001',0,'','',1,'N',NULL),(410,'2015-11-15','51115164426','MIK-002',0,'','',1,'N',NULL),(411,'2015-11-15','51115164426','MIK-003',0,'','',1,'N',NULL),(412,'2015-11-15','51115164426','PAT-001',0,'','',1,'N',NULL),(413,'2015-11-15','51115164723','IMU-001',60000,'','',1,'N',NULL),(414,'2015-11-15','51115164723','IMU-002',200000,'','',1,'N',NULL),(415,'2015-11-15','51115164723','IMU-003',70000,'','',1,'N',NULL),(416,'2015-11-15','51115164723','MIK-001',0,'','',1,'N',NULL),(417,'2015-11-15','51115164723','MIK-006',35000,'','',1,'N',NULL),(418,'2015-11-15','51115164723','MIK-007',35000,'','',1,'N',NULL),(419,'2015-11-15','51115164724','IMU-001',60000,'','',1,'N',NULL),(420,'2015-11-15','51115164724','IMU-002',200000,'','',1,'N',NULL),(421,'2015-11-15','51115164724','IMU-003',70000,'','',1,'N',NULL),(422,'2015-11-15','51115164724','MIK-001',0,'','',1,'N',NULL),(423,'2015-11-15','51115164724','MIK-006',35000,'','',1,'N',NULL),(424,'2015-11-15','51115164724','MIK-007',35000,'','',1,'N',NULL),(425,'2015-11-29','51129131837','ANA-001',35000,'','',1,'N',NULL),(426,'2015-11-29','51129131837','HEM-001',55000,'','',1,'N',NULL),(427,'2015-11-29','51129131837','HEM-003',25000,'','',1,'N',NULL),(428,'2016-01-13','60113043025','HEM-001',55000,'1','',1,'Y','PAKET-001'),(429,'2016-01-13','60113043025','NAR-001',0,'2','',1,'Y','PAKET-002'),(430,'2016-01-13','60113043025','NAR-002',0,'3','',1,'Y','PAKET-002'),(431,'2016-01-13','60113043025','NAR-003',0,'4','',1,'Y','PAKET-002'),(432,'2016-01-18','60118052845','HEM-001',55000,'','',1,'N',NULL),(433,'2016-01-18','60118052845','NAR-001',0,'','',1,'N',NULL),(434,'2016-01-18','60118052845','NAR-002',0,'','',1,'N',NULL),(435,'2016-01-18','60118052845','NAR-003',0,'','',1,'N',NULL),(436,'2016-01-18','60118054056','HEM-001',55000,'','',1,'N',NULL),(437,'2016-01-18','60118054056','NAR-001',0,'','',1,'N',NULL),(438,'2016-01-18','60118054056','NAR-002',0,'','',1,'N',NULL),(439,'2016-01-18','60118054056','NAR-003',0,'','',1,'N',NULL),(452,'2016-01-18','60118054532','HEM-001',55000,'','',1,'N','Array'),(453,'2016-01-18','60118054532','NAR-001',0,'','',1,'N','Array'),(454,'2016-01-18','60118054532','NAR-002',0,'','',1,'N','Array'),(455,'2016-01-18','60118054532','NAR-003',0,'','',1,'N','Array'),(460,'2016-01-18','60118081817','HEM-001',55000,'','',1,'N','ASD1'),(461,'2016-01-18','60118081817','NAR-001',0,'','',1,'N','NAR'),(462,'2016-01-18','60118081817','NAR-002',0,'','',1,'N','NAR'),(463,'2016-01-18','60118081817','NAR-003',0,'','',1,'N','NAR'),(465,'2016-01-18','60118084327','HEM-001',55000,'','',1,'N',''),(464,'2016-01-18','60118084327','IMU-001',60000,'','',1,'N','PAKET-001'),(466,'2016-01-20','60120042937','HEM-001',55000,'','',1,'N','PAKET-001'),(467,'2016-01-20','60120042937','NAR-001',0,'','',1,'N','PAKET-002'),(468,'2016-01-20','60120042937','NAR-002',0,'','',1,'N',''),(469,'2016-01-20','60120042937','NAR-003',0,'','',1,'N','');

/*Table structure for table `pemeriksaan_detail` */

DROP TABLE IF EXISTS `pemeriksaan_detail`;

CREATE TABLE `pemeriksaan_detail` (
  `id` int(10) NOT NULL auto_increment,
  `tanggal` date NOT NULL default '0000-00-00',
  `kode` char(15) NOT NULL default '',
  `kesimpulan` text,
  `catatan` text,
  `saran` text,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pemeriksaan_detail` */

insert  into `pemeriksaan_detail`(`id`,`tanggal`,`kode`,`kesimpulan`,`catatan`,`saran`) values (50,'2015-10-15','51015104408','fhfghfghfghfghfa','afghfghfghfghfg',NULL),(54,'2015-11-01','51101114852','123','sda',NULL),(55,'2015-11-01','51101135516','a','a',NULL),(57,'2015-11-01','51101114234','menunjukkan nilai di luar rentang batas rujukan\r\nDicetak pada 03-11-2015 08:44\r\nJika sekiranya ada keraguan tentang hasil pemeriksaan,harap segera menghubungi Laboratorium Klinik odhea','menunjukkan nilai di luar rentang batas rujukan\r\nDicetak pada 03-11-2015 08:44\r\nJika sekiranya ada keraguan tentang hasil pemeriksaan,harap segera menghubungi Laboratorium Klinik odhea','dfgdfgd'),(61,'2015-10-15','51015085616','contoh kesimpulan','contoh catatan','contoh saran'),(62,'2015-11-09','51109113714','sad','ads','sad'),(63,'2015-11-10','51110053835','llllllllllllll','12','jk'),(67,'2015-11-12','51112122052','yyyyuyuy','yuyu','yuyuyu'),(69,'2015-11-14','51114120658','gh','fh',''),(71,'2015-10-08','51008134200','saddsa','saddaasd','asddsaads'),(74,'2015-11-10','51110024234','q','w','e'),(77,'2015-11-09','51109114032','sdsa','asdadg','asdsad'),(78,'2015-11-10','51110024606','ASD','ADS','ASD'),(79,'2015-11-15','51115132446','aas','sda','ad'),(80,'2015-11-15','51115133106','','',''),(81,'2016-01-13','60113043025','1','2','3');

/*Table structure for table `petugas` */

DROP TABLE IF EXISTS `petugas`;

CREATE TABLE `petugas` (
  `id` int(10) NOT NULL auto_increment,
  `kode` char(5) default '',
  `nama` char(50) default '',
  KEY `no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `petugas` */

insert  into `petugas`(`id`,`kode`,`nama`) values (1,'AGU','AGUS'),(2,'WIW','WIWIT');

/*Table structure for table `reagen` */

DROP TABLE IF EXISTS `reagen`;

CREATE TABLE `reagen` (
  `id` int(10) NOT NULL auto_increment,
  `kode_reagen` char(10) NOT NULL default '',
  `nama_reagen` char(20) NOT NULL default '',
  `bentuk` char(30) NOT NULL default '',
  `stock` int(10) default '0',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reagen` */

insert  into `reagen`(`id`,`kode_reagen`,`nama_reagen`,`bentuk`,`stock`) values (1,'REA-001','Turk','CAIR2',98),(3,'REA-003','Reiss','CAIR',52),(4,'REA-002','Heyes','cair',142);

/*Table structure for table `reagen_pakai` */

DROP TABLE IF EXISTS `reagen_pakai`;

CREATE TABLE `reagen_pakai` (
  `id` int(10) NOT NULL auto_increment,
  `tanggal` date NOT NULL default '0000-00-00',
  `kode_reagen` char(10) NOT NULL default '',
  `kode_pemeriksaan` char(15) NOT NULL default '',
  `parameter` varchar(30) NOT NULL default '',
  `jumlah` int(2) NOT NULL default '1',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reagen_pakai` */

insert  into `reagen_pakai`(`id`,`tanggal`,`kode_reagen`,`kode_pemeriksaan`,`parameter`,`jumlah`) values (5,'2014-11-10','REA-001','51110024234','',1),(6,'2015-11-10','REA-003','51110024234','',1),(7,'2015-11-10','REA-003','51110024234','',1),(8,'2015-11-09','REA-003','51109114032','',1),(9,'2015-11-09','REA-003','51109114032','',1),(10,'2015-11-09','REA-003','51109114032','HEM-001',1),(11,'2015-11-09','REA-003','51109114032','HEM-002',1),(12,'2015-10-10','REA-001','51110024606','ANA-001',1),(13,'2015-11-10','REA-003','51110024606','HEM-001',1),(14,'2015-11-10','REA-003','51110024606','HEM-002',1),(15,'2015-11-10','REA-002','51110024606','KIM-001',1),(16,'2015-11-10','REA-002','51110024606','KIM-002',1),(17,'2015-11-15','REA-001','51115132446','ANA-001',1),(18,'2015-11-15','REA-002','51115132446','ANA-001',1),(19,'2015-11-15','REA-003','51115132446','ANA-001',1),(20,'2015-11-15','REA-002','51115132446','ANA-015',1),(21,'2015-11-15','REA-003','51115132446','ANA-015',1),(22,'2015-11-15','REA-001','51115133106','ANA-001',1),(23,'2015-11-15','REA-002','51115133106','ANA-001',1),(24,'2015-11-15','REA-003','51115133106','ANA-001',1),(25,'2015-11-15','REA-002','51115133106','ANA-015',1),(26,'2015-11-15','REA-003','51115133106','ANA-015',1),(27,'2015-11-15','REA-002','51115133106','HEM-001',1),(28,'2015-11-15','REA-003','51115133106','HEM-001',1),(29,'2015-11-15','REA-002','51115133106','HEM-002',1),(30,'2015-11-15','REA-003','51115133106','HEM-002',1),(31,'2015-11-15','REA-002','51115133106','HEM-004',1),(32,'2015-11-15','REA-003','51115133106','HEM-004',1),(33,'2016-01-13','REA-002','60113043025','HEM-001',1),(34,'2016-01-13','REA-003','60113043025','HEM-001',1);

/*Table structure for table `reagen_parameter` */

DROP TABLE IF EXISTS `reagen_parameter`;

CREATE TABLE `reagen_parameter` (
  `id` int(11) NOT NULL auto_increment,
  `kode_parameter` char(10) NOT NULL,
  `kode_reagen` char(10) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reagen_parameter` */

insert  into `reagen_parameter`(`id`,`kode_parameter`,`kode_reagen`) values (23,'ANA-001','REA-001'),(24,'ANA-002','REA-001'),(30,'ANA-001','REA-002'),(31,'ANA-015','REA-002'),(32,'CAI-001','REA-002'),(33,'CAI-002','REA-002'),(34,'HEM-001','REA-002'),(35,'HEM-002','REA-002'),(36,'HEM-003','REA-002'),(37,'HEM-004','REA-002'),(38,'HEM-005','REA-002'),(39,'HEM-006','REA-002'),(40,'HEM-007','REA-002'),(41,'HEM-008','REA-002'),(42,'HEM-009','REA-002'),(43,'HEM-010','REA-002'),(44,'HEM-011','REA-002'),(45,'HEM-012','REA-002'),(46,'HEM-013','REA-002'),(47,'HEM-014','REA-002'),(48,'ANA-001','REA-003'),(49,'ANA-015','REA-003'),(50,'CAI-001','REA-003'),(51,'CAI-002','REA-003'),(52,'HEM-001','REA-003'),(53,'HEM-002','REA-003'),(54,'HEM-003','REA-003'),(55,'HEM-004','REA-003'),(56,'HEM-005','REA-003'),(57,'HEM-006','REA-003'),(58,'HEM-007','REA-003'),(59,'HEM-008','REA-003'),(60,'HEM-009','REA-003'),(61,'HEM-010','REA-003'),(62,'HEM-011','REA-003'),(63,'HEM-012','REA-003'),(64,'HEM-013','REA-003'),(65,'HEM-014','REA-003');

/*Table structure for table `reagen_parameter_array` */

DROP TABLE IF EXISTS `reagen_parameter_array`;

CREATE TABLE `reagen_parameter_array` (
  `id` int(11) NOT NULL auto_increment,
  `kode_reagen` char(10) NOT NULL default '',
  `kode_parameter` text,
  `load` char(1) NOT NULL default 'Y',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reagen_parameter_array` */

insert  into `reagen_parameter_array`(`id`,`kode_reagen`,`kode_parameter`,`load`) values (11,'REA-001','ANA-001,ANA-002','N'),(12,'REA-003','ANA-001,ANA-015,CAI-001,CAI-002,HEM-001,HEM-002,HEM-003,HEM-004,HEM-005,HEM-006,HEM-007,HEM-008,HEM-009,HEM-010,HEM-011,HEM-012,HEM-013,HEM-014','N'),(13,'REA-002','ANA-001,ANA-015,CAI-001,CAI-002,HEM-001,HEM-002,HEM-003,HEM-004,HEM-005,HEM-006,HEM-007,HEM-008,HEM-009,HEM-010,HEM-011,HEM-012,HEM-013,HEM-014','N');

/*Table structure for table `reagen_stok` */

DROP TABLE IF EXISTS `reagen_stok`;

CREATE TABLE `reagen_stok` (
  `kode_reagen` char(10) NOT NULL,
  `stock` int(10) default '0',
  `pemakaian` int(10) default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reagen_stok` */

insert  into `reagen_stok`(`kode_reagen`,`stock`,`pemakaian`) values ('REA-001',0,0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `level` char(20) NOT NULL default '',
  `username` char(20) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  `nama` char(50) default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`level`,`username`,`password`,`nama`) values ('Administrator','admin','e10adc3949ba59abbe56e057f20f883e','ADMIN');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
