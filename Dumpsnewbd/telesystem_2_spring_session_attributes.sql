-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: midatabase.mysql.database.azure.com    Database: telesystem_2
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `spring_session_attributes`
--

DROP TABLE IF EXISTS `spring_session_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session_attributes`
--

LOCK TABLES `spring_session_attributes` WRITE;
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
INSERT INTO `spring_session_attributes` VALUES ('1328a372-be98-4c9d-95e1-3b79a4ba5155','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '�\�\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\�\�/��\�\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$1ec793d4-b16d-4069-af99-0551021adfa8'),('1328a372-be98-4c9d-95e1-3b79a4ba5155','SPRING_SECURITY_CONTEXT',_binary '�\�\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0pacientexq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0	127.0.0.1t\0$b8820f23-0068-4a24-b161-1a8d2d688bfcpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP��\�[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0leonardo@example.com'),('1328a372-be98-4c9d-95e1-3b79a4ba5155','usuario',_binary '�\�\0sr\0%com.example.medicaltec.Entity.Usuario�<\�yu�m�\0L\0apellidot\0Ljava/lang/String;L\0ceduladoctorq\0~\0L\0\ncontrasenaq\0~\0L\0	direccionq\0~\0L\0emailq\0~\0L\0enabledt\0Ljava/lang/Boolean;L\0especialidadesIdEspecialidadt\0-Lcom/example/medicaltec/Entity/Especialidade;L\0estadosIdestadot\0&Lcom/example/medicaltec/Entity/Estado;L\0fechaNacimientoq\0~\0L\0 historialmedicoIdhistorialmedicot\0/Lcom/example/medicaltec/Entity/Historialmedico;L\0idq\0~\0L\0\nmodooscuroq\0~\0L\0modoregistroq\0~\0L\0nombreq\0~\0L\0rolesIdrolest\0$Lcom/example/medicaltec/Entity/Role;L\0sedesIdsedest\0$Lcom/example/medicaltec/Entity/Sede;L\0segurosIdSegurot\0&Lcom/example/medicaltec/Entity/Seguro;L\0sexoq\0~\0L\0telefonoq\0~\0xpt\0Abantopt\0<$2a$10$f15cLQLhYu98NIvGgWiObew44qWKdFgwSNw0yrDsw0zZU5pwxSrS2t\0\n456 Oak Stt\0leonardo@example.comsr\0java.lang.Boolean\� r�՜�\�\0Z\0valuexppsr\0$com.example.medicaltec.Entity.Estadoy`e��S2\Z\0L\0idt\0Ljava/lang/Integer;L\0nombreq\0~\0xpsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0t\0activot\0\n05-06-2000sr\0-com.example.medicaltec.Entity.Historialmedico\����\���\0L\0idq\0~\0L\0segurosIdSeguroq\0~\0L\0validahistorialq\0~\0xpsq\0~\0\0\0\0sr\0$com.example.medicaltec.Entity.Seguro�J\���E\0L\0idq\0~\0L\0nombreSeguroq\0~\0L\0\nporcDoctorq\0~\0L\0\nporcSeguroq\0~\0xpsq\0~\0\0\0\0t\0\nPlan Saludt\080%t\010%q\0~\0t\023456789sq\0~\0\0t\0invitadot\0Leonardosr\0\"com.example.medicaltec.Entity.Role�\�>#�AU�\0L\0idq\0~\0L\0	nombreRolq\0~\0xpsq\0~\0\0\0\0t\0pacientesr\0\"com.example.medicaltec.Entity.SedetX�Z+�\�\0L\0consultoriosq\0~\0L\0	direccionq\0~\0L\0idq\0~\0L\0latitudt\0Ljava/lang/Double;L\0longitudq\0~\0*L\0nombreq\0~\0L\0pisosq\0~\0L\0torresq\0~\0xpq\0~\0t\0C. 1 199, Lima 15304q\0~\0sr\0java.lang.Double��\�J)k�\0D\0valuexq\0~\0�\'\�\�$$�wsq\0~\0-�SD�T\��,t\0Sede Los Olivosq\0~\0q\0~\0sq\0~\0sq\0~\0\0\0\0t\0Pacifico EPSt\060%t\010%t\0Mt\0	912337887'),('84d88900-1d89-454d-99d5-bab0bc19cd27','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '�\�\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\�\�/��\�\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$6798d53c-65f3-4357-8212-40bd8c89058f'),('84d88900-1d89-454d-99d5-bab0bc19cd27','SPRING_SECURITY_CONTEXT',_binary '�\�\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0doctorxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0$d9adb4b3-5950-4ec3-974f-16e469ef5ad2psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP��\�[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0hiroshi@example.com'),('84d88900-1d89-454d-99d5-bab0bc19cd27','usuario',_binary '�\�\0sr\0%com.example.medicaltec.Entity.Usuario�<\�yu�m�\0L\0apellidot\0Ljava/lang/String;L\0ceduladoctorq\0~\0L\0\ncontrasenaq\0~\0L\0	direccionq\0~\0L\0emailq\0~\0L\0enabledt\0Ljava/lang/Boolean;L\0especialidadesIdEspecialidadt\0-Lcom/example/medicaltec/Entity/Especialidade;L\0estadosIdestadot\0&Lcom/example/medicaltec/Entity/Estado;L\0fechaNacimientoq\0~\0L\0 historialmedicoIdhistorialmedicot\0/Lcom/example/medicaltec/Entity/Historialmedico;L\0idq\0~\0L\0\nmodooscuroq\0~\0L\0modoregistroq\0~\0L\0nombreq\0~\0L\0rolesIdrolest\0$Lcom/example/medicaltec/Entity/Role;L\0sedesIdsedest\0$Lcom/example/medicaltec/Entity/Sede;L\0segurosIdSegurot\0&Lcom/example/medicaltec/Entity/Seguro;L\0sexoq\0~\0L\0telefonoq\0~\0xpt\0Giotokut\0AE32423t\0<$2a$10$nOCoA77g9M3TtnqtIrMBsusAwv/b0j29L1pLHfbIzNBAJluQShpZSt\0123 Main Stt\0hiroshi@example.comsr\0java.lang.Boolean\� r�՜�\�\0Z\0valuexpsr\0+com.example.medicaltec.Entity.Especialidadef\��gǘ1\0L\0idt\0Ljava/lang/Integer;L\0nombreEspecialidadq\0~\0xpsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0t\0Neurologíasr\0$com.example.medicaltec.Entity.Estadoy`e��S2\Z\0L\0idq\0~\0L\0nombreq\0~\0xpsq\0~\0\0\0\0t\0activot\0\n23-08-1994pt\012345678sq\0~\0\0pt\0Hidekisr\0\"com.example.medicaltec.Entity.Role�\�>#�AU�\0L\0idq\0~\0L\0	nombreRolq\0~\0xpq\0~\0\Zt\0doctorsr\0\"com.example.medicaltec.Entity.SedetX�Z+�\�\0L\0consultoriosq\0~\0L\0	direccionq\0~\0L\0idq\0~\0L\0latitudt\0Ljava/lang/Double;L\0longitudq\0~\0$L\0nombreq\0~\0L\0pisosq\0~\0L\0torresq\0~\0xpsq\0~\0\0\0\0t\0C. 1 199, Lima 15304q\0~\0\Zsr\0java.lang.Double��\�J)k�\0D\0valuexq\0~\0�\'\�\�$$�wsq\0~\0(�SD�T\��,t\0Sede Los Olivosq\0~\0&q\0~\0\Zpt\0Mt\0	123456789'),('a441e3ca-3e74-4fb1-9038-d94e334f0268','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '�\�\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\�\�/��\�\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$6b6cf6e5-9a0d-40b0-a5cf-1df29dc710c4'),('a9580559-01db-44e2-98ca-264af2b21ef7','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '�\�\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\�\�/��\�\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$9e28dc07-d92a-42d2-b5dc-eabf4d6ad9f8'),('a9580559-01db-44e2-98ca-264af2b21ef7','SPRING_SECURITY_CONTEXT',_binary '�\�\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0pacientexq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0$f4a50efb-aaea-48a3-883d-7f8a6f51e5f0psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP��\�[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0leonardo@example.com'),('a9580559-01db-44e2-98ca-264af2b21ef7','usuario',_binary '�\�\0sr\0%com.example.medicaltec.Entity.Usuario�<\�yu�m�\0L\0apellidot\0Ljava/lang/String;L\0ceduladoctorq\0~\0L\0\ncontrasenaq\0~\0L\0	direccionq\0~\0L\0emailq\0~\0L\0enabledt\0Ljava/lang/Boolean;L\0especialidadesIdEspecialidadt\0-Lcom/example/medicaltec/Entity/Especialidade;L\0estadosIdestadot\0&Lcom/example/medicaltec/Entity/Estado;L\0fechaNacimientoq\0~\0L\0 historialmedicoIdhistorialmedicot\0/Lcom/example/medicaltec/Entity/Historialmedico;L\0idq\0~\0L\0\nmodooscuroq\0~\0L\0modoregistroq\0~\0L\0nombreq\0~\0L\0rolesIdrolest\0$Lcom/example/medicaltec/Entity/Role;L\0sedesIdsedest\0$Lcom/example/medicaltec/Entity/Sede;L\0segurosIdSegurot\0&Lcom/example/medicaltec/Entity/Seguro;L\0sexoq\0~\0L\0telefonoq\0~\0xpt\0Abantopt\0<$2a$10$f15cLQLhYu98NIvGgWiObew44qWKdFgwSNw0yrDsw0zZU5pwxSrS2t\0\n456 Oak Stt\0leonardo@example.comsr\0java.lang.Boolean\� r�՜�\�\0Z\0valuexppsr\0$com.example.medicaltec.Entity.Estadoy`e��S2\Z\0L\0idt\0Ljava/lang/Integer;L\0nombreq\0~\0xpsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0t\0activot\0\n05-06-2000sr\0-com.example.medicaltec.Entity.Historialmedico\����\���\0L\0idq\0~\0L\0segurosIdSeguroq\0~\0L\0validahistorialq\0~\0xpsq\0~\0\0\0\0sr\0$com.example.medicaltec.Entity.Seguro�J\���E\0L\0idq\0~\0L\0nombreSeguroq\0~\0L\0\nporcDoctorq\0~\0L\0\nporcSeguroq\0~\0xpsq\0~\0\0\0\0t\0\nPlan Saludt\080%t\010%q\0~\0t\023456789sq\0~\0\0t\0invitadot\0Leonardosr\0\"com.example.medicaltec.Entity.Role�\�>#�AU�\0L\0idq\0~\0L\0	nombreRolq\0~\0xpsq\0~\0\0\0\0t\0pacientesr\0\"com.example.medicaltec.Entity.SedetX�Z+�\�\0L\0consultoriosq\0~\0L\0	direccionq\0~\0L\0idq\0~\0L\0latitudt\0Ljava/lang/Double;L\0longitudq\0~\0*L\0nombreq\0~\0L\0pisosq\0~\0L\0torresq\0~\0xpq\0~\0t\0C. 1 199, Lima 15304q\0~\0sr\0java.lang.Double��\�J)k�\0D\0valuexq\0~\0�\'\�\�$$�wsq\0~\0-�SD�T\��,t\0Sede Los Olivosq\0~\0q\0~\0sq\0~\0sq\0~\0\0\0\0t\0Pacifico EPSt\060%t\010%t\0Mt\0	912337887'),('a986765b-a854-4925-b316-a4ce640e5996','SPRING_SECURITY_SAVED_REQUEST',_binary '�\�\0sr\0Aorg.springframework.security.web.savedrequest.DefaultSavedRequest\0\0\0\0\0\0X\0I\0\nserverPortL\0contextPatht\0Ljava/lang/String;L\0cookiest\0Ljava/util/ArrayList;L\0headerst\0Ljava/util/Map;L\0localesq\0~\0L\0matchingRequestParameterNameq\0~\0L\0methodq\0~\0L\0\nparametersq\0~\0L\0pathInfoq\0~\0L\0queryStringq\0~\0L\0\nrequestURIq\0~\0L\0\nrequestURLq\0~\0L\0schemeq\0~\0L\0\nserverNameq\0~\0L\0servletPathq\0~\0xp\0\0�t\0\0sr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0\0w\0\0\0\0xsr\0java.util.TreeMap��>-%j\�\0L\0\ncomparatort\0Ljava/util/Comparator;xpsr\0*java.lang.String$CaseInsensitiveComparatorw\\}\\P\�\�\0\0xpw\0\0\0\nt\0acceptsq\0~\0\0\0\0w\0\0\0t\0*/*xt\0accept-encodingsq\0~\0\0\0\0w\0\0\0t\0gzip, deflate, brxt\0accept-languagesq\0~\0\0\0\0w\0\0\0t\0en-US,en;q=0.5xt\0\nconnectionsq\0~\0\0\0\0w\0\0\0t\0\nkeep-alivext\0dntsq\0~\0\0\0\0w\0\0\0t\01xt\0hostsq\0~\0\0\0\0w\0\0\0t\0localhost:8080xt\0sec-fetch-destsq\0~\0\0\0\0w\0\0\0t\0emptyxt\0sec-fetch-modesq\0~\0\0\0\0w\0\0\0t\0no-corsxt\0sec-fetch-sitesq\0~\0\0\0\0w\0\0\0t\0same-originxt\0\nuser-agentsq\0~\0\0\0\0w\0\0\0t\0FMozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/113.0xxsq\0~\0\0\0\0w\0\0\0sr\0java.util.Locale~�`�0�\�\0I\0hashcodeL\0countryq\0~\0L\0\nextensionsq\0~\0L\0languageq\0~\0L\0scriptq\0~\0L\0variantq\0~\0xp����t\0USq\0~\0t\0enq\0~\0q\0~\0xsq\0~\0,����q\0~\0q\0~\0q\0~\0/q\0~\0q\0~\0xxt\0continuet\0GETsq\0~\0pw\0\0\0\0xppt\0/paciente/agendarCitat\0*http://localhost:8080/paciente/agendarCitat\0httpt\0	localhostt\0/paciente/agendarCita'),('ad3472de-f303-48ae-8742-13a907a1a88e','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '�\�\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\�\�/��\�\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$fa21efda-954d-46d2-b114-4d0c5859fb5b'),('ad3472de-f303-48ae-8742-13a907a1a88e','SPRING_SECURITY_CONTEXT',_binary '�\�\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0administrativoxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0$dfb49284-647e-401e-a3a9-88c2fb0b9c46psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP��\�[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0lucho@example.com'),('ad3472de-f303-48ae-8742-13a907a1a88e','usuario',_binary '�\�\0sr\0%com.example.medicaltec.Entity.Usuario�<\�yu�m�\0L\0apellidot\0Ljava/lang/String;L\0ceduladoctorq\0~\0L\0\ncontrasenaq\0~\0L\0	direccionq\0~\0L\0emailq\0~\0L\0enabledt\0Ljava/lang/Boolean;L\0especialidadesIdEspecialidadt\0-Lcom/example/medicaltec/Entity/Especialidade;L\0estadosIdestadot\0&Lcom/example/medicaltec/Entity/Estado;L\0fechaNacimientoq\0~\0L\0 historialmedicoIdhistorialmedicot\0/Lcom/example/medicaltec/Entity/Historialmedico;L\0idq\0~\0L\0\nmodooscuroq\0~\0L\0modoregistroq\0~\0L\0nombreq\0~\0L\0rolesIdrolest\0$Lcom/example/medicaltec/Entity/Role;L\0sedesIdsedest\0$Lcom/example/medicaltec/Entity/Sede;L\0segurosIdSegurot\0&Lcom/example/medicaltec/Entity/Seguro;L\0sexoq\0~\0L\0telefonoq\0~\0xpt\0Ramospt\0<$2a$10$p4BhbiPhxp2aHR1gqUQRCeQQ0iYVYW9hqjY.Z9VlHyuj8CHFCeE2qt\0234 Main Avet\0lucho@example.comsr\0java.lang.Boolean\� r�՜�\�\0Z\0valuexppsr\0$com.example.medicaltec.Entity.Estadoy`e��S2\Z\0L\0idt\0Ljava/lang/Integer;L\0nombreq\0~\0xpsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0t\0activot\0\n05-06-2000pt\034185296sq\0~\0\0pt\0Luchosr\0\"com.example.medicaltec.Entity.Role�\�>#�AU�\0L\0idq\0~\0L\0	nombreRolq\0~\0xpsq\0~\0\0\0\0t\0administrativosr\0\"com.example.medicaltec.Entity.SedetX�Z+�\�\0L\0consultoriosq\0~\0L\0	direccionq\0~\0L\0idq\0~\0L\0latitudt\0Ljava/lang/Double;L\0longitudq\0~\0 L\0nombreq\0~\0L\0pisosq\0~\0L\0torresq\0~\0xpsq\0~\0\0\0\0t\0&Jirón Rufino Torrico 1200, Lima 15001q\0~\0sr\0java.lang.Double��\�J)k�\0D\0valuexq\0~\0�(6M霳sq\0~\0$�SBk\�*?t\0Sede Lima Centrosq\0~\0\0\0\0q\0~\0pt\0Mt\0	775555566'),('e0618119-070e-4694-ab55-654f0e40b1e0','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '�\�\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\�\�/��\�\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$2ede3934-d589-4eba-8afb-5651dca0a7a1'),('e0618119-070e-4694-ab55-654f0e40b1e0','SPRING_SECURITY_CONTEXT',_binary '�\�\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0\nsuperadminxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0$92f80f0c-28ba-479e-bec6-7fc8c590f1bapsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP��\�[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0a20201696@pucp.edu.pe'),('e0618119-070e-4694-ab55-654f0e40b1e0','usuario',_binary '�\�\0sr\0%com.example.medicaltec.Entity.Usuario�<\�yu�m�\0L\0apellidot\0Ljava/lang/String;L\0ceduladoctorq\0~\0L\0\ncontrasenaq\0~\0L\0	direccionq\0~\0L\0emailq\0~\0L\0enabledt\0Ljava/lang/Boolean;L\0especialidadesIdEspecialidadt\0-Lcom/example/medicaltec/Entity/Especialidade;L\0estadosIdestadot\0&Lcom/example/medicaltec/Entity/Estado;L\0fechaNacimientoq\0~\0L\0 historialmedicoIdhistorialmedicot\0/Lcom/example/medicaltec/Entity/Historialmedico;L\0idq\0~\0L\0\nmodooscuroq\0~\0L\0modoregistroq\0~\0L\0nombreq\0~\0L\0rolesIdrolest\0$Lcom/example/medicaltec/Entity/Role;L\0sedesIdsedest\0$Lcom/example/medicaltec/Entity/Sede;L\0segurosIdSegurot\0&Lcom/example/medicaltec/Entity/Seguro;L\0sexoq\0~\0L\0telefonoq\0~\0xpt\0\n Fernandezpt\0<$2a$10$34cTg9esf5Td8RMI9XgTBOQiuoGRqUrc/9iDp3eh.Xf8VjCZguufet\0Unidad Vecinal Mironest\0a20201696@pucp.edu.pesr\0java.lang.Boolean\� r�՜�\�\0Z\0valuexppsr\0$com.example.medicaltec.Entity.Estadoy`e��S2\Z\0L\0idt\0Ljava/lang/Integer;L\0nombreq\0~\0xpsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0t\0activot\0\n05-06-2000pt\073805736sq\0~\0\0pt\0Luis sr\0\"com.example.medicaltec.Entity.Role�\�>#�AU�\0L\0idq\0~\0L\0	nombreRolq\0~\0xpsq\0~\0\0\0\0t\0\nsuperadminsr\0\"com.example.medicaltec.Entity.SedetX�Z+�\�\0L\0consultoriosq\0~\0L\0	direccionq\0~\0L\0idq\0~\0L\0latitudt\0Ljava/lang/Double;L\0longitudq\0~\0 L\0nombreq\0~\0L\0pisosq\0~\0L\0torresq\0~\0xpsq\0~\0\0\0\0t\0C. 1 199, Lima 15304q\0~\0sr\0java.lang.Double��\�J)k�\0D\0valuexq\0~\0�\'\�\�$$�wsq\0~\0$�SD�T\��,t\0Sede Los Olivosq\0~\0\"q\0~\0pt\0Mt\0	940158637');
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26  0:04:51
