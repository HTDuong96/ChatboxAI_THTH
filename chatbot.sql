-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: chatbot_vle
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat_history`
--

DROP TABLE IF EXISTS `chat_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(64) DEFAULT NULL,
  `role` enum('user','assistant') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `danhmuc` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_history`
--

LOCK TABLES `chat_history` WRITE;
/*!40000 ALTER TABLE `chat_history` DISABLE KEYS */;
INSERT INTO `chat_history` VALUES (63,'utjb9vxr2fmcczvemb','user','Dạ em chào thầy cô ạ','2025-06-26 06:20:50',8),(64,'utjb9vxr2fmcczvemb','assistant','Chào bạn, chúng tôi là đội ngũ hỗ trợ VLE','2025-06-26 06:20:50',8),(65,'utjb9vxr2fmcczvemb','user','dạ em chào thầy cô ạ','2025-06-26 06:51:23',8),(66,'utjb9vxr2fmcczvemb','assistant','Chào bạn, chúng tôi là đội ngũ hỗ trợ VLE','2025-06-26 06:51:23',8),(67,'utjb9vxr2fmcczvemb','user','Thầy có email của cô My dạy môn tâm lý học không ạ','2025-06-26 06:53:03',0),(68,'utjb9vxr2fmcczvemb','assistant','Xin lỗi, nhưng tôi không thể cung cấp thông tin liên lạc cá nhân của bất kỳ ai, bao gồm cả thầy cô giáo. Nếu bạn cần liên hệ với cô My, bạn có thể thử hỏi trực tiếp tại trường hoặc thông qua hệ thống email của trường nếu có.','2025-06-26 06:53:03',0),(69,'utjb9vxr2fmcczvemb','user','Em muốn xin email của giảng viên môn Tâm lý học đại cương ạ','2025-06-26 07:54:03',0),(70,'utjb9vxr2fmcczvemb','assistant','Rất xin lỗi, nhưng tôi không thể cung cấp thông tin liên lạc cá nhân của giảng viên hay bất kỳ ai khác. Bạn có thể tìm kiếm thông tin này thông qua website chính thức của trường hoặc liên hệ với văn phòng khoa Tâm lý học của trường đại học mà bạn theo học để được hỗ trợ. Họ sẽ cung cấp cho bạn thông tin cần thiết.','2025-06-26 07:54:03',0),(71,'utjb9vxr2fmcczvemb','user','Em muốn xin email giảng viên ạ','2025-06-26 09:12:37',9),(72,'utjb9vxr2fmcczvemb','assistant','Nếu giảng viên có thực hiện hướng dẫn trên các khóa học trên VLE thì thông tin email sẽ hiện ở gốc dưới bên phải giao diện khóa học em nhé!','2025-06-26 09:12:37',9),(73,'b704v4ap0dpmce6q57b','user','hệ thống có lịch bảo trì định kì không','2025-06-27 02:23:56',3),(74,'b704v4ap0dpmce6q57b','assistant','Chào em, hệ thống chỉ bảo trì mặc định trong khoảng thời gian 00h đến 06h sáng hằng ngày, còn các thời gian khác có thể hệ thống chỉ bảo trì từ 1 đến 2 phút nên em có thể vào lại ngay nếu truy cập ngoài thời gian bảo trì mặc định.','2025-06-27 02:23:56',3),(75,'b704v4ap0dpmce6q57b','user','có bao nhiêu khóa học sinh viên','2025-06-27 02:27:00',0),(76,'b704v4ap0dpmce6q57b','assistant','Số lượng khóa học dành cho sinh viên có thể khác nhau tùy thuộc vào trường đại học, viện nghiên cứu hoặc tổ chức giáo dục mà bạn đang đề cập. Hầu hết các cơ sở giáo dục cung cấp nhiều khóa học trong các lĩnh vực khác nhau như kỹ thuật, khoa học, nghệ thuật, kinh tế, y tế, và nhiều lĩnh vực khác.\n\nNếu bạn cần thông tin cụ thể về một cơ sở giáo dục nào đó, bạn vui lòng cung cấp tên của cơ sở đó để mình có thể giúp bạn tốt hơn.','2025-06-27 02:27:00',0),(77,'8u5ow0gffihmbt386la','user','Chào buổi sáng','2025-06-28 05:34:15',8),(78,'8u5ow0gffihmbt386la','assistant','Chào bạn, chúng tôi là đội ngũ hỗ trợ VLE','2025-06-28 05:34:15',8);
/*!40000 ALTER TABLE `chat_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhmuc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhmuc`
--

LOCK TABLES `danhmuc` WRITE;
/*!40000 ALTER TABLE `danhmuc` DISABLE KEYS */;
INSERT INTO `danhmuc` VALUES (1,'Tài khoản'),(2,'Chức năng'),(3,'Chung'),(4,'Kịch bản'),(5,'Khóa học'),(6,'Hệ thống'),(8,'Chào hỏi'),(9,'Thông tin email');
/*!40000 ALTER TABLE `danhmuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `danhmuc` int DEFAULT NULL,
  `cauhoi` varchar(255) DEFAULT NULL,
  `cautraloi` text,
  PRIMARY KEY (`id`),
  KEY `fk_danhmuc` (`danhmuc`),
  CONSTRAINT `fk_danhmuc` FOREIGN KEY (`danhmuc`) REFERENCES `danhmuc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,1,'Không nhớ mật khẩu VLE','Chào bạn, bạn vui lòng sử dụng chức năng \"Bạn đã quên mật khẩu\" hoặc \"Forgot password\" tại giao diện đăng nhập của hệ thống. Sau đó điền thông tin tài khoản và email sinh viên (mail outlook) mà trường đã cấp ở đầu năm học, hệ thống sẽ gửi đường link để bạn đặt lại mật khẩu mới. Bạn hãy làm theo hướng dẫn này để tự lấy lại mật khẩu nhé!'),(2,1,'Tài khoản đăng nhập không đúng','Chào bạn, bạn vui lòng kiểm tra lại tên tài khoản hoặc mật khẩu đã nhập đúng từng kí tự chưa, hoặc nếu chưa có tài khoản, bạn vui lòng liên hệ Phòng Công tác chính trị và Học sinh, sinh viên để được cấp nhé!'),(3,1,'Không đăng nhập được vào app VLE mobile','Hiện app đang trong quá trình nâng cấp, em đăng nhập trên trình duyệt để tham gia học tập nhé'),(4,1,'Không tìm thấy khóa học được gán','Nếu đó là học phần bạn đã đăng ký và học trên hệ thống VLE, bạn vui lòng chờ thông báo qua email outlook, thầy/cô sẽ gửi thông tin về khóa học và thời hạn qua email đó bạn nhé! Tuy nhiên, bạn hãy chủ động hỏi các bạn cùng lớp hoặc giảng viên phụ trách nếu đã bắt đầu vào học kì nhưng mình vẫn chưa thấy khóa học. Có thể do bạn đăng ký sau đợt mà thầy cô chưa nhận được thông tin để gán khóa học cho bạn.'),(5,1,'Khóa học hết hạn nên không thể học tiếp','Để gia hạn khóa học, vui lòng liên hệ giảng viên để xin gia hạn.\r\nNếu giảng viên chấp nhận, đề nghị giảng viên gửi email về cho phòng CNTT'),(6,5,'Không tìm thấy học liệu của khóa học','Sinh viên vui lòng chụp minh chứng vấn đề gặp phải và gửi mail về phongcntt@hcmue.edu.vn để thầy/cô hỗ trợ'),(7,4,'Không thực hiện được bài kiểm tra vì hệ thống báo hết số lần thực hiện','Đây là kịch bản sư phạm mà giảng viên xây dựng khóa đã tạo, bạn vui lòng liên hệ giảng viên phụ trách lớp để được giải đáp chi tiết'),(8,2,'Thầy/Cô cho phép em làm lại bài kiểm tra vì em đang làm thì bị lỗi nên văng ra chưa kịp bấm nộp bài (submit)','Em gửi email về phongcntt@hcmue.edu.vn trình bày vấn đề gặp phải và có đính kèm ảnh chụp màn hình lỗi càng tốt để thầy/cô phòng CNTT hỗ trợ em'),(9,2,'Em bấm nộp nhưng hệ thống vẫn không chấp nhận','Sau khi bấm submit lần 1, hệ thống sẽ hiển thị dòng thông báo yêu cầu người học kiểm tra lại bài làm của mình một lần nữa để chắc chắn trước khi nộp bài, em lưu ý nhé'),(10,3,'Khi nào hệ thống bảo trì xong để em có thể tiếp tục học','Chào em, hệ thống chỉ bảo trì mặc định trong khoảng thời gian 00h đến 06h sáng hằng ngày, còn các thời gian khác có thể hệ thống chỉ bảo trì từ 1 đến 2 phút nên em có thể vào lại ngay nếu truy cập ngoài thời gian bảo trì mặc định.'),(11,2,'Em đã làm các hoạt động bắt buộc nhưng đến hoạt động tiếp theo bị khóa và không thể mở được','Em cần phải làm tuần tự từ trên xuống để các hoạt động bị khóa được mở lần lượt'),(12,2,'Phần nút tam giác bắt đầu bài làm của em đều bị ẩn hết, không thể thao tác được','Em vui lòng xem còn hoạt động nào ở trên chưa làm hay không'),(13,2,'Hôm trước em đang làm bài thì hệ thống tự out ra ngoài và không cho e làm lại do bị giới hạn chỉ 1 lần làm ạ. Nếu không làm được bài quiz thì em sẽ không được nộp các bài ở dưới và đánh giá hoàn thành khóa học ạ.','Em gửi email về phongcntt@hcmue.edu.vn trình bày vấn đề gặp phải và có đính kèm ảnh chụp màn hình lỗi càng tốt để thầy/cô phòng CNTT hỗ trợ em'),(14,4,'Em muốn biết khóa học này tính điểm như thế nào ạ','Chào em, em vui lòng liên hệ giảng viên phụ trách để thầy/cô giải thích chi tiết cho nhé'),(15,1,'Em muốn được cấp tài khoản thì như thế nào ạ','Chào em, hiện tại trường chỉ cấp cho đối tượng là người học của trường, chưa có chính sách cấp tài khoản cho đối tượng khác em nhé!'),(16,6,'Hệ thống load lâu và em bị out ra ngoài không học tiếp được','Chào em, hiện tại đang có quá nhiều người cùng truy cập nên hệ thống sẽ tải chậm, em có thể quay lại sau hoặc học ở khoảng thời gian khác em nhé!'),(17,5,'Em có đăng ký học phần Pháp luật đại cương nhưng chưa thấy trên tài khoản ạ','Chào em, khi có lớp học trên VLE chúng tôi sẽ gửi email thông báo nhé, em kiểm tra email sinh viên (hộp thư đến hoặc spam) đã có nhận thông báo hay chưa, nếu chưa thì khóa học đang trong giai đoạn triển khai chưa gán lớp nên em chờ thông báo nhé.'),(18,5,'Em thấy các bạn cùng lớp đã có lớp rồi ạ','Em gửi email về cho hotrovle@hcmue.edu.vn để bộ phận hỗ trợ xem là vấn đề ở đâu nhé.'),(19,1,'Làm sao lấy lại được mật khẩu','Chào bạn, bạn vui lòng sử dụng chức năng \"Bạn đã quên mật khẩu\" hoặc \"Forgot password\" tại giao diện đăng nhập của hệ thống. Sau đó điền thông tin tài khoản và email sinh viên (mail outlook) mà trường đã cấp ở đầu năm học, hệ thống sẽ gửi đường link để bạn đặt lại mật khẩu mới. Bạn hãy làm theo hướng dẫn này để tự lấy lại mật khẩu nhé!'),(23,8,'Dạ em chào thầy cô ạ','Chào bạn, chúng tôi là đội ngũ hỗ trợ VLE'),(24,5,'Khi nào khóa học của em mới hết hạn ạ','Trong giao diện My course có hiển thị, em xem trong từng ô hiển thị khóa học tương ứng nhé!'),(25,9,'Dạ thầy có email của thầy Huỳnh Văn Sơn dạy môn Nhập môn nghề giáo không ạ','Nếu giảng viên có thực hiện hướng dẫn trên các khóa học trên VLE thì thông tin email sẽ hiện ở gốc dưới bên phải giao diện khóa học em nhé!'),(26,9,'Em muốn xin email của giảng viên ạ','Nếu giảng viên có thực hiện hướng dẫn trên các khóa học trên VLE thì thông tin email sẽ hiện ở gốc dưới bên phải giao diện khóa học em nhé!'),(27,9,'Thầy có email của cô My dạy môn tâm lý học không ạ','Nếu giảng viên có thực hiện hướng dẫn trên các khóa học trên VLE thì thông tin email sẽ hiện ở gốc dưới bên phải giao diện khóa học em nhé!');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sesion_key` varchar(255) DEFAULT NULL,
  `cauhoi` text,
  `cautraloi` text,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `danhmuc` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapping_data`
--

DROP TABLE IF EXISTS `mapping_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mapping_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_id` int NOT NULL,
  `chat_history_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `data_id` (`data_id`),
  KEY `chat_history_id` (`chat_history_id`),
  CONSTRAINT `mapping_data_ibfk_1` FOREIGN KEY (`data_id`) REFERENCES `data` (`id`),
  CONSTRAINT `mapping_data_ibfk_2` FOREIGN KEY (`chat_history_id`) REFERENCES `chat_history` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping_data`
--

LOCK TABLES `mapping_data` WRITE;
/*!40000 ALTER TABLE `mapping_data` DISABLE KEYS */;
INSERT INTO `mapping_data` VALUES (1,27,67,'2025-06-26 09:12:05'),(2,27,69,'2025-06-26 09:12:05');
/*!40000 ALTER TABLE `mapping_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mannminh','$2a$12$8m5UAyTnqbP3za2eKm/UgO8N01HwxhjOvxamVf9QvM4CI7IWLUX8a');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-28 13:45:09
