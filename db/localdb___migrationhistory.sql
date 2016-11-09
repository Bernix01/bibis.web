CREATE DATABASE  IF NOT EXISTS `localdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `localdb`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: localdb
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ContextKey` varchar(300) NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`,`ContextKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__migrationhistory`
--

LOCK TABLES `__migrationhistory` WRITE;
/*!40000 ALTER TABLE `__migrationhistory` DISABLE KEYS */;
INSERT INTO `__migrationhistory` VALUES ('201610280329550_AutomaticMigration','WebApplication5.Migrations.Configuration','‹\0\0\0\0\0\0\Ý\\\Ûn\ä6}°ÿ \èq\á´|Y\ÏNŒ\îN\ÛNŒ_0\íIömÀ–\Øma$R‘( _–‡|\ÒþÂ’u\ãE¢\Ôrw;`\Ð\"‹§Š\Å\"Y,ý¿?ÿšþð\ÖŒ£™}49´-ˆ\\\ìùh=³S²úö½ý\Ã÷ÿøfz\é…\Ï\Ö/\Ý	££-Q2³	‰\Î\'qa’I\è»1NðŠL\\:À\Ã\Îñ\á\áw\ÎÑ‘)„M±,kú1E\ÄaöA?\ç¹0\")n°ƒ„—ÓšE†jÝ‚&p\á\Ìþ.Ï£(ð]@¨(§¶uø€Š±€ÁÊ¶\0B˜d5gŸ¸ 1F\ëED@ððAJ·A¹ðg¹i?Y?œªa\å¦	ÁaOÀ£®Gl>H½v©8ªºKªbò\Âz©of_{0+úˆª\0‘\á\Ù<ˆñÌ¾)Yœ\'\Ñ-$“¢\á$‡¼Š)\ÜW™\Ô,\ãv¥!OÙ¿kž$\áÁ”\Ä 8°\î\Ó%\ãÿÀ—ü¢\Ù\É\ÑruòþôðN\Þýžœ\Ö{JûJ\é\Z´\è>\ÆŒ©lpUöß¶œf;GlX6«µÉµBm‰\Î	Ûº\Ï Z“G:[Ž\ß\ÛÖ•ÿ½¢„\×\'\ä\Ó)D‘8¥Ÿ·i€e\0\Ëz§•\'û¿…\ëñ\é»Q¸Þ‚\'\r½ÀŸNœ8±­0\Èj“G?Ê§Wc¼?s²«‡\ì»i_y\í\çNc—ukI@¼†¤)\ÝÔ©Œ\×È¤\Ôøf] \î¿i3IeóV’²\r™	‹mÏ†B\Þ\×\åklqµ½‡i¤\Í\à„j\"4=°‚\ÊvŽLm\Ñ>ý—\Â\ËøÁk¡êƒ¬ü8„e/\Ä\Ôò\0\ê-ó=Hºx?ƒ\ä±Etús\Ñ\ÐMcj¡\Â\èÕ¹\Ý?bo\Óp\É{¼Fš‡¯ø\n¸Ç—ˆµ\Ú\ïv¿\à”\\\"\ïø‰¸ û|ðCs€Q\Ä9w]˜$WÔ˜¡7\Ç\Ô\Å.\0¯99\î\r\Ç©]û\"ó\0ø¡\Ú–\Ó\Ïiå¨)$§DC¦rL\ÚDý€\×>2µ Õ‹šStŠ\Ê\ÉúŠ\ÊÀ\Ì$\å”zA3‚N9sª\Ñ\\½l„\Æ÷õ2\Øýwö6Û¼ukAMºBÂŸ ‚1]Æ¼{@ŒQ5&\ë\Æ.œ…lø\ÓWß›2N¿€ ›Õ Ù-\ãÏ†vÿgC&&-~ò=\æ•œ€\nb\noD¯>\\u\Ï9A²mO‡F7·\Í|;k€nºœ\'	výl(b_<rÑ”ŸúpVw#\ï\n¡£†\î³-–Ð¾Ù¢QÝ¡@­s7\r\ÎA\âOV#\í\×C°bGUV…Dš\ÂýS\âI-Æ¬`‡ „\ÎTyZø\Èõ#tjIhi¸…±¾—<ÄšA\ÄvjÂ„¹:\Â(ùƒÒ¥¡©S³¸vC\Ôx­º1\ïra«q—[±\É\ßYc—\Ü{\Ãl\×\ØŒ³]%&h£y»0P~V15\0ñ\à²o*œ˜4\Ê]ª­hSc;0Ð¦JÞœ\æGT\ÓñÎ«ûfžÍƒòö·õVu\íÀ6ú\Ø3\Ó\Ì}OÚ†\Ð0–\Íób\É*\á3QÎ¨œü|–pWW4¾€¤²©ü]¥ê´ƒˆF\ÔXZ(¿”€¤	\ÕC¸\"–\×*÷\"zÀq·VX¾ö°5±\ë÷¡5Bý­©hœF§²g¥5HFntX¨\á(B\\¼š7PŠ..++\Æ\Ä\î\ã\r\×:\Æ£EAž«FIEgF\×Raš\ÝZR9d}\\²´$¸O\Z-]K\ÜF»•¤p\nz¸©¨¹…4ÙŠHG¹Û”uS\'Ï‘\âSG“L5½Q\ä£u-¹Š—X‹<³jþ\í¢\ÖQ˜c8n¢H>*¥-9ƒ5j)k*\é•\'\ä°,\Î3÷B‰L¹·j–ÿ‚e}û”±\Ø\njö;o!\Þ\Þ76Z\Ù\á\0W´{!sg²ºbð\Õ\Í-–\é+\Âös¤!\Ò{Wú\Öù\å]½}^\"#LA~\É{’T%ù¸M½Š<#\Æ¡\Òs>Jz®¿³®m/ªG)BSu]¸jg£¦sa\ÌGJt\rûT\'\Â\ë\Ì(žR\àE=1j)\rX­\Îµ™uR\ÇlÖ˜#\n©%uH¡ª‡”õ’†õŠAx\Zª)\Ì9\È)#ut¹\ÖY‘<R‡VTÀV\È,Ö™£*òK\êÀŠjs\ì*\ÙD\\A÷x\Ï\ÒX†mZùv³]Kƒñ:\Ë\á8›^\íÞ¾T+\î‰\Åo\æ%0^¾—¦¤=\Õ\r3¥<ˆ±™)i0ôkNãº»¹\ä´\Þ\Ñ\ë1wØe½\í_\×\Ï`_\Õ,¤HRr/Ov\Â	n\ÊOS\Ýof¤\ãUNb[…\Zgö\Í\Ë\â·`\Â\ê\'\Ù\Ïy\àC¶‚7\0ù+˜<q\Ã>ü[xy³?¯`œ$ñ\ÅiT÷¦9f[HÁBO vA,\'DlðR¤•b\Í\×Èƒ\Ï3û÷¬\ÕY¶`¿²\â\ë:ù„ü\ßRZñ§\ÐúCNð\'s¾ýlµ§\ïÌµzý\ß\Ïy\Ó\ë.¦\æ\Ì:t9d„›¯zI“7\Ý@šÁo\"\Þ\î„j¼7P¢\nbøó‚%\ÆÁ(oL%\Ë.™ú‰¥|:0Lñ2`¨q”¦\Ëú¦Mù÷\è\'\ÉRþ\ïc\èúù;\ÙÃ¾W?$©ö5€\È\Æo\ÌW¢¢\åwÅ™h«R¦\ç\Î\\\ê+w½=I)\×C\'½œQm†´A\Âô\0{xc¹Æ£m‹ŠT\âÑ°wiÐ¯ž?¼/)\ÃU2\Çn3…·™\Ür\rô·\Ê	Þƒ,6EV\Î\î3·mkº\èíž§Oö\Ë\ï\Ý3c\ã¹Z»\Ï\âÝ¶±\é\â»{nl½ru÷\Ì\Övµ\î\ØÒŒ·Ðg\Þ\ÊIDš[U¸+³6˜\ÓcþS#\È=\ÊüA¤:•«-\rµƒaE¢gª\Ï!KG\â+Q´³\í\×W¾\á·v–Ó´³\Õd^¶ñ\æ\ë+oN\Ó\Î[“Ï¸‹œ`eF¡*O»ckKzzK9Àžt¤œwù¬­W\êo)\åw¥4f\ærø\ídøŽ¢’1§NŒ^ùž—îµ¿ H÷\ï\Ä_W\ì\ï)\"\è6vÍ’\æ\Z­p±y$B„\æ\à\Ñ-õ<&þ\n¸„V³\Èrö¢;Ù±+Ž%ô®\Ñ]J¢”\Ð.\Ãp4^\Ì	hãŸ¥-7ež\ÞE\ì+£TLŸ\è\ïÐ©x¥\ÜWŠ˜‚y<Ž\ËÆ’°x\îú¥Dº\Å\Èˆ«¯tŠ`,¹Cð‡\ÈF\Í\ï\\÷¥Š\0\ê@º¢©ö\é…\Ö1ŽQµ§ŸÔ†½ðùûÿcœ*HT\0\0','6.1.3-40302'),('201610300003119_USERCEDULA','WebApplication5.Migrations.Configuration','‹\0\0\0\0\0\0\Ý\\\Ûn\ä6}°ÿ \èq\á´|Y\ÏNŒ\îN\ÛNŒ_0\íIömÀ–\Øma$R‘( _–‡|\ÒþÂ’u\ãE¢\Ôrw;`\Ð\"‹§Š\Å\"Y,ý¿?ÿšþð\ÖŒ£™}49´-ˆ\\\ìùh=³S²úö½ý\Ã÷ÿøfz\é…\Ï\Ö/\Ý	££-Q2³	‰\Î\'qa’I\è»1NðŠL\\:À\Ã\Îñ\á\áw\ÎÑ‘)„M±,kú1E\ÄaöA?\ç¹0\")n°ƒ„—ÓšE†jÝ‚&p\á\Ìþ.Ï£(ð]@¨(§¶uø€Š±€ÁÊ¶\0B˜d5gŸ¸ 1F\ëED@ððAJ·A¹ðg¹i?Y?œªa\å¦	ÁaOÀ£®Gl>H½v©8ªºKªbò\Âz©of_{0+úˆª\0‘\á\Ù<ˆñÌ¾)Yœ\'\Ñ-$“¢\á$‡¼Š)\ÜW™\Ô,\ãv¥!OÙ¿kž$\áÁ”\Ä 8°\î\Ó%\ãÿÀ—ü¢\Ù\É\ÑruòþôðN\Þýžœ\Ö{JûJ\é\Z´\è>\ÆŒ©lpUöß¶œf;GlX6«µÉµBm‰\Î	Ûº\Ï Z“G:[Ž\ß\ÛÖ•ÿ½¢„\×\'\ä\Ó)D‘8¥Ÿ·i€e\0\Ëz§•\'û¿…\ëñ\é»Q¸Þ‚\'\r½ÀŸNœ8±­0\Èj“G?Ê§Wc¼?s²«‡\ì»i_y\í\çNc—ukI@¼†¤)\ÝÔ©Œ\×È¤\Ôøf] \î¿i3IeóV’²\r™	‹mÏ†B\Þ\×\åklqµ½‡i¤\Í\à„j\"4=°‚\ÊvŽLm\Ñ>ý—\Â\ËøÁk¡êƒ¬ü8„e/\Ä\Ôò\0\ê-ó=Hºx?ƒ\ä±Etús\Ñ\ÐMcj¡\Â\èÕ¹\Ý?bo\Óp\É{¼Fš‡¯ø\n¸Ç—ˆµ\Ú\ïv¿\à”\\\"\ïø‰¸ û|ðCs€Q\Ä9w]˜$WÔ˜¡7\Ç\Ô\Å.\0¯99\î\r\Ç©]û\"ó\0ø¡\Ú–\Ó\Ïiå¨)$§DC¦rL\ÚDý€\×>2µ Õ‹šStŠ\Ê\ÉúŠ\ÊÀ\Ì$\å”zA3‚N9sª\Ñ\\½l„\Æ÷õ2\Øýwö6Û¼ukAMºBÂŸ ‚1]Æ¼{@ŒQ5&\ë\Æ.œ…lø\ÓWß›2N¿€ ›Õ Ù-\ãÏ†vÿgC&&-~ò=\æ•œ€\nb\noD¯>\\u\Ï9A²mO‡F7·\Í|;k€nºœ\'	výl(b_<rÑ”ŸúpVw#\ï\n¡£†\î³-–Ð¾Ù¢QÝ¡@­s7\r\ÎA\âOV#\í\×C°bGUV…Dš\ÂýS\âI-Æ¬`‡ „\ÎTyZø\Èõ#tjIhi¸…±¾—<ÄšA\ÄvjÂ„¹:\Â(ùƒÒ¥¡©S³¸vC\Ôx­º1\ïra«q—[±\É\ßYc—\Ü{\Ãl\×\ØŒ³]%&h£y»0P~V15\0ñ\à²o*œ˜4\Ê]ª­hSc;0Ð¦JÞœ\æGT\ÓñÎ«ûfžÍƒòö·õVu\íÀ6ú\Ø3\Ó\Ì}OÚ†\Ð0–\Íób\É*\á3QÎ¨œü|–pWW4¾€¤²©ü]¥ê´ƒˆF\ÔXZ(¿”€¤	\ÕC¸\"–\×*÷\"zÀq·VX¾ö°5±\ë÷¡5Bý­©hœF§²g¥5HFntX¨\á(B\\¼š7PŠ..++\Æ\Ä\î\ã\r\×:\Æ£EAž«FIEgF\×Raš\ÝZR9d}\\²´$¸O\Z-]K\ÜF»•¤p\nz¸©¨¹…4ÙŠHG¹Û”uS\'Ï‘\âSG“L5½Q\ä£u-¹Š—X‹<³jþ\í¢\ÖQ˜c8n¢H>*¥-9ƒ5j)k*\é•\'\ä°,\Î3÷B‰L¹·j–ÿ‚e}û”±\Ø\njö;o!\Þ\Þ76Z\Ù\á\0W´{!sg²ºbð\Õ\Í-–\é+\Âös¤!\Ò{Wú\Öù\å]½}^\"#LA~\É{’T%ù¸M½Š<#\Æ¡\Òs>Jz®¿³®m/ªG)BSu]¸jg£¦sa\ÌGJt\rûT\'\Â\ë\Ì(žR\àE=1j)\rX­\Îµ™uR\ÇlÖ˜#\n©%uH¡ª‡”õ’†õŠAx\Zª)\Ì9\È)#ut¹\ÖY‘<R‡VTÀV\È,Ö™£*òK\êÀŠjs\ì*\ÙD\\A÷x\Ï\ÒX†mZùv³]Kƒñ:\Ë\á8›^\íÞ¾T+\î‰\Åo\æ%0^¾—¦¤=\Õ\r3¥<ˆ±™)i0ôkNãº»¹\ä´\Þ\Ñ\ë1wØe½\í_\×\Ï`_\Õ,¤HRr/Ov\Â	n\ÊOS\Ýof¤\ãUNb[…\Zgö\Í\Ë\â·`\Â\ê\'\Ù\Ïy\àC¶‚7\0ù+˜<q\Ã>ü[xy³?¯`œ$ñ\ÅiT÷¦9f[HÁBO vA,\'DlðR¤•b\Í\×Èƒ\Ï3û÷¬\ÕY¶`¿²\â\ë:ù„ü\ßRZñ§\ÐúCNð\'s¾ýlµ§\ïÌµzý\ß\Ïy\Ó\ë.¦\æ\Ì:t9d„›¯zI“7\Ý@šÁo\"\Þ\î„j¼7P¢\nbøó‚%\ÆÁ(oL%\Ë.™ú‰¥|:0Lñ2`¨q”¦\Ëú¦Mù÷\è\'\ÉRþ\ïc\èúù;\ÙÃ¾W?$©ö5€\È\Æo\ÌW¢¢\åwÅ™h«R¦\ç\Î\\\ê+w½=I)\×C\'½œQm†´A\Âô\0{xc¹Æ£m‹ŠT\âÑ°wiÐ¯ž?¼/)\ÃU2\Çn3…·™\Ür\rô·\Ê	Þƒ,6EV\Î\î3·mkº\èíž§Oö\Ë\ï\Ý3c\ã¹Z»\Ï\âÝ¶±\é\â»{nl½ru÷\Ì\Övµ\î\ØÒŒ·Ðg\Þ\ÊIDš[U¸+³6˜\ÓcþS#\È=\ÊüA¤:•«-\rµƒaE¢gª\Ï!KG\â+Q´³\í\×W¾\á·v–Ó´³\Õd^¶ñ\æ\ë+oN\Ó\Î[“Ï¸‹œ`eF¡*O»ckKzzK9Àžt¤œwù¬­W\êo)\åw¥4f\ærø\ídøŽ¢’1§NŒ^ùž—îµ¿ H÷\ï\Ä_W\ì\ï)\"\è6vÍ’\æ\Z­p±y$B„\æ\à\Ñ-õ<&þ\n¸„V³\Èrö¢;Ù±+Ž%ô®\Ñ]J¢”\Ð.\Ãp4^\Ì	hãŸ¥-7ež\ÞE\ì+£TLŸ\è\ïÐ©x¥\ÜWŠ˜‚y<Ž\ËÆ’°x\îú¥Dº\Å\Èˆ«¯tŠ`,¹Cð‡\ÈF\Í\ï\\÷¥Š\0\ê@º¢©ö\é…\Ö1ŽQµ§ŸÔ†½ðùûÿcœ*HT\0\0','6.1.3-40302'),('201610300008000_USERCEDULA2','WebApplication5.Migrations.Configuration','‹\0\0\0\0\0\0\Ý\\\Ûn\ä¸}ôx[¾Ä“‰Ñ½o\Û\Î\Z_0\í\Ù\ämÀ–\Øma$R+Q^A¾lö“ò!u\çM¢\Ô\ê‹ZdñT±X$‹Å¢ÿ÷\Û\ï\Ó^\ÃÀzq\âc4³O&Ç¶‘‹=­gvJV\ß}´øþ\Ïš^{\á«õsIw\Æ\èhK”\Ì\ìgB¢\ÇI\Üg‚dúnŒ¼\"‡ð°sz|üw\ç\äÄÂ¦X–5ýœ\"\â‡0û ŸsŒ\\‘wØƒAR”ÓšE†jÝƒ&p\á\Ìþ\\^FQà»€PQ\Îm\ë2ðcƒ•m„0\Éj.¾$pAbŒÖ‹ˆ€\à\é-‚”n‚\Â_\Ô\ä¦ý8>eýp\ê†%”›&‡=O\Î\n\Å8bóA\êµ+\ÅQ\Õ]S“7\Ö\ëL}3ûÖƒY\ÑgPˆ/\æAÌˆgö]\Å\â2‰\î!™”\r\'9\äML\á~\Åñ·Iñ\È2nwT\Ò\é\ä˜ý;²\æi@\Ò\ÎLI‚#\ë1]\Ò1þ\'|{\Â\ß š,Wg\Ï?\0\ï\ì\Ã_\á\Ùy³§´¯”Ž+ E1Ž`Leƒ«ªÿ¶\åð\í±aÕ¬\Ñ&\×\nµ%:\'l\ë¼~‚hMž\él9ýh[7þ+ôÊ’Â¸¾ ŸN!Úˆ\Ä)ý¼Oƒ\0,X\Õ;­<\Ùÿ-\\O\Ï?Œ\Âõ¼ø\ël\èþt\âÄ‰m}†AV›<ûQ>½¸ñþZ\Ý\Ä8dß¼}\åµ_8]\Ö¬%yñ\Z^º©S¯‘I3¨ñÍºD=|\Óf’\Ê\æ­$e\Z2J»ž\r¥¼\Û\åklq½‡i¤\Í\à„j\"4=²‚\ÚvNLm\Ñ>ý‘—\Â9ô\Ò\0´ð¥?ø¶³¹Œ°\ä\Zp¡®\ÎÊCX)óGL\r ÞªyIBW\ï\'<o]A\è¦1\Âh\ë\ÜŸ1‚÷i¸dókw¼Fš§_ñ\rp	Ž¯kµ1\Þ\'\ì~\Ã)¹F\Þ ðqK@öù\ä‡\æ\0£ˆs\éº0In¨1CoŽ©\'_\Þ\"rv\ÚŽ­…ûvy\æðCµ\Ï#¬\Ú_K\Ò\Ú\ïQSH¾†L\åÿ´‰ú	¯}d&jIª5§\èµ \ë+*3“´ \ÔštÊ™S\æQf#4¾K™Á¾O¹™ [\Zj\\\Ðþ\"\Óe\Ì{„À\Õ#`²n\ì\Å\'a\ÃÇ˜n}o\Ê8ý‚tlVƒfC¶Œ?2\ØÃŸ\r™˜´ø\Å÷˜Wbp\Ð*‰)¼½ú\×=\ç\Év=¸n\îšùn\Ö\0\Ýt¹L\ìú\Ù,P„ØŠ\0	/?õ\á¬\îhI\Þ1\âB;F\r\Ýg[-¡}³E£z@W0€Z—n‚œƒ\Äž¬F\Ú!¯‡`åŽª¬Ž¼ð\ÂýE\âI-Æ¬`‡ „\ÎTyZø\Èõ#tjIhi¸…±¾W<Äš+A\ÄvjÂ„¹:\Ð\Â¨øƒÒ¥¡©Ó°¸vC\Ôx­º1\ïra\ëq—\â;±\É\ßYc—…ÿ¶\Ãl\×\ØŒ³]%&hƒ†û0\Ð\â¬bj\0\âÁ\å\ÐT81i´p©vb ¼\Æö` ¼JÞ\æGT\ÓñÎ«‡fžüAy÷\Ûz«ºö`›œ>\Ì4sß“¶!´Œeó¼Z²JøJ‡3*gq>K\nWW4¾€„\Ù\Ôþ®\Òu\ÚAD#j¬\r­´¸n”€¤	\ÕC¸2–\×*]\áEô€-\ãn­°\Å\Ú/À6l@\Æn^»6õ—³¢q\Z>ªžU\Ö ¹\Ña¡£0qñ\â;n ]\\VVŒ‰/\Ü\Çnt¬Œux®\Z%•]K¥ivkI\åõq\É6Ò’\à>i´Tvft-6Ú­$…S\Ð\Ã-\ØHEü>\Òd+#\ÕnS\ÕM<«(˜:šœ­\éˆ\"­9\\E‰µ\È¸\æ\ß-ú\'7…9†\ã&Š§JÚŠÁ1XC¡–²¦’\ÞøqB®\0KÀ\â<s/”È”{«fù/Y6·Oy\Ë} ¤f¿ób’\0·\ÑÊžHpC»2w&‹¡+_\Ý\Üb	u \0±\"l?\ÇA\Z\"½w¥o_\Þ5\Û\ç%2\Â\Ôä—¼\'IU’\Ë\ë\ÝhT\ä1\ÆUž\ËðQ\ÒC\èt]úMm\ë|Q=Jšj¢\è\ÂU{5c>R¢k\Ø :¶3£Ê´—&BYfŽRdµ4AŠ¢ž\Ä	¬QgŽ\Ê\ç®41ù\ZsD!A¥	)Tõ²™†\Â	Ù¬„§Ñ¨šÂœƒœx\ÒD—kÍ‘)(MhEõ\0l…\Ìb9ª\"K¥	¬¨6Ç®SV\Äuø€w>\í±g\ØÖ—‹7\Ûû4\ÛYT\Ç\Ù:·ÿ\Ü\ê\\÷\Ä*\î÷%°¢ü MI{6fJy(d3S\Ò`\è\×\îÒœ_rZoúõ˜\ÜM8·¬·e\èñú\ìV\ÍB:Š$÷\ê|(œ§Å™¬ûtH\ËIl«T\ãÌ¾{[üLXý$û9|\ÈVð’\â ’§\Øç“¿	Ï„\çÉŽ“$^ 8\Ó\ê\Þ\íðc¶ƒD.ôb÷\ÄrZ\Å\ÏZjP)b}‹<ø:³ÿ“µºÈ‚\ìWV|d\Ý&_ÿKJ+ž\âZÿ•\ÓD\ÇIóo?¡\è£s­\Þþûk\Þô\Èzˆé„¹°Ž]aþ©F/iò¦H3ø\ÇûPü\ãˆ\0S¤\ì¨†\éýöA)›0­†?uXbŒò\Îah_•\Ï†‚)^)Œ\05Ž\Òt/iŸxô“d\Ïc\èúù\Ó\àã¾W?N$©öe‚\È\Æ\ï\Ì×³²\å÷,\Å\Éjk[¦\çÎ¼î’<÷½\ÉI\é\ßC\'½œ\Ým†´Aòö\0{xgyÏ£m®Š´\æÑ°÷i\Ð[\Ïe>”ô\å:±d¿YË»LTn¹’úC\å\'@F\"ChÿYÈ»¶5]øÀS9û\å\Z˜±ycû\Ï(Þµ±\é¢\Änl½ò†\Ì\Ööµ\î\ÙÒŒ·Ð½g\Ë	Mš»U(¹+\Ë7»\ÓcþS#\È=\Êüq¦:­¬-%¶ƒaM¢gª\ÏgKG\â+Q´³\í\×\×b\Ão\ílA\Ó\ÎV“\ÚÆ»Xÿ[y4\í¼5¹•û\ÈOVf7ªr\Æ;Ö±¶¬÷”\Ìõ¤#ý½\Ëgm½˜O\éÇ£(…›=š+\æ÷“m<ŠJÆœ:=²‹\å\Ûbºw6þh$Ý¿]C°?!‰ \Ë\íš\Í-Z\áró$*I„\Í$À£[\êeLüp	­f‘\å\ìuy²cWK\èÝ¢‡”D)¡]†\á2\à^\Ì	hãŸ¥Pó2O\"ö•Œ\Ñ*¦\Ïô\è\Ç\Ô¼J\îELHÁ¼‹\"Ž\ËÆ’°x\îú­Bº\Ç\È¨P_\å=Á0\n(Xò€\à‘š\ß\'¸\î[Ôt¯ö\é•\Ö1“£nO?©\r{\á\ë÷ÿ*µ€2;U\0\0','6.1.3-40302');
/*!40000 ALTER TABLE `__migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-08 19:04:05
