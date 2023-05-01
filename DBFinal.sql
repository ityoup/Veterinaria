-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: alumnos
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `imagenes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `ip` varchar(250) DEFAULT NULL,
  `continente` varchar(250) DEFAULT NULL,
  `pais` varchar(250) DEFAULT NULL,
  `region` varchar(250) DEFAULT NULL,
  `isp` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('192.168.40.118','Norteamérica','Estados Unidos','California','undefined'),('192.168.40.118','Norteamérica','Estados Unidos','California','undefined'),('192.168.40.118','Norteamérica','Estados Unidos','California','undefined'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('1','Norteamérica','Estados Unidos','California','Google LLC'),('1','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','Norteamérica','Estados Unidos','California','Google LLC'),('192.168.40.118','undefined','undefined','undefined','xd');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `login` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `token` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES ('https://grandvelasresorts--completo.sandbox.my.salesforce.com/','ticc@velasresorts.com.prod.completo','aSxoAclZ*@hHmTorKm63','VGKZxluMHPRDlZIAlyoWHbYK0');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokenOfficial`
--

DROP TABLE IF EXISTS `tokenOfficial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokenOfficial` (
  `login` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokenOfficial`
--

LOCK TABLES `tokenOfficial` WRITE;
/*!40000 ALTER TABLE `tokenOfficial` DISABLE KEYS */;
INSERT INTO `tokenOfficial` VALUES ('https://grandvelasresorts.my.salesforce.com/','ticc@velasresorts.com.prod','a97G&jy$yy1nKwc4','eyJpdiI6IjJTdW9helFYTFVGM3NhR2ZrZSsrYnc9PSIsInZhbHVlIjoiMkcwRU5CYWZ6czc2ZWdEUTBtbXhrZkpnV2hLWDNiYy83em1WYjZnTzJtUm5kZ0dyZHRwaEV6QXpQT3Ryc3kxTldxUW1pR2tHOEZncGtBV0NiTkZPNGZPcGRyM1B2NUpXU3RPSzVTRjlLejg1VWF1VE5pOU9BV3liR1E2MzluV2t6SzhBTXRoYlk4Rkp5Smt0TGYyaVlwS2JSL3ArYTMxWEpFazNycHRlcnRQSHFHeE40MThpOTBGZTlITlpNRHV4TzlmKzlYNFd5KysyWDhsY0o0SkRNREFLRzRsWEdDd1hBR3BKbEJ0eVh2dFZLMHhackx6cVBZcVdRQWtNNjV0LzEvNWNwUk53YzRaSk04a3k5U1VKTldqTGc5aVZpanhkWnZoY01xbjdhTTNmT1hPM08xa0pTQU0ra3ZUcTdIek04ZUQ2eWdiaDN2WVdYWFlmK0Z0cEYwa1BBVjA2cEhtekkzT0pGYXV0a1JWbm9hbVFHbmdLZTRTRHVRQXNKTWg0clJDM3p3SGx6OGRGM3c5eDJVd3BIRU9Fcng0UjFYaFFROG9YbHZzZzRJNUd5QXp1TFFrdy8zQkxWSnJ5NXpLK3VYZ3JjUWJXb25Jak95RHhTT2huakRIQ0FtNVQwa3lVdCthT0p0bCsxd0RFdm5EUm9JcjhrcnR4eFhZT0dCTUxDbTZ5R3dwVUdpQnViVVZjWWlwRTVRR1FrTGYwWHpoRkZFTGtKc1htdVZ1NGV2aWJnYzVya3YvRHdQdGxOQXNnOC9OemRxRDUyN3MzaXd4WjNkMDRKbGFrZlBSb0lwM0REcmwrYnpYVGFjVVVmUHhYaCtkdmhSc1ZUNW14d0taMXVobFR2M1U1ODNDeG9zeWZYS2s0Zm91VkIybE5tSGpIb3dTVzlUYkdBQ0NSYW1VYi9GOGV5MXZvNmFwMXhZa2E4YTBWdkE0WVB4V05pRzlNRzIxdmphZkl6TmV3MGswTy8yVkxXaEpkMVl2ZHplRFhYSEZKK1dkZGlUYXFlZGVBa2tXUFNxc1pJSW9PeGw1OFJWaGxHbVRicjQ1RWNUZmJwRU5PN2JHM00xLytGTWEwaG9RNmZrQ3RXS0JRaXpIT2E5YldoV1pRMTBDTzg2WS8wbHNsOXQ4RVM2cVlaSTdBQS80VWNvTUg0bWtucERzOWw1QmxPc1lXTVIwTU5SMWsyK1NQTE9nNm9OaGlGNkxMREtHSVZyTXRiR2llM2tBN3NSLzZXdUhUUXZRcjR6Y2hPZDlTTkVRaXptdm1vV0VZVUl6dTBkREJoNDh5L2QyaEtyKytBa3hsWG9hR3FjOEtEM3NaUXR1OHd1am9CN2hQNWFzczNtTTVXeE9wMVlJQllyd1dYbytvZW9zK0s2UWk5UTVFUUdrYzVOU1daZThydW02Sy9sOUxCYkVOcEFPTnRUcXFad0tXNjZCcFhlN1pod1NLVDhoR0NXMEgyUmJFUERiRksra3BmbVVVR1hNZjgxSXhqQUh3WksrT3JOZ3hCK0s5ZmdFQS9BWUh1ejNWZlcrWDM2cHFFalBIckEyUC9KS205NCtuSnNwTGVvRW15WHdwcFVSTENlbkpLeVR1REFmaXJ5U0VkNUg3YkdScDF1c3N5TFpNSnNIRjBFTXRNRjMwa091a3R3SzRMMk1yd2R0KzEzWTEyRy81cWwyZUhHRnpwZUJ5TTBWdCtXbHUwd0JhdEtvZHMrdWFSTlNOTkx3elFzb1g3UG9iMi9kOEg3a3dEMk5YOHRySWtJVk93WWdPWGxiUXdINzJ0aG9icVJ2Q0JWSGNRMUx6Z3VVckt2eDVFRkZyV1JpUVdIaDV3L25tTEZSaUFMY1B3a05qbmdscVRyNlJLYTBSdmg2Vk1WOEpXWng0MW5GeE1yNjJpWFFqR3E1bHM3Y1FHWE1NSjNicFU3V2trdjMweU5WVGl0enFHQXlPRFhpcUR2UnlkMFkrRktpSEVPeW93TmMzTmRzSkZCOHJRS0lkajNOaGdydUR2ajQ2SUdONnRDRzEvVUU5YnRPdVlHR0VlN0JlajVJOGVOMExSVXRiem5PcWw1djFOaWF3UGl5KzV3dlJqWTFPOG9UQnN5dXI3cHpWdzhWUkIvUkVHVUhYbXUyMFpEeURnRlV4M0Zsa0ExckN3K2I2MFY2bGt6OWdWZUMyZzRnbTZsbXVZU3p4cEFsdXhQY0ZpN2NYQUtpMWoxZlR0ajE1cWhFeG1RdGJja281aXpRbVJTZTAzUGlzN0JBd2dwMDA4YXNIZXNLQWdXTy8vWGNwRXVoNWtSSnpyVzhFWlNRTHg5UGlFUnZqSTdTWHVVVEFHNDl1aityS0hxMHJPYmF0Nkx3UmhQUEdqU0tLdE1Nc0MybjhPY1duNkNKSzB0Yy94R0xwUDlUTWs2TlFQTG1KWURzNjVEc0ZTc2w2b1VQWUQ4WC9NTFpwL1ZiUjdHRlBvSlpaS1plZGxLSVhoTFdFOU5qMElGc2pXUVZaek9PbXo1Q0lvQXR1SFZsdjdMWjY4VUpoaHM3RC9UUXBEVzk2dG5uYVc4TDB6WVNZUGtBZGlrOGFDNjZVUGZzODEvdGJkOU0yOTJEMjcydTVBbG53MHBPSHN6bzlyTVFLMU5kUkpMbW10RUtaSjl1SzBXZ0ovWlVEUmpZenk1NThxVTVBTHkvWHBhOHdZaVlsYUg5RFNGaUJDY1NOZHdsYTJyU3FOSFhNQkQ3S0xCUFh1N2ZlY3dDUFFORjNYalVKRVBqb2VuUU45ZXJhalJwUTVOY0dJamdaeW1tZEEybitDSk1UUE9qZVBpeVhZWkJjUVFQdWVIa0FBRTMrd3ozN3F0V0RZSndJd1haWjZoRkdoK1Q5aXVsVFk2Y1BTZlZQNWlWcS9UdnNiZ1ZqRENHYTQ3NmRna01wWEFySW80Y2lXRzd0aUp6TlVSUkZEMldjYU42dUI1czUzbDlkbTE5aUQ3Njh1NG4vZHljT0tqb0doanhlaC9PeFB2V1l4QStnaWZLRkptZllxSVhCT05LTjRtQ0NtMkc3cng0ajg5TmJ1ek8ra2w1QWNPeWJOTkY0V0lrMFlicEhLK0pWMkxQNExVcWFEeGlvZTVCUkVkZk1wRFBySlR2eWNvaUFhRjhQV1VZSm5EU2ZXbThiVGs4dVVqNVR0dXN0bVMveGhHMGdIcHFZelhxQU1lSEhvOXpVUko5Y05zWVpvTUE0eFgwRGZ0eU55UHQ3MFEvZ2JaazR6NFQxSksyQmkzWHpyaHJiQnhlSTFrYXJENFc0bnBuL2lyUlBQMHNuNmxJM3lwWmt5SER2b2pLYUV5Nkh6d2tXQmlybmFPdFlGNUJMcWNsQlhXaFEzdz09IiwibWFjIjoiNTdlYzhiOTk0MGE2MmE2Y2VjYjBmMDZjM2UyODg4NjJjY2M3ZTliM2Y5MzExMDBjODNhZjg5MzRkZTNmOTg5NiIsInRhZyI6IiJ9');
/*!40000 ALTER TABLE `tokenOfficial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05 23:50:30
