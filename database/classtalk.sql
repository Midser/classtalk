-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: classtalk
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `ballotbox`
--

DROP TABLE IF EXISTS `ballotbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ballotbox` (
  `sign` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(50) DEFAULT NULL,
  `content` text,
  `release_time` datetime DEFAULT NULL,
  `promulgator` varchar(50) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `oo` int(11) DEFAULT NULL,
  `xx` int(11) DEFAULT NULL,
  PRIMARY KEY (`sign`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ballotbox`
--

LOCK TABLES `ballotbox` WRITE;
/*!40000 ALTER TABLE `ballotbox` DISABLE KEYS */;
INSERT INTO `ballotbox` VALUES (3,'明天开会！','同意明天开会的，支持一下！','2017-06-07 19:52:58','WenXin','2017-06-07 12:00:00',5,1),(4,'课堂反转！','同意实行课堂反转的同学举个爪！！\r\n由学生讲课，老师观望！！','2017-06-07 21:42:04','匿名人士','2017-06-10 00:00:00',6,2),(5,'oo','lll','2017-06-09 11:02:36','klk','2045-06-01 01:01:00',1,0);
/*!40000 ALTER TABLE `ballotbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `topic` varchar(50) DEFAULT NULL,
  `content` text,
  `release_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES ('关于转发《关于开展“广西应急”标识征集评选活动的通知》的通知','校属各单位：\n现将《关于开展“广西应急”标识征集评选活动的通知》转发给你们，请各单位积极组织广大师生参与。\n\n附件：关于开展“广西应急”标识征集评选活动的通知\n\n党委宣传部\n\n','2017-06-02 09:38:24'),('学术报告通知','时间：3月22日（星期五）10：00～12：00\n地点：雁山校区12教学楼报告厅\n报告内容:\n1、报告人：沈中，中国空间技术研究院总体部副总指挥，副总设计师\n报告主题：“航天器光学遥感载荷”\n2、报告人：汪路元，中国空间技术研究院总体部、室主任，主任设计师\n报告主题：“卫星综合电子系统”\n','2017-06-02 09:39:10'),('关于组织在校师生参加学习党的十八大报告和党章知识竞赛活动的通知','校属各单位、各部门：\n近期，中组部党员教育中心、人民出版社、共产党员网联合举办学习党的十八大报告和党章知识竞赛活动（网址：WWW.12371.cn，活动截止时间为2013年3月31日）。根据中组部、自治区组织部、自治区高工委关于组织开展学习党的十八大报告和党章知识竞赛活动的通知要求，为组织好我校参加党的十八报告和党章知识竞赛活动,现将有关事项通知如下。\n一、全校要把组织竞赛活动纳入学习宣传贯彻党的十八大精神工作的总体部署，作为全校师生普及学习党的十八大知识的重要过程。要求各单位高度重视、精心组织，积极引导党员干部发挥表率作用，通过组织开展知识竞赛等活动，推动竞赛活动广泛深入开展。要充分做好竞赛活动的宣传推介工作，扩大竞赛活动的师生知晓率。\n二、要求全体干部、党员、申请入党的师生、入党积极分子、发展对象都参加，其中，单位职工活动参与率要达到90%，大学生团员、入党申请人活动参与率不低于70%。\n三、参加网上答题的师生，答题之前需注册为共产党员网用户，注册时请用QQ号等虚拟名称，不要加学校名称，待进入答题时，根据提示如实、详细填写个人信息，包括姓名、身份证号码、单位、通信地址、邮编、手机号码，需要注意注册后大约需要24小时的审核时间。共产党员网严格保护参与竞赛活动的个人信息，确保不被泄露。\n\n','2017-06-02 09:39:49'),('武汉大学黄启俊教授学术报告会','时 间：4月9日15：00——16：30\n\n地 点：屏风校区图书馆报告厅\n\n主 题：雷电探测技术与FPGA应用\n\n\n黄启俊，男，教授、博士，博士生导师。武汉大学物理科学与技术学院电子科学与技术系副主任，微电子学教研室主任，武汉大学-Altera公司EDA/SOPC联合实验室主任。中国仪器仪表学会仪表元器件分会理事；中国光学学会光电技术专业委员会委员；湖北省高校 EDA/SOPC协会理事。\n\n主要科研方向为：1）半导体光电器件理论及工艺设计，光电探测系统研发；2）微纳电子器件模型、微电子系统设计、FPGA系统设计；3）红外辐射物理与红外图象处理、辐射测温仪器研发。\n\n以项目负责人主持国防预研重点子课题、国家科技支撑计划子课题、国防预研课题、行业科技专项、国家自然科学基金等纵向课题14个科技合同、企业科技攻关项目7项；以第2、3参加者参与了国家重点科技攻关项目、863计划、国家基金项目、国防预研、国家创新基金等科研项目16项。\n','2017-06-02 09:40:57'),('宿舍卫生检查！','请各位同学打扫好自己的宿舍！！','2017-06-05 23:19:47'),('中国大学生学习与发展追踪研究！','    关于开展学校2017年“中国大学生学习与发展追踪研究”问卷调查（简称CCSS）工作的通知，请各班尽快通知自己的人，6月8日晚上7点前全部被抽到的学生要务必完成作答。谢谢，这个是硬性要求，需要大家配合。','2017-06-07 21:37:55'),('jj','jj','2017-06-09 10:58:01');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `topic` varchar(50) DEFAULT NULL,
  `content` text,
  `release_time` datetime DEFAULT NULL,
  `oo` int(11) DEFAULT NULL,
  `xx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES ('落细落实高校意识形态工作','加强高校意识形态工作，是一项战略工程、固本工程、铸魂工程。党的十八大以来，习近平总书记对意识形态工作作出的一系列重要论述和在全国高校思想政治工作会议上所作的重要讲话，以及中办、国办《关于进一步加强和改进新形势下高校宣传思想工作的意见》，为我们做好新形势下高校意识形态工作、办好中国特色社会主义高校指明了方向、提供了根本遵循。这就要求我们要做到守土有责、守土负责、守土尽责，齐抓共管，形成合力，把意识形态工作落细落实、取得实效。\n　　强化政治担当　切实解决“总揽抓”的问题\n　　百年大计，教育为本；立德树人，德育为先。高校领导班子要增强政治意识，提高政治站位，牢牢把握社会主义办学方向。要始终把讲政治作为办学治校之魂，牢固树立马克思主义信仰，增强“四个意识”，坚定“四个自信”。特别要突出立德树人这项根本任务，抓好意识形态工作，把思想政治工作贯穿教育教学全过程，以培养大批德才兼备、全面发展的合格建设者和可靠接班人。高校党委必须始终发挥政治统领和主导作用，牢牢把握意识形态工作的领导权、主动权和话语权。要通过周密完善的系统谋划，明确责任，理顺体制机制，整合资源，形成合力。','2017-06-01 15:57:27',0,0),('《广西日报》桂理工：“地球日”讲地球故事','在第48个“世界地球日”来临之际，桂林理工大学举办“节约集约利用资源 倡导绿色简约生活——讲好我们的地球故事”系列活动。该校地质博物馆的免费开放，更给众多民众与馆内恐龙化石和南极陨石亲密接触的机会。\n　　4月19日，地质博物馆接待了80余位来华留学生。作为目前华南地区功能最齐全的地质博物馆，约4000平方米的室内展陈面积和1000平方米的室外展陈面积，围绕生命起源与演化、行星地球、内外动力地质作用、矿物岩石、矿产资源、地质灾害和宝玉石等主题设置的10个展厅，打开了公众探寻生命起源、了解地球母亲的窗户。馆内收藏的古生物化石、矿物、岩石、矿石和宝玉石等2万余件实物标本引起留学生的极大兴趣，大家纷纷拿出手机，和博物馆里的宝贝合影留念。“太神奇了，我从来没见过这么完整，这么大的鱼龙化石！” 站在地质博物馆13米长的鱼龙化石面前，来自塔吉克斯坦的伊娃感叹道。“我觉得这样的活动很有意义，通过参观我们了解了人类发展的历史、物种的进化过程，认识到保护地球的重要性！”越南学生阮长江说他的家乡发展很快，但对环境的破坏也很厉害，“人类破坏环境带来的后果让我很震惊，环境保护真的很重要，每个人都有责任为环保作贡献！”\n　　4月22日，第48个“世界地球日”当天，桂林多所学校组织学生前来参观，不少家长一同前来。孩子们对标本尤其好奇，惊叹之余不停地询问讲解员各种问题。“希望通过参观博物馆，开阔孩子的视野，增长见识。”一位家长告诉记者，“看到由于人类活动对环境的不良影响，导致地质灾害时有发生，对我们也是一种警示教育！”\n','2017-06-01 15:58:16',0,0),('《广西日报》：“双创”教育在桂工','“挑战杯”全国大学生课外学术科技作品竞赛一等奖、“创青春”全国大学生创业大赛MBA专项赛银奖、互联网+创新创业全国大赛铜奖、全国大学生人力资源管理知识技能竞赛特等奖、全国大学生外贸从业能力特等奖、全国软件和信息技术专业人才大赛全国一等奖……一年来，桂林理工大学“双创”教育捷报频传，成效喜人。\n\n　　顶层设计 引领方向\n\n　　“着力提升大学生创新创业能力，已纳入学校‘十三五’发展规划。”校长解庆林告诉笔者。近年来，该校围绕创新创业融入人才培养全过程、创新创业教育面向全体学生、全体教师参与创新创业的“三全理念”，不断加大创新创业教育改革的力度，构建全方位、多层次、一体化的大学生创新创业教育教学和实践体系，取得了较好成果。\n\n　　抓顶层设计，从源头发力，让该校的大学生“双创”教育一开始就呈现出思路清、方向明的特点。自2004年大学生创新创业基地成立以来，12年间已有上千个项目在基地孵化成功并顺利走向市场。\n\n　　成立创新创业学院，是该校推进创新创业教育改革的又一顶层设计。学院把构建“科技创新、创业教育、创业实践”三位一体的创新创业教育长效机制摆在首位，探索建立了一套科学、系统的创新创业人才培养和课程教育体系。创新创业学院副院长周国桥告诉我们：现如今，桂工学子从最初产生创业设想，到最终实现创业梦想，创业路上的每一个阶段，都能得到学校和老师的帮助指导。\n\n','2017-06-01 15:59:00',0,0),('【聚焦教代会】攻坚克难 砥砺前行 奋力谱写学校事业发展的新华章','6月3日下午，我校二届六次教职工暨工会会员代表大会在圆满完成各项议程后胜利闭幕。校领导张学洪、解庆林、王赣华、孙宁、陈学军、王玫、周国清、梁福沛、王敦球、曾繁荣、张劲松出席闭幕式。大会正式代表、列席代表、特邀代表200余人参加了会议。学校党委副书记、纪委书记孙宁主持闭幕式。\r\n\r\n闭幕式上，代表们表决通过了校长工作报告、财务工作报告。\r\n\r\n学校党委书记张学洪在闭幕式上作了讲话。他指出此次大会是学校全面贯彻落实全国高校思想政治工作会议和习近平总书记考察广西重要讲话精神，以优异成绩迎接党的十九大的背景下召开的一次重要会议。会议期间，各位代表本着对学校改革发展高度负责的态度，认真履行代表职责，充分行使民主权利，围绕学校建设与发展畅所欲言、建言献策，提出了很多宝贵的意见和建议，充分发挥了教代会在学校民主决策、民主监督、民主管理和依法治校工作中的重要作用，审议通过了各项报告和决议，为积极落实学校“十三五”发展规划、加快推进“双一流”建设、建成特色鲜明的高水平教学研究型理工大学凝聚起了强大的合力。\r\n\r\n张书记强调，全面贯彻全国高校思想政治工作会议精神对学校办学提出了更高的要求，国家和自治区“双一流”建设全面启动对学校发展提出了更大的挑战，机遇之好、舞台之大、责任之重、要求之高同样前所未有。就贯彻落实大会精神，张书记代表学校党委向各位代表提出三点希望：一要认清形势，深入推进“双一流”建设。坚持“夯实基础、突出特色”的建设原则，坚持服务广西和行业产业不放松，坚持加强优势特色专业建设不懈怠，紧密围绕建设高水平理工大学这一目标，将一流学科和一流专业作为学校高水平大学建设的支撑点，建设一流队伍、培养一流人才、产出一流成果、提供一流服务，全面提升学校的整体水平。二要明确责任，求真务实抓好年度目标落实。各部门、各单位要结合实际，贯彻落实好本次教代会的精神，把2017年各项目标任务分解到各自的工作中去，要进一步明确责任，增强完成任务的必胜信心，要多想金点子，多谋好办法，创新工作，开拓工作，切实抓好年度目标的落实。三要继续加强教代会建设，切实提高民主办学水平。希望全体代表和全校教职工明确学校发展的新任务，树立大局意识，发展意识和创新精神，围绕学校改革、发展、稳定的大局，正确行使民主权利，同心协力、与时俱进、开拓进取，为加快学校的跨越发展做出新的贡献。最后，张书记希望全体桂工人团结一致、振奋精神、脚踏实地、抢抓机遇、开拓进取，以更大的勇气革故鼎新，以更强的毅力攻坚克难，以更实的作风干事创业，为加快学校的跨越发展做出新的贡献。\r\n','2017-06-05 16:39:43',0,0),('我校大学生足球队荣获桂林市高校大学生足球联赛亚军','5月28日，桂林市高校大学生足球联赛落下帷幕，我校大学生足球队团结一致，奋勇拼搏，夺得今年足球联赛亚军。\r\n　　我校大学生足球队秉承不畏艰苦、拼搏奋斗的优良作风，教练员和运动员充分利用课余时间、寒暑假开展科学、系统的训练，为增强学生身体素质和提高专业技术水平打下了良好的基础。经过本次比赛，不仅检验了我校学子们的体育竞技水平，也展现了我校运动员们顽强拼搏的精神面貌，对推动我校体育工作，提高学生综合素质具有重要意义。','2017-06-07 21:38:52',0,0),('tes','111','2017-06-09 10:57:43',0,0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superuser`
--

DROP TABLE IF EXISTS `superuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `superuser` (
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superuser`
--

LOCK TABLES `superuser` WRITE;
/*!40000 ALTER TABLE `superuser` DISABLE KEYS */;
INSERT INTO `superuser` VALUES ('wenxin','123456');
/*!40000 ALTER TABLE `superuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talk`
--

DROP TABLE IF EXISTS `talk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talk` (
  `sign` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `release_time` datetime DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sign`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talk`
--

LOCK TABLES `talk` WRITE;
/*!40000 ALTER TABLE `talk` DISABLE KEYS */;
INSERT INTO `talk` VALUES (21,'看了那么多段子，却没能成为一个幽默的人。','2017-06-06 23:05:07','niehao');
/*!40000 ALTER TABLE `talk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talking`
--

DROP TABLE IF EXISTS `talking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talking` (
  `sign` varchar(50) DEFAULT NULL,
  `content` text,
  `user_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talking`
--

LOCK TABLES `talking` WRITE;
/*!40000 ALTER TABLE `talking` DISABLE KEYS */;
INSERT INTO `talking` VALUES ('1','totototo','niehao');
/*!40000 ALTER TABLE `talking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('niehao','123456','13557735631',0),('huangwen','123456','18577333440',0),('wenxin','123456','15676300713',0),('test','123','15676300713',1),('xx','123456','13557735631',1),('test2','123456','13557735631',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voter` (
  `sign` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES (4,'wenxin'),(4,'null'),(4,'niehao'),(4,'huangwen'),(4,'test'),(4,'xx'),(4,'test2'),(5,'wenxin');
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-16 16:34:08
