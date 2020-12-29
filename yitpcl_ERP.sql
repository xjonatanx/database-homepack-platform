-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-12-2020 a las 11:22:31
-- Versión del servidor: 10.2.36-MariaDB-cll-lve
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yitpcl_ERP`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despachos`
--

CREATE TABLE `despachos` (
  `id` int(11) NOT NULL,
  `rut_destinatario` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre_destinatario` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono_destinatario` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email_destinatario` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `detalle` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `numero_seguimiento` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `total` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `origen` int(11) NOT NULL,
  `destino` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `peso` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden_compra` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `qr` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `referencia` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(2000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `rut_remitente` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre_remitente` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono_remitente` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email_remitente` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion_remitente` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `retirado` tinyint(1) NOT NULL,
  `id_chofer` int(11) DEFAULT NULL,
  `barcode` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_pago` int(11) NOT NULL,
  `por_pagar` tinyint(1) NOT NULL,
  `entregado` tinyint(1) DEFAULT NULL,
  `centro_distribucion` tinyint(1) DEFAULT NULL,
  `a_destino` tinyint(1) DEFAULT NULL,
  `sobrancia` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `despachos`
--

INSERT INTO `despachos` (`id`, `rut_destinatario`, `nombre_destinatario`, `telefono_destinatario`, `email_destinatario`, `fecha_ingreso`, `detalle`, `numero_seguimiento`, `total`, `origen`, `destino`, `id_usuario`, `peso`, `orden_compra`, `qr`, `referencia`, `direccion`, `rut_remitente`, `nombre_remitente`, `telefono_remitente`, `email_remitente`, `direccion_remitente`, `retirado`, `id_chofer`, `barcode`, `id_pago`, `por_pagar`, `entregado`, `centro_distribucion`, `a_destino`, `sobrancia`) VALUES
(190, '150919029', 'OSCAR GUERRA ARANCIBIA', '976200056', 'logistica@bolomey.cl', '2020-12-15 11:27:48', 'VILLA MIRASOL', '1686154739230001', '4522', 29, 20, 37, '300', 'kiq330uj', 'temp/1686154739230001.png', 'SANTA MARIA', 'PSAJE LOS PIMIENTOS 222', '875903004', 'Carlos Bolomey SpA', '986802029', 'logistica@bolomey.cl', 'Aldunate 1539', 1, 28, 'barcode/1686154739230001.png', 135, 0, 1, 1, 1, 0),
(198, '72114485', 'RAUL PEREZ HIDALGO', '982882965', 'logistica@bolomey.cl', '2020-12-16 15:19:35', '1', '1686259919384869', '4000', 29, 20, 37, '', 'kirqsxtw', 'temp/1686259919384869.png', '1', 'YUNGAY 999,  SAN FELIPE', '72114485', 'CARLOS BOLOMEY SPA', '86802029', 'logistica@bolomey.cl', 'ALDUNATE 1539', 1, 38, 'barcode/1686259919384869.png', 144, 0, 1, 1, 1, 0),
(221, '102235266', 'OMAR GUERRA HERRERA', '989047726', 'LOGISTICA@BOLOMEY.CL', '2020-12-17 14:40:56', '1', '1686348084156507', '4000', 29, 19, 37, '', 'kit4v1uo', 'temp/1686348084156507.png', '1', 'RAUL VARGAS 695 CENTENARIO', '875903004', 'CARLOS BOLOMEY SPA', '986802029', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539 SANTIAGO', 1, 38, 'barcode/1686348084156507.png', 159, 0, 1, 1, 1, 0),
(222, '82094342', 'WALDO SALINAS VILLALOBOS', '992973213', 'LOGISTICA@BOLOMEY.CL', '2020-12-17 16:25:02', 'PARADERO 14', '1686354633615822', '4000', 29, 12, 37, '', 'kit8kx8i', 'temp/1686354633615822.png', '1', 'PSAJE HAROU 251 VILLA LOS FLORISTAS, LA CRUZ ', '875903004', 'CARLOS BOLOMEY SPA', '992973213', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539 SANTIAGO', 1, 38, 'barcode/1686354633615822.png', 160, 0, 1, 1, 1, 0),
(223, '123527275', 'JOSE VIDAL VERA', '991979622', 'LOGISTICA@BOLOMEY.CL', '2020-12-17 16:35:10', '1', '1686355271633000', '4000', 29, 5, 37, '', 'kit8xysc', 'temp/1686355271633000.png', '1', 'CALLE QUILLOTA 766, VIÃ‘A DEL MAR', '875903004', 'CARLOS BOLOMEY SPA', '986802029', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539, SANTIAGO', 1, 38, 'barcode/1686355271633000.png', 161, 0, 1, 1, 1, 0),
(224, '123527275', 'JOSE VIDAL VERA', '991979622', 'LOGISTICA@BOLOMEY.CL', '2020-12-17 16:35:11', '1', '1686355271763697', '4000', 29, 5, 37, '', 'kit8xysc', 'temp/1686355271763697.png', '1', 'CALLE QUILLOTA 766, VIÃ‘A DEL MAR', '875903004', 'CARLOS BOLOMEY SPA', '986802029', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539, SANTIAGO', 1, 38, 'barcode/1686355271763697.png', 161, 0, 1, 1, 1, 0),
(225, '92627381', 'JUAN DAVID VILLARROEL OLIVARES', '97030045', 'LOGISTICA@BOLOMEY.CL', '2020-12-18 13:10:42', 'SAN ESTEBAN', '1686433004450473', '4000', 29, 19, 37, '', 'kiuh2uc7', 'temp/1686433004450473.png', '1', 'AVDA. LIBERTAD 765, EL HIGUERAL, SAN ESTEBAN', '875903004', 'CARLOS BOLOMEY SPA', '986802029', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539, SANTIAGO', 1, 38, 'barcode/1686433004450473.png', 162, 0, 1, 1, 1, 0),
(226, '129513047', 'ALDO ELIER DELGADO TAPIA', '962751344', 'LOGISTICA@BOLOMEY.CL', '2020-12-18 13:20:44', '1', '1686433635805923', '4000', 29, 15, 37, '', 'kiuhfqzj', 'temp/1686433635805923.png', 'HIJUELAS', 'LOTE 1E-C MAITENES DE OCOA, HIJUELAS', '875903004', 'CARLOS BOLOMEY SPA', '986802029', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539, SANTIAGO', 1, 38, 'barcode/1686433635805923.png', 163, 0, 1, 1, 1, 0),
(227, '14595451-7', 'KELLY CONTRERAS ESCOBAR', '+56965545582', 'NO@NO.CL', '2020-12-18 15:22:57', 'ROPA', '1686441325151036', '4000', 29, 7, 43, '', 'kiulpd1i', 'temp/1686441325151036.png', 'TRONCOS VIEJOS', 'PSJ WAGNER 1739 TRONCOS VIEJOS', '166608937', 'Heber RÃ­os MuÃ±oz', '9222154845', 'NO@NO.CL', 'AVENIDA BUZETA 3558 BODEGA 48, ESTACION CENTRAL', 1, 38, 'barcode/1686441325151036.png', 164, 0, 1, 1, 1, 0),
(231, '18257998-k', 'Alexandra Castro', '988936422', 'alexandracastroponce@gmail.com', '2020-12-18 19:01:10', 'Productos de Dermocosmetica', '1686455054110204', '3689', 29, 9, 42, '0', 'kiuthscf', 'temp/1686455054110204.png', 'no aplica', 'Sitio 29, santa rosa Limache', '16952018-6', 'Yasna Villarroel', '975539691', 'yasna.cvl@gmail.com', 'La diocesis 816 casa b, Pudahuel', 1, 20, 'barcode/1686455054110204.png', 168, 0, 1, 1, 1, 0),
(234, '16000030-9', 'Francoise Lauga ', '990875209', 'Francoiselauga@gmail.com', '2020-12-20 14:16:22', 'Juguete', '1686618329347089', '4000', 29, 11, 44, '', 'kixaus8t', 'temp/1686618329347089.png', 'Taller', 'La concepciÃ³n 557', '13970782-6', 'Paula vera', '995193741', 'dreamstoyschile@gmail.com', 'Pablo Picasso 1250 Huechuraba', 1, 20, 'barcode/1686618329347089.png', 171, 0, 1, 1, 1, 0),
(241, '17454416-6', 'Liliana Farias', '976155912', 'liliana.f.p@hotmail.com', '2020-12-21 15:58:40', 'cosmeticos ', '1686715363152319', '4000', 29, 23, 45, '', 'kiyxaapo', 'temp/1686715363152319.png', 'orden 6410', 'pasaje los trigales 1463 villa el trigal, san antonio', '772047533', 'Que Coreana SpA', '975539691', 'yasna.cvl@gmail.com', 'la diocesis 816 casa b, pudahuel', 1, 20, 'barcode/1686715363152319.png', 178, 0, 1, 1, 1, 0),
(242, '18900669-1', 'jorge gil', '976086213', 'dead_brother@hotmail.com', '2020-12-21 16:05:14', 'cosmetico', '1686715775874680', '4000', 29, 16, 45, '', 'kiyxiqir', 'temp/1686715775874680.png', 'orden 6887', 'Manuel HernÃ¡ndez #857, la ligua', '772047533', 'Que Coreana SpA', '975539691', 'yasna.cvl@gmail.com', 'la diocesis 816 casa b, pudahuel', 1, 20, 'barcode/1686715775874680.png', 179, 0, 1, 1, 1, 0),
(243, '17977884k', 'paula solis', '987501840', 'solis.paula22@gmail.com', '2020-12-21 16:09:55', 'cosmetico', '1686716069904634', '4000', 29, 5, 45, '', 'kiyxoqwl', 'temp/1686716069904634.png', 'orden 6801', 'viana 967 , dpto 409, VIÃ‘A DEL MAR', '772047533', 'QUE COREANA SPA', '973339691', 'yasna.cvl@gmail.com', 'la diocesis 816 casa b, pudahuel', 1, 20, 'barcode/1686716069904634.png', 180, 0, 1, 1, 1, 0),
(244, '16702371-1', 'Scarlett vial mayer', '994094986', 'Scarlettvialmayer5@gmail.com', '2020-12-21 16:15:02', 'cosmetico', '1686716392648181', '4000', 29, 20, 45, '', 'kiyxvce5', 'temp/1686716392648181.png', 'orden 6837', 'Villa Argelia avda chile#1126 san Felipe', '772047533', 'QUE COREANA SPA', '973339691', 'yasna.cvl@gmail.com', 'la diocesis 816 casa b, pudahuel', 1, 20, 'barcode/1686716392648181.png', 181, 0, 1, 1, 1, 0),
(245, '18562441-2', 'Jacqueline Concha', '976155197', 'no@no.cl', '2020-12-21 16:45:15', 'ok', '1686718293340862', '4000', 29, 20, 43, '', 'kiyyyre6', 'temp/1686718293340862.png', 'ok', 'papa leon V 400 Juan Pablo II', '11111111-1', 'MAROE', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 20, 'barcode/1686718293340862.png', 182, 0, 1, 1, 1, 0),
(246, '15099836-0', 'PAMELA ARANCIBIA', '+56950235877', 'NO@NO.CL', '2020-12-21 16:45:15', 'OK', '1686718293447464', '4000', 29, 6, 43, '', 'kiyyyre6', 'temp/1686718293447464.png', 'OK', 'CALLE TOQUI 2450 COND ALTO PEÃ‘UELAS 1 CASA 22', '11111111-1', 'MAROE', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 20, 'barcode/1686718293447464.png', 182, 0, 1, 1, 1, 0),
(247, '15851041-3', 'GISSELA PACHECO', '+56979040859', 'NO@NO.CL', '2020-12-21 16:45:15', 'OK', '1686718293525806', '4000', 29, 9, 43, '', 'kiyyyre6', 'temp/1686718293525806.png', 'OK', 'VILLA QUERONQUE BLOQUE 17 DPTO 3 , LIMACHE', '11111111-1', 'MAROE', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 20, 'barcode/1686718293525806.png', 182, 0, 1, 1, 1, 0),
(248, '209597446', 'DANIELA SANDOVAL', '+56972711922', 'NO@NO.CL', '2020-12-21 16:45:15', 'VILLA ALEMANA', '1686718293642142', '4000', 29, 7, 43, '', 'kiyyyre6', 'temp/1686718293642142.png', 'OK', 'HUANHUALI 509 B', '11111111-1', 'MAROE', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 20, 'barcode/1686718293642142.png', 182, 0, 1, 1, 1, 0),
(249, '113294345', 'ISABEL MATURANA', '56966830514', 'NO@NO.CL', '2020-12-21 16:45:15', 'LA LIGUA', '1686718293704925', '4000', 29, 16, 43, '', 'kiyyyre6', 'temp/1686718293704925.png', 'OK', 'CALLE MIRAFLORES S/N VALLE HERMOSO ', '11111111-1', 'MAROE', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 20, 'barcode/1686718293704925.png', 182, 0, 1, 1, 1, 0),
(250, '131353561', 'XIMENA ZARETE', '+56965782334', 'NO@NO.CL', '2020-12-21 16:45:15', 'CONCON', '1686718293800767', '4000', 29, 2, 43, '', 'kiyyyre6', 'temp/1686718293800767.png', 'OK', 'CALLE RIO BIO BIO 315 ', '11111111-1', 'MAROE', '5622222222', 'NO@NO.CL', 'SANTIAGO', 1, 20, 'barcode/1686718293800767.png', 182, 0, 1, 1, 1, 0),
(251, '000000000', 'GLADYS JAURE BASAEZ', '56988997827', 'NO@NO.CL', '2020-12-21 16:54:45', 'OK', '1686718890789445', '4000', 29, 3, 43, '', 'kiyzaz3h', 'temp/1686718890789445.png', 'OK', 'POBLACION MUNICIPAL CASA 64 E', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 20, 'barcode/1686718890789445.png', 183, 0, 1, 1, 1, 0),
(253, '77004932-6', 'ingenieria y mantencion ibaceta y hermanos limitada', '+56989786733', 'servicios@grupoibaceta.com', '2020-12-21 18:37:52', 'retiro despues de medio dia', '1686725378304723', '5593', 29, 19, 47, '1200', 'kiz2z071', 'temp/1686725378304723.png', 'lugar de destino se encuentra un punto de reciclaje', 'La chaparrina #362, san esteban , los andes', '78706540-6', 'MIGUEL JACOB HELO', '+56225698050', 'sjacob@mjh.cl', 'San ignacio 568 - Santiago Centro', 1, 38, 'barcode/1686725378304723.png', 185, 0, 1, 1, 1, 0),
(255, '77004932-6', 'ingenieria y mantencion ibaceta y hermanos limitada', '+56989786733', 'servicios@grupoibaceta.com', '2020-12-22 09:44:04', 'repuesto automotriz', '1686782392006141', '4522', 29, 19, 47, '300', 'kizz2ixz', 'temp/1686782392006141.png', 'en lugar de destino se encuentra un punto de reciclaje', 'La chaparrina #362, san esteban , los andes', '76303540-9', 'korea multimotriz ltda', '+56226343626', 'berzabegallardoe@gmail.com', 'avenida 10 de julio huamachuco, santiago centro', 1, 38, 'barcode/1686782392006141.png', 187, 0, 1, 1, 1, 0),
(256, '18878552-2', 'Nicole LÃ³pez Arancibia', '993284646', 'n.lopezarancibia@hotmail.com', '2020-12-22 12:55:01', 'cosmetico', '1686794404920548', '4000', 29, 13, 45, '', 'kj067x8k', 'temp/1686794404920548.png', 'o', 'Lord Cochrane 482', '772047533', 'QUE COREANA SPA', '973339691', 'yasna.cvl@gmail.com', 'la diocesis 816 casa b, pudahuel', 1, 38, 'barcode/1686794404920548.png', 188, 0, 1, 1, 1, 0),
(257, '16487836-8', 'Nicole arancibia', '990181432', 'Navergara22@gmail.com', '2020-12-22 12:56:30', 'cosmetico', '1686794498931719', '4000', 29, 1, 45, '', 'kj069ulu', 'temp/1686794498931719.png', 'cerro toro', 'camino quebrada verde 56 ', '772047533', 'QUE COREANA SPA', '973339691', 'yasna.cvl@gmail.com', 'la diocesis 816 casa b, pudahuel', 1, NULL, 'barcode/1686794498931719.png', 189, 0, 1, 1, 1, 0),
(260, '16852708K', 'VICTOR LUENGO ARIAS', '964286951', 'LOGISTICA@BOLOMEY.CL', '2020-12-22 14:37:12', '1', '1686800833930805', '4000', 29, 19, 37, '', 'kj09y3lv', 'temp/1686800833930805.png', '1', 'JUAN DE DIOS AGUIRRE 1888, BARRIO PARAGUAL, LOS ANDES', '875903004', 'CARLOS BOLOMEY SPA', '223470600', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539', 1, 38, 'barcode/1686800833930805.png', 192, 0, 1, 1, 1, 0),
(262, '20529320-5', 'JOCELIN OLIVARES', '+56 9 9845 7749', 'boris.cortez@maroe.cl', '2020-12-22 16:40:23', 'Orden 12524', '1686808584178706', '4000', 29, 13, 43, '', 'kj0e7s3n', 'temp/1686808584178706.png', '12524', 'POB MANUEL RODRIGUEZ PAU MANUEL MONTT 450', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 38, 'barcode/1686808584178706.png', 194, 0, 1, 1, 1, 0),
(263, '20529321-3', 'JESENIA OLIVARES', '+56 9 2011 5727', 'maroe@maroe.cl', '2020-12-22 16:42:12', '12526', '1686808698086804', '4000', 29, 13, 43, '', 'kj0ea3u7', 'temp/1686808698086804.png', '12526', 'POB. MANUEL RODRIGUEZ PSJ MANUEL MONTT 450', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 38, 'barcode/1686808698086804.png', 195, 0, 1, 1, 1, 0),
(264, '13987542-7', 'TERESA CABRERA NAVARRO', '+56 9 3779 6752', 'maroe@maroe.cl', '2020-12-22 16:43:52', '12558', '1686808803815382', '4000', 29, 6, 43, '', 'kj0ec9ev', 'temp/1686808803815382.png', '12558', ' DOCTOR SALAS 1110', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 38, 'barcode/1686808803815382.png', 196, 0, 1, 1, 1, 0),
(265, '15727708-1', 'Cinthia Cianferoni', '+56 9 8639 7638', 'maroe@maroe.cl', '2020-12-22 16:45:02', '12567', '1686808877062591', '4000', 29, 6, 43, '', 'kj0edroq', 'temp/1686808877062591.png', '12567', 'Av Bernardo Ohiggins 01330, Valencia alto', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 38, 'barcode/1686808877062591.png', 197, 0, 1, 1, 1, 0),
(266, '16105721-5', 'Gabriela Fleming DÃ­az', '+56 9 6175 5505', 'maroe@maroe.cl', '2020-12-22 16:46:10', '12421', '1686808948221306', '4000', 29, 1, 43, '', 'kj0ef7yc', 'temp/1686808948221306.png', '12421', 'TÃ­bola 4472 la planchada rodelillo', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 30, 'barcode/1686808948221306.png', 198, 0, 1, 1, 1, 0),
(268, '26209515-0', 'Maritza briceÃ±o', '+56 9 5632 2421', 'maroe@maroe.cl', '2020-12-22 17:09:43', '12293', '1686810430145130', '4000', 29, 2, 43, '', 'kj0f9if4', 'temp/1686810430145130.png', '12293', 'Calle jose yaÃ±ez pasaje los castaÃ±o Villa primavera bloc V numero 1150 piso 3 a', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 30, 'barcode/1686810430145130.png', 200, 0, 1, 1, 1, 0),
(269, '11111111-1', 'Antonio Pino', '984595475', 'angelalagosdiaz@gmail.com', '2020-12-22 17:16:18', '26945', '1686810843448945', '4000', 29, 25, 43, '', 'kj0fhx9c', 'temp/1686810843448945.png', '26945', 'Vicente huidobro 230', '16660893-7', 'Arena Para Mascotas', '931029478', 'boris.cortez@maroe.cl', 'Buzeta 3558', 1, 30, 'barcode/1686810843448945.png', 201, 0, 1, 1, 1, 0),
(270, '19448731-2', 'JAVIERA LOBOS', ' 9 4697 3776', 'maroe@maroe.cl', '2020-12-23 11:13:55', '12550', '1686878641209135', '4000', 29, 19, 43, '', 'kj1hzrxu', 'temp/1686878641209135.png', '12550', 'LOS VILLARES PARADERO 6 S/N FRENTE AL 8000', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 38, 'barcode/1686878641209135.png', 202, 0, 1, 1, 1, 0),
(271, '17275185-7', 'Myriam LÃ³pez', '+56 9 7351 4506', 'maroe@maroe.cl', '2020-12-23 11:16:17', '12496', '1686878790333822', '4000', 29, 5, 43, '', 'kj1i2tse', 'temp/1686878790333822.png', '12496', 'Marta Brunet 88 A, forestal', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 38, 'barcode/1686878790333822.png', 203, 0, 1, 1, 1, 0),
(272, '107843809', 'OSVALDO ELADIO JARAMILLO', '968619640', 'LOGISTICA@BOLOMEY.CL', '2020-12-23 13:19:19', 'QUILLOTA', '1686886531073129', '4000', 29, 11, 37, '', 'kj1mlsha', 'temp/1686886531073129.png', 'VILLA EL ESFUERZO', 'CALLE PRINCIPAL NÂ° 6, VILLA EL ESFUERZO, QUILLOTA', '875903004', 'CARLOS BOLOMEY SPA', '223470600', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539, SANTIAGO', 1, 38, 'barcode/1686886531073129.png', 204, 0, 1, 1, 1, 0),
(273, '215069109', 'NATHALY PARRA CARRASCO', '955221754', 'LOGISTICA@BOLOMEY.CL', '2020-12-23 13:41:11', 'AT. DELFINA CARRASCO', '1686887906458330', '4000', 29, 23, 37, '', 'kj1mw6g4', 'temp/1686887906458330.png', 'POBLACION SANTA TERESA', 'CARDENAL JOSE MARIA CARO NÂ° 1311, POB. SANTA TERESA, SAN ANTONIO', '875903004', 'CARLOS BOLOMEY SPA', '223470600', 'LOGISTICA@BOLOMEY.CL', 'ALDUNATE 1539, SANTIAGO', 1, 30, 'barcode/1686887906458330.png', 205, 0, 1, 1, 1, 0),
(274, '11111111-1', 'PABLO VARAS LOBO', '979094578', 'pvaraslobo@hotmail.com', '2020-12-23 15:28:40', 'Esquina Chacabuco ', '1686894668769001', '4000', 29, 20, 43, '', 'kj1r3e6c', 'temp/1686894668769001.png', 'Extintores Lobo 27023', 'Navarro 53', '16660893-7', 'APM', '931029478', 'boris.cortez@maroe.cl', 'Buzeta 3558', 1, 38, 'barcode/1686894668769001.png', 206, 0, 1, 1, 1, 0),
(275, '11111111-1', 'Barbara Alvial', '944380942', 'barabara_alvial.22@outlook.cl', '2020-12-23 15:31:03', '27032', '1686894819449573', '4000', 29, 6, 43, '', 'kj1r6h31', 'temp/1686894819449573.png', '27032', 'Alfonso Leng 528', '16660893-7', 'APM', '931029478', 'boris.cortez@maroe.cl', 'Buzeta 3558', 1, 38, 'barcode/1686894819449573.png', 207, 0, 1, 1, 1, 0),
(276, '111111111', 'francisca verdugo', '993217968', 'pacha_v@hotmail.com', '2020-12-24 10:18:33', 'no aplica', '1686965755651425', '4165', 20, 29, 51, '0', 'kj2vgqwv', 'temp/1686965755651425.png', 'no aplica', 'perez valenzuela 1517 depto 18', '119431395', 'patricia vargas', '972115114', 'patricia.vrgs@gmail.com', 'navarro 53, san felipe', 1, 38, 'barcode/1686965755651425.png', 209, 0, 1, 1, 1, 0),
(277, '111111111', 'francisca verdugo', '993217968', 'pacha_v@hotmail.com', '2020-12-24 10:18:34', 'no aplica', '1686965755925253', '4165', 20, 29, 51, '0', 'kj2vgqwv', 'temp/1686965755925253.png', 'no aplica', 'perez valenzuela 1517 depto 18', '119431395', 'patricia vargas', '972115114', 'patricia.vrgs@gmail.com', 'navarro 53, san felipe', 1, 38, 'barcode/1686965755925253.png', 209, 0, 1, 1, 1, 0),
(278, '111111111', 'carmen gloria verdugo', '992183547', 'patrici.rvgs@gmail.com', '2020-12-24 10:23:40', 'no aplica', '1686966076975291', '4165', 20, 29, 51, '0', 'kj2vnb2w', 'temp/1686966076975291.png', 'no aplica', 'los nogales 1293 estancia el lirai colina', '119431395', 'patricia vargas', '972115114', 'patricia.vrgs@gmail.com', 'navarro 53, san felipe', 1, 38, 'barcode/1686966076975291.png', 210, 0, 1, 1, 1, 0),
(279, '5334231-0', ' Sara Pizarro T', '+56 9 3482 2347', 'maroe@maroe.cl', '2020-12-24 10:39:24', '12153 - 12167', '1686967067368660', '4000', 29, 6, 43, '', 'kj2w79e7', 'temp/1686967067368660.png', '12153 - 12167', 'PoblaciÃ³n las rosas Las hortencias 1419', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 30, 'barcode/1686967067368660.png', 211, 0, 1, 1, 1, 0),
(280, '11386492-3', 'Clara FernÃ¡ndez', '+56 9 6488 2213', 'maroe@maroe.cl', '2020-12-24 10:41:08', '12710', '1686967176043453', '4000', 29, 3, 43, '', 'kj2w9hcs', 'temp/1686967176043453.png', '12710', 'Calle Principal S/N campiche, PuchuncavÃ­', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 38, 'barcode/1686967176043453.png', 212, 0, 1, 1, 1, 0),
(281, '8176210-4', 'CLAUDIA FERNANDEZ', ' +56 9 9495 6316', 'maroe@maroe.cl', '2020-12-24 10:43:23', '12705', '1686967317392295', '4000', 29, 5, 43, '', 'kj2wcdcx', 'temp/1686967317392295.png', '12705', 'n CALLE DEL AGUA 67 CON HERRERA AGUA SANTA', '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 1, 38, 'barcode/1686967317392295.png', 213, 0, 1, 1, 1, 0),
(282, '11111111-1', 'Daniela Garcia', '65553712', 'danytoralexia@gmail.com', '2020-12-24 12:14:42', '27081', '1686973062943448', '4000', 29, 6, 43, '', 'kj2zltas', 'temp/1686973062943448.png', 'Block 12, Depto 101', 'Alcalde Rene Rodriguez 1176 Block 12 Depto 101', '16660893-7', 'APM', '931029478', 'boris.cortez@maroe.cl', 'Buzeta 3558', 1, 30, 'barcode/1686973062943448.png', 214, 0, 1, 1, 1, 0),
(283, '11111111-1', 'Barbara Alvial', '944380942', 'barbara_alvial.22@outlook.cl', '2020-12-24 12:16:25', '27048', '1686973170820243', '4000', 29, 6, 43, '', 'kj2zo0p9', 'temp/1686973170820243.png', 'Belloto Norte', 'Alfonso Leng 528', '16660893-7', 'Heber Rios', '931029478', 'boris.cortez@maroe.cl', 'buzeta 3558', 1, 30, 'barcode/1686973170820243.png', 215, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `id` int(11) NOT NULL,
  `rut` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(600) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`id`, `rut`, `nombre`, `telefono`, `email`, `direccion`, `fk_id_usuario`) VALUES
(3, '18420862-8', 'Yonatan Pizarro CalderÃ³n', '934561195', 'yonatanpizarro21@hotmail.com', 'LA CALERA', 28),
(4, '17454416-6', 'Liliana Farias', '976155912', 'liliana.f.p@hotmail.com', 'pasaje los trigales 1463 villa el trigal, san antonio', 45),
(5, '18900669-1', 'jorge gil', '976086213', 'dead_brother@hotmail.com', 'Manuel HernÃ¡ndez 857 la ligua', 45),
(6, '772047533', 'QUE COREANA SPA', '973339691', 'yasna.cvl@gmail.com', 'la diocesis 816 casa b, pudahuel', 45),
(7, '17977884k', 'paula solis', '987501840', 'solis.paula22@gmail.com', 'viana 967 , dpto 409, VIÃ‘A DEL MAR', 45),
(8, '16702371-1', 'Scarlett vial mayer', '994094986', 'Scarlettvialmayer5@gmail.com', 'Villa Argelia avda chile#1126 san Felipe', 45),
(9, '11111111-1', 'MAROE ', '562222222', 'NO@NO.CL', 'SANTIAGO', 43),
(10, '78706540-6', 'MIGUEL JACOB HELO', '+56225698050', 'sjacob@mjh.cl', 'San ignacio 568 - Santiago Centro', 47),
(11, '77004932-6', 'ingenieria y mantencion ibaceta y hermanos limitada', '+56989786733', 'servicios@grupoibaceta.com', 'La chaparrina #362, san esteban , los andes', 47),
(12, '76303540-9', 'korea multimotriz ltda', '+56226343626', 'berzabegallardoe@gmail.com', 'avenida 10 de julio huamachuco, santiago centro', 47),
(13, '16487836-8', 'Nicole arancibia', '990181432', 'Navergara22@gmail.com', 'camino quebrada verde 56 cerro toro valparaiso', 45),
(14, '18878552-2', 'Nicole LÃ³pez Arancibia', '993284646', 'n.lopezarancibia@hotmail.com', 'Lord Cochrane 482 la calera', 45),
(15, '119431395', 'patricia vargas', '972115114', 'patricia.vrgs@gmail.com', 'navarro 53, san felipe', 51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `orden_compra` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `data` mediumtext CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  `transaction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `medio` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `orden_compra`, `data`, `estado`, `total`, `created_at`, `fk_id_usuario`, `transaction`, `medio`) VALUES
(135, 'kiq330uj', '[{\"referencia\":\"SANTA MARIA\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":20,\"peso\":300,\"rut_destinatario\":\"150919029\",\"nombre_destinatario\":\"OSCAR GUERRA ARANCIBIA\",\"telefono_destinatario\":\"976200056\",\"email_destinatario\":\"logistica@bolomey.cl\",\"detalle\":\"VILLA MIRASOL\",\"total\":4522,\"id_usuario\":\"37\",\"direccion\":\"PSAJE LOS PIMIENTOS 222\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"Carlos Bolomey SpA\",\"telefono_remitente\":\"986802029\",\"email_remitente\":\"logistica@bolomey.cl\",\"direccion_remitente\":\"Aldunate 1539\"}]', 'pagado', 4000, '2020-12-15 11:27:48', 37, '{\n    \"payment_id\": \"5nzvfllumjzo\",\n    \"payment_url\": \"https://khipu.com/payment/info/5nzvfllumjzo\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/5nzvfllumjzo\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/5nzvfllumjzo\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/5nzvfllumjzo\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/5nzvfllumjzo\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"013bce8c2cf984c71583c72ed6146a2cfd0d48bc38cf4cbbfa5f7dcf69a1cce5\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-15 21:40:53.413000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-1512201840-5nzvfllumjzo.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-16 21:38:27.297000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Home\",\n    \"payer_email\": \"\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-c0564e1e-7235-49c4-968e-cad892f8b6f9\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kiq330uj\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(144, 'kirqsxtw', '[{\"referencia\":\"1\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":20,\"peso\":\"\",\"rut_destinatario\":\"72114485\",\"nombre_destinatario\":\"RAUL PEREZ HIDALGO\",\"telefono_destinatario\":\"982882965\",\"email_destinatario\":\"logistica@bolomey.cl\",\"detalle\":\"1\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"YUNGAY 999,  SAN FELIPE\",\"rut_remitente\":\"72114485\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"86802029\",\"email_remitente\":\"logistica@bolomey.cl\",\"direccion_remitente\":\"ALDUNATE 1539\"}]', 'pagado', 4000, '2020-12-16 15:19:35', 37, '{\n    \"payment_id\": \"mdwtzu00v7xg\",\n    \"payment_url\": \"https://khipu.com/payment/info/mdwtzu00v7xg\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/mdwtzu00v7xg\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/mdwtzu00v7xg\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/mdwtzu00v7xg\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/mdwtzu00v7xg\",\n    \"ready_for_terminal\": true,\n    \"notification_token\": \"94dc41869536efe248b112180aca71362b5e08cd689e2ea4a65870ac966fba17\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-17 17:32:45.544000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-1712201431-mdwtzu00v7xg.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-18 17:27:11.038000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco Santander\",\n    \"bank_id\": \"XCvw4\",\n    \"payer_name\": \"Leonardo Felipe Pizarro Gomez\",\n    \"payer_email\": \"gadielgb@hotmail.com\",\n    \"personal_identifier\": \"20.541.607-2\",\n    \"bank_account_number\": \"73946603\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kirqsxtw\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"simplified_transfer\"\n}', 'Khipu'),
(159, 'kit4v1uo', '[{\"referencia\":\"1\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":19,\"peso\":\"\",\"rut_destinatario\":\"102235266\",\"nombre_destinatario\":\"OMAR GUERRA HERRERA\",\"telefono_destinatario\":\"989047726\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"1\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"RAUL VARGAS 695 CENTENARIO\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"986802029\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539 SANTIAGO\"}]', 'pagado', 4000, '2020-12-17 14:40:56', 37, NULL, NULL),
(160, 'kit8kx8i', '[{\"referencia\":\"1\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":12,\"peso\":\"\",\"rut_destinatario\":\"82094342\",\"nombre_destinatario\":\"WALDO SALINAS VILLALOBOS\",\"telefono_destinatario\":\"992973213\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"PARADERO 14\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"PSAJE HAROU 251 VILLA LOS FLORISTAS, LA CRUZ \",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"992973213\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539 SANTIAGO\"}]', 'pagado', 4000, '2020-12-17 16:25:02', 37, '{\n    \"payment_id\": \"7n2uulhrtji5\",\n    \"payment_url\": \"https://khipu.com/payment/info/7n2uulhrtji5\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/7n2uulhrtji5\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/7n2uulhrtji5\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/7n2uulhrtji5\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/7n2uulhrtji5\",\n    \"ready_for_terminal\": true,\n    \"notification_token\": \"a07588c4a35ffba3bff977bf461c9a06f57a76243bf672de8c27dc740f5ebf21\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-18 00:01:20.527000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-1712202052-7n2uulhrtji5.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-18 23:50:38.613000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco Estado\",\n    \"bank_id\": \"SDdGj\",\n    \"payer_name\": \"Guerrero Tapia Pamela Ruby\",\n    \"payer_email\": \"pame.r.14@hotmail.com\",\n    \"personal_identifier\": \"13.186.213-k\",\n    \"bank_account_number\": \"FAKE-9b2bdf3f-f774-446d-99e5-61ce1c7cb38f\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kit8kx8i\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"regular_transfer\"\n}', 'Khipu'),
(161, 'kit8xysc', '[{\"referencia\":\"1\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":5,\"peso\":\"\",\"rut_destinatario\":\"123527275\",\"nombre_destinatario\":\"JOSE VIDAL VERA\",\"telefono_destinatario\":\"991979622\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"1\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"CALLE QUILLOTA 766, VIÃ‘A DEL MAR\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"986802029\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539, SANTIAGO\"},{\"referencia\":\"1\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":5,\"peso\":\"\",\"rut_destinatario\":\"123527275\",\"nombre_destinatario\":\"JOSE VIDAL VERA\",\"telefono_destinatario\":\"991979622\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"1\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"CALLE QUILLOTA 766, VIÃ‘A DEL MAR\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"986802029\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539, SANTIAGO\"}]', 'pagado', 8000, '2020-12-17 16:35:10', 37, '{\n    \"payment_id\": \"m4n2mmhst6oc\",\n    \"payment_url\": \"https://khipu.com/payment/info/m4n2mmhst6oc\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/m4n2mmhst6oc\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/m4n2mmhst6oc\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/m4n2mmhst6oc\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/m4n2mmhst6oc\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"2b7569a7a523e9a67b11ed7b02d759a3291d58bd05d8a0c69f2a6369e453072e\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-18 16:12:57.001000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 8000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-1812201312-m4n2mmhst6oc.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-19 16:11:53.222000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Gadiel gonzalez\",\n    \"payer_email\": \"gadielgb@hotmail.com\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-b798c23c-cbfb-4dc7-bef5-b03759ce8693\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kit8xysc\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(162, 'kiuh2uc7', '[{\"referencia\":\"1\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":19,\"peso\":\"\",\"rut_destinatario\":\"92627381\",\"nombre_destinatario\":\"JUAN DAVID VILLARROEL OLIVARES\",\"telefono_destinatario\":\"97030045\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"SAN ESTEBAN\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"AVDA. LIBERTAD 765, EL HIGUERAL, SAN ESTEBAN\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"986802029\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539, SANTIAGO\"}]', 'pagado', 4000, '2020-12-18 13:10:42', 37, '{\n    \"payment_id\": \"j5stw7coosbu\",\n    \"payment_url\": \"https://khipu.com/payment/info/j5stw7coosbu\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/j5stw7coosbu\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/j5stw7coosbu\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/j5stw7coosbu\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/j5stw7coosbu\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"f1c080428e03a289cef655bb4cfb8d890edde1cad6aa5f0ad5512af6da8b5f9c\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-18 21:47:35.172000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-1812201847-j5stw7coosbu.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-19 21:42:11.988000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Gadiel gonzalez\",\n    \"payer_email\": \"gadielgb@hotmail.com\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-286c3314-3432-4ba7-a2a1-4e1db8b054e5\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kiuh2uc7\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(163, 'kiuhfqzj', '[{\"referencia\":\"HIJUELAS\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":15,\"peso\":\"\",\"rut_destinatario\":\"129513047\",\"nombre_destinatario\":\"ALDO ELIER DELGADO TAPIA\",\"telefono_destinatario\":\"962751344\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"1\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"LOTE 1E-C MAITENES DE OCOA, HIJUELAS\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"986802029\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539, SANTIAGO\"}]', 'pagado', 4000, '2020-12-18 13:20:44', 37, '{\n    \"payment_id\": \"ksfh5znraklr\",\n    \"payment_url\": \"https://khipu.com/payment/info/ksfh5znraklr\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/ksfh5znraklr\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/ksfh5znraklr\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/ksfh5znraklr\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/ksfh5znraklr\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"a28d4cb2863715a037ea582412624548814a39525b19adf413de82ec5cc5b325\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-21 13:17:37.775000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2112201017-ksfh5znraklr.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-22 13:15:50.417000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Home Pack Chile SPA.\",\n    \"payer_email\": \"contacto@homepackchile.cl\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-e0bb1b71-03e4-4921-a7b1-d3353aed1c10\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kiuhfqzj\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(164, 'kiulpd1i', '[{\"referencia\":\"TRONCOS VIEJOS\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":7,\"peso\":\"\",\"rut_destinatario\":\"14595451-7\",\"nombre_destinatario\":\"KELLY CONTRERAS ESCOBAR\",\"telefono_destinatario\":\"+56965545582\",\"email_destinatario\":\"NO@NO.CL\",\"detalle\":\"ROPA\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"PSJ WAGNER 1739 TRONCOS VIEJOS\",\"rut_remitente\":\"166608937\",\"nombre_remitente\":\"Heber RÃ­os MuÃ±oz\",\"telefono_remitente\":\"9222154845\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"AVENIDA BUZETA 3558 BODEGA 48, ESTACION CENTRAL\"}]', 'pendiente', 4000, '2020-12-18 15:22:57', 43, NULL, NULL),
(168, 'kiuthscf', '[{\"referencia\":\"no aplica\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":9,\"peso\":0,\"rut_destinatario\":\"18257998-k\",\"nombre_destinatario\":\"Alexandra Castro\",\"telefono_destinatario\":\"988936422\",\"email_destinatario\":\"alexandracastroponce@gmail.com\",\"detalle\":\"Productos de Dermocosmetica\",\"total\":3689,\"id_usuario\":\"42\",\"direccion\":\"Sitio 29, santa rosa Limache\",\"rut_remitente\":\"16952018-6\",\"nombre_remitente\":\"Yasna Villarroel\",\"telefono_remitente\":\"975539691\",\"email_remitente\":\"yasna.cvl@gmail.com\",\"direccion_remitente\":\"La diocesis 816 casa b, Pudahuel\"}]', 'pagado', 3689, '2020-12-18 19:01:10', 42, '{\n    \"payment_id\": \"62ntfedeavkt\",\n    \"payment_url\": \"https://khipu.com/payment/info/62ntfedeavkt\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/62ntfedeavkt\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/62ntfedeavkt\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/62ntfedeavkt\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/62ntfedeavkt\",\n    \"ready_for_terminal\": true,\n    \"notification_token\": \"7cf69e3f6d284d130dc12d73c6d18b99bb615c0e3b836137a62e41b044b06698\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-22 13:04:54.947000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 3689,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2212200959-62ntfedeavkt.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-23 12:56:02.498000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco Estado\",\n    \"bank_id\": \"SDdGj\",\n    \"payer_name\": \"Lizana Carvajal Emili Patricia\",\n    \"payer_email\": \"emili.lizana15@gmail.com\",\n    \"personal_identifier\": \"19.726.812-3\",\n    \"bank_account_number\": \"FAKE-da76daff-e137-496c-ac73-d48129e012fe\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kiuthscf\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"regular_transfer\"\n}', 'Khipu'),
(171, 'kixaus8t', '[{\"referencia\":\"Taller\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":11,\"peso\":\"\",\"rut_destinatario\":\"16000030-9\",\"nombre_destinatario\":\"Francoise Lauga \",\"telefono_destinatario\":\"990875209\",\"email_destinatario\":\"Francoiselauga@gmail.com\",\"detalle\":\"Juguete\",\"total\":4000,\"id_usuario\":\"44\",\"direccion\":\"La concepciÃ³n 557\",\"rut_remitente\":\"13970782-6\",\"nombre_remitente\":\"Paula vera\",\"telefono_remitente\":\"995193741\",\"email_remitente\":\"dreamstoyschile@gmail.com\",\"direccion_remitente\":\"Pablo Picasso 1250 Huechuraba\"}]', 'pagado', 4000, '2020-12-20 12:43:01', 44, '{\n    \"payment_id\": \"i6xzzzxozj42\",\n    \"payment_url\": \"https://khipu.com/payment/info/i6xzzzxozj42\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/i6xzzzxozj42\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/i6xzzzxozj42\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/i6xzzzxozj42\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/i6xzzzxozj42\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"e5b0cb8dbf589cbcd69394a65bc37e2a4d32d9799d45a56a9d3e6a460d86f43a\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-20 17:16:18.851000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2012201416-i6xzzzxozj42.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-21 17:12:03.125000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Francoise \",\n    \"payer_email\": \"francoiselauga@gmail.com\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-f3cc6d08-661f-48e7-ab5e-410979edd4ed\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kixaus8t\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(178, 'kiyxaapo', '[{\"referencia\":\"orden 6410\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":23,\"peso\":\"\",\"rut_destinatario\":\"17454416-6\",\"nombre_destinatario\":\"Liliana Farias\",\"telefono_destinatario\":\"976155912\",\"email_destinatario\":\"liliana.f.p@hotmail.com\",\"detalle\":\"cosmeticos \",\"total\":4000,\"id_usuario\":\"45\",\"direccion\":\"pasaje los trigales 1463 villa el trigal, san antonio\",\"rut_remitente\":\"772047533\",\"nombre_remitente\":\"Que Coreana SpA\",\"telefono_remitente\":\"975539691\",\"email_remitente\":\"yasna.cvl@gmail.com\",\"direccion_remitente\":\"la diocesis 816 casa b, pudahuel\"}]', 'pagado', 4000, '2020-12-21 15:58:40', 45, '{\n    \"payment_id\": \"ez4ayf3r0b1b\",\n    \"payment_url\": \"https://khipu.com/payment/info/ez4ayf3r0b1b\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/ez4ayf3r0b1b\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/ez4ayf3r0b1b\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/ez4ayf3r0b1b\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/ez4ayf3r0b1b\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"659d35d4421537dae510442326925295fa4b8bef8fe76f26d4b40c50222491bb\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-21 23:45:34.571000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2112202045-ez4ayf3r0b1b.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-22 23:41:44.659000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Home Pack Chile SPA.\",\n    \"payer_email\": \"contacto@homepackchile.cl\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-e7c18dc7-faed-4637-bdfb-e73ef0f0ca8c\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kiyxaapo\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(179, 'kiyxiqir', '[{\"referencia\":\"orden 6887\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":16,\"peso\":\"\",\"rut_destinatario\":\"18900669-1\",\"nombre_destinatario\":\"jorge gil\",\"telefono_destinatario\":\"976086213\",\"email_destinatario\":\"dead_brother@hotmail.com\",\"detalle\":\"cosmetico\",\"total\":4000,\"id_usuario\":\"45\",\"direccion\":\"Manuel HernÃ¡ndez #857, la ligua\",\"rut_remitente\":\"772047533\",\"nombre_remitente\":\"Que Coreana SpA\",\"telefono_remitente\":\"975539691\",\"email_remitente\":\"yasna.cvl@gmail.com\",\"direccion_remitente\":\"la diocesis 816 casa b, pudahuel\"}]', 'pagado', 4000, '2020-12-21 16:05:14', 45, '{\n    \"payment_id\": \"8ye0dthmo08f\",\n    \"payment_url\": \"https://khipu.com/payment/info/8ye0dthmo08f\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/8ye0dthmo08f\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/8ye0dthmo08f\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/8ye0dthmo08f\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/8ye0dthmo08f\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"b43ac1a9d2101e4471e7b41df0986493c03f7178ed956bf0bfc573a127e004aa\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-22 20:57:45.142000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2212201757-8ye0dthmo08f.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-23 20:56:13.048000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Home Pack Chile SPA.\",\n    \"payer_email\": \"contacto@homepackchile.cl\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-bdafbd5c-6212-4837-b42b-5800057ec9fe\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kiyxiqir\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(180, 'kiyxoqwl', '[{\"referencia\":\"orden 6801\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":5,\"peso\":\"\",\"rut_destinatario\":\"17977884k\",\"nombre_destinatario\":\"paula solis\",\"telefono_destinatario\":\"987501840\",\"email_destinatario\":\"solis.paula22@gmail.com\",\"detalle\":\"cosmetico\",\"total\":4000,\"id_usuario\":\"45\",\"direccion\":\"viana 967 , dpto 409, VIÃ‘A DEL MAR\",\"rut_remitente\":\"772047533\",\"nombre_remitente\":\"QUE COREANA SPA\",\"telefono_remitente\":\"973339691\",\"email_remitente\":\"yasna.cvl@gmail.com\",\"direccion_remitente\":\"la diocesis 816 casa b, pudahuel\"}]', 'pagado', 4000, '2020-12-21 16:09:54', 45, '{\n    \"payment_id\": \"xigd0wydap8m\",\n    \"payment_url\": \"https://khipu.com/payment/info/xigd0wydap8m\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/xigd0wydap8m\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/xigd0wydap8m\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/xigd0wydap8m\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/xigd0wydap8m\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"f980298b8736dc413d156a61fb8af23a2537adc9952545c69df98d3502c2b8c2\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-22 14:53:53.115000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2212201153-xigd0wydap8m.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-23 14:51:58.682000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Home Pack Chile SPA.\",\n    \"payer_email\": \"solis.paula22@gmail.com\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-4729b78a-bf04-458e-a3a8-5b423506cf5f\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kiyxoqwl\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(181, 'kiyxvce5', '[{\"referencia\":\"orden 6837\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":20,\"peso\":\"\",\"rut_destinatario\":\"16702371-1\",\"nombre_destinatario\":\"Scarlett vial mayer\",\"telefono_destinatario\":\"994094986\",\"email_destinatario\":\"Scarlettvialmayer5@gmail.com\",\"detalle\":\"cosmetico\",\"total\":4000,\"id_usuario\":\"45\",\"direccion\":\"Villa Argelia avda chile#1126 san Felipe\",\"rut_remitente\":\"772047533\",\"nombre_remitente\":\"QUE COREANA SPA\",\"telefono_remitente\":\"973339691\",\"email_remitente\":\"yasna.cvl@gmail.com\",\"direccion_remitente\":\"la diocesis 816 casa b, pudahuel\"}]', 'pendiente', 4000, '2020-12-21 16:15:02', 45, NULL, NULL),
(182, 'kiyyyre6', '[{\"referencia\":\"ok\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":20,\"peso\":\"\",\"rut_destinatario\":\"18562441-2\",\"nombre_destinatario\":\"Jacqueline Concha\",\"telefono_destinatario\":\"976155197\",\"email_destinatario\":\"no@no.cl\",\"detalle\":\"ok\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"papa leon V 400 Juan Pablo II\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE\",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"},{\"referencia\":\"OK\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":6,\"peso\":\"\",\"rut_destinatario\":\"15099836-0\",\"nombre_destinatario\":\"PAMELA ARANCIBIA\",\"telefono_destinatario\":\"+56950235877\",\"email_destinatario\":\"NO@NO.CL\",\"detalle\":\"OK\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"CALLE TOQUI 2450 COND ALTO PEÃ‘UELAS 1 CASA 22\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE\",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"},{\"referencia\":\"OK\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":9,\"peso\":\"\",\"rut_destinatario\":\"15851041-3\",\"nombre_destinatario\":\"GISSELA PACHECO\",\"telefono_destinatario\":\"+56979040859\",\"email_destinatario\":\"NO@NO.CL\",\"detalle\":\"OK\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"VILLA QUERONQUE BLOQUE 17 DPTO 3 , LIMACHE\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE\",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"},{\"referencia\":\"OK\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":7,\"peso\":\"\",\"rut_destinatario\":\"209597446\",\"nombre_destinatario\":\"DANIELA SANDOVAL\",\"telefono_destinatario\":\"+56972711922\",\"email_destinatario\":\"NO@NO.CL\",\"detalle\":\"VILLA ALEMANA\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"HUANHUALI 509 B\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE\",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"},{\"referencia\":\"OK\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":16,\"peso\":\"\",\"rut_destinatario\":\"113294345\",\"nombre_destinatario\":\"ISABEL MATURANA\",\"telefono_destinatario\":\"56966830514\",\"email_destinatario\":\"NO@NO.CL\",\"detalle\":\"LA LIGUA\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"CALLE MIRAFLORES S/N VALLE HERMOSO \",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE\",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"},{\"referencia\":\"OK\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":2,\"peso\":\"\",\"rut_destinatario\":\"131353561\",\"nombre_destinatario\":\"XIMENA ZARETE\",\"telefono_destinatario\":\"+56965782334\",\"email_destinatario\":\"NO@NO.CL\",\"detalle\":\"CONCON\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"CALLE RIO BIO BIO 315 \",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE\",\"telefono_remitente\":\"5622222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 24000, '2020-12-21 16:45:15', 43, NULL, NULL),
(183, 'kiyzaz3h', '[{\"referencia\":\"OK\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":3,\"peso\":\"\",\"rut_destinatario\":\"000000000\",\"nombre_destinatario\":\"GLADYS JAURE BASAEZ\",\"telefono_destinatario\":\"56988997827\",\"email_destinatario\":\"NO@NO.CL\",\"detalle\":\"OK\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"POBLACION MUNICIPAL CASA 64 E\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-21 16:54:44', 43, NULL, NULL),
(185, 'kiz2z071', '[{\"referencia\":\"lugar de destino se encuentra un punto de reciclaje\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":19,\"peso\":1200,\"rut_destinatario\":\"77004932-6\",\"nombre_destinatario\":\"ingenieria y mantencion ibaceta y hermanos limitada\",\"telefono_destinatario\":\"+56989786733\",\"email_destinatario\":\"servicios@grupoibaceta.com\",\"detalle\":\"retiro despues de medio dia\",\"total\":5593,\"id_usuario\":\"47\",\"direccion\":\"La chaparrina #362, san esteban , los andes\",\"rut_remitente\":\"78706540-6\",\"nombre_remitente\":\"MIGUEL JACOB HELO\",\"telefono_remitente\":\"+56225698050\",\"email_remitente\":\"sjacob@mjh.cl\",\"direccion_remitente\":\"San ignacio 568 - Santiago Centro\"}]', 'pagado', 5593, '2020-12-21 18:37:52', 47, '{\n    \"payment_id\": \"slma45y3kl9p\",\n    \"payment_url\": \"https://khipu.com/payment/info/slma45y3kl9p\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/slma45y3kl9p\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/slma45y3kl9p\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/slma45y3kl9p\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/slma45y3kl9p\",\n    \"ready_for_terminal\": true,\n    \"notification_token\": \"59d8bf2704e9cef4d24304d3158e3a6b7b73d75caf67ef521cb27827d67b43d8\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-23 18:16:29.502000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 5593,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2312201514-slma45y3kl9p.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-24 18:14:09.274000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Scotiabank\",\n    \"bank_id\": \"FNGsm\",\n    \"payer_name\": \"Ingenieria Y Mantencion Ibacet\",\n    \"payer_email\": \"servicios@grupoibaceta.com\",\n    \"personal_identifier\": \"77.004.932-6\",\n    \"bank_account_number\": \"FAKE-c4e0dcba-c371-40ff-b177-c2be0dc27974\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kiz2z071\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"regular_transfer\"\n}', 'Khipu'),
(187, 'kizz2ixz', '[{\"referencia\":\"en lugar de destino se encuentra un punto de reciclaje\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":19,\"peso\":300,\"rut_destinatario\":\"77004932-6\",\"nombre_destinatario\":\"ingenieria y mantencion ibaceta y hermanos limitada\",\"telefono_destinatario\":\"+56989786733\",\"email_destinatario\":\"servicios@grupoibaceta.com\",\"detalle\":\"repuesto automotriz\",\"total\":4522,\"id_usuario\":\"47\",\"direccion\":\"La chaparrina #362, san esteban , los andes\",\"rut_remitente\":\"76303540-9\",\"nombre_remitente\":\"korea multimotriz ltda\",\"telefono_remitente\":\"+56226343626\",\"email_remitente\":\"berzabegallardoe@gmail.com\",\"direccion_remitente\":\"avenida 10 de julio huamachuco, santiago centro\"}]', 'pagado', 4522, '2020-12-22 09:36:22', 47, '{\n    \"payment_id\": \"7sjuw5ohhnmt\",\n    \"payment_url\": \"https://khipu.com/payment/info/7sjuw5ohhnmt\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/7sjuw5ohhnmt\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/7sjuw5ohhnmt\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/7sjuw5ohhnmt\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/7sjuw5ohhnmt\",\n    \"ready_for_terminal\": true,\n    \"notification_token\": \"448941a9c71136274c2ce03ff4283f79bf3779689aac9f231fdb1e9b46d6d31f\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-22 12:44:00.423000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4522,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2212200937-7sjuw5ohhnmt.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-23 12:36:22.737000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Scotiabank\",\n    \"bank_id\": \"FNGsm\",\n    \"payer_name\": \"Ingenieria Y Mantencion Ibacet\",\n    \"payer_email\": \"servicios@grupoibaceta.com\",\n    \"personal_identifier\": \"77.004.932-6\",\n    \"bank_account_number\": \"FAKE-3a9168e9-f9fd-4c53-8dbc-536fcc2ea499\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kizz2ixz\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"regular_transfer\"\n}', 'Khipu'),
(188, 'kj067x8k', '[{\"referencia\":\"o\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":13,\"peso\":\"\",\"rut_destinatario\":\"18878552-2\",\"nombre_destinatario\":\"Nicole LÃ³pez Arancibia\",\"telefono_destinatario\":\"993284646\",\"email_destinatario\":\"n.lopezarancibia@hotmail.com\",\"detalle\":\"cosmetico\",\"total\":4000,\"id_usuario\":\"45\",\"direccion\":\"Lord Cochrane 482\",\"rut_remitente\":\"772047533\",\"nombre_remitente\":\"QUE COREANA SPA\",\"telefono_remitente\":\"973339691\",\"email_remitente\":\"yasna.cvl@gmail.com\",\"direccion_remitente\":\"la diocesis 816 casa b, pudahuel\"}]', 'pagado', 4000, '2020-12-22 12:55:00', 45, '{\n    \"payment_id\": \"fyr5hisgxftl\",\n    \"payment_url\": \"https://khipu.com/payment/info/fyr5hisgxftl\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/fyr5hisgxftl\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/fyr5hisgxftl\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/fyr5hisgxftl\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/fyr5hisgxftl\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"9e7d5f36c7cf310bb17cfee9d5bf9a8c6c9e80847d846dca3d02eca47feba346\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-22 23:18:13.946000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2212202018-fyr5hisgxftl.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-23 23:15:30.013000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Gadiel gonzalez\",\n    \"payer_email\": \"gadielgb@hotmail.com\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-4ee40db3-7a87-4328-9df6-49dd49709ff3\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kj067x8k\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(189, 'kj069ulu', '[{\"referencia\":\"cerro toro\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":1,\"peso\":\"\",\"rut_destinatario\":\"16487836-8\",\"nombre_destinatario\":\"Nicole arancibia\",\"telefono_destinatario\":\"990181432\",\"email_destinatario\":\"Navergara22@gmail.com\",\"detalle\":\"cosmetico\",\"total\":4000,\"id_usuario\":\"45\",\"direccion\":\"camino quebrada verde 56 \",\"rut_remitente\":\"772047533\",\"nombre_remitente\":\"QUE COREANA SPA\",\"telefono_remitente\":\"973339691\",\"email_remitente\":\"yasna.cvl@gmail.com\",\"direccion_remitente\":\"la diocesis 816 casa b, pudahuel\"}]', 'pendiente', 4000, '2020-12-22 12:56:30', 45, NULL, NULL),
(192, 'kj09y3lv', '[{\"referencia\":\"1\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":19,\"peso\":\"\",\"rut_destinatario\":\"16852708K\",\"nombre_destinatario\":\"VICTOR LUENGO ARIAS\",\"telefono_destinatario\":\"964286951\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"1\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"JUAN DE DIOS AGUIRRE 1888, BARRIO PARAGUAL, LOS ANDES\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"223470600\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539\"}]', 'pagado', 4000, '2020-12-22 14:37:12', 37, '{\n    \"payment_id\": \"0ptwodxvgkh8\",\n    \"payment_url\": \"https://khipu.com/payment/info/0ptwodxvgkh8\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/0ptwodxvgkh8\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/0ptwodxvgkh8\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/0ptwodxvgkh8\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/0ptwodxvgkh8\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"aa7b6d22482ff6c42f7da417a7f2bf005eb201f4c8b643325502a3f29b8e27e6\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-23 17:29:29.843000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2312201429-0ptwodxvgkh8.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-24 17:24:44.213000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Home\",\n    \"payer_email\": \"\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-f1a28669-d1eb-4ed7-a08b-23ab3be85fe8\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kj09y3lv\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu');
INSERT INTO `pagos` (`id`, `orden_compra`, `data`, `estado`, `total`, `created_at`, `fk_id_usuario`, `transaction`, `medio`) VALUES
(194, 'kj0e7s3n', '[{\"referencia\":\"12524\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":13,\"peso\":\"\",\"rut_destinatario\":\"20529320-5\",\"nombre_destinatario\":\"JOCELIN OLIVARES\",\"telefono_destinatario\":\"+56 9 9845 7749\",\"email_destinatario\":\"boris.cortez@maroe.cl\",\"detalle\":\"Orden 12524\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"POB MANUEL RODRIGUEZ PAU MANUEL MONTT 450\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-22 16:40:23', 43, NULL, NULL),
(195, 'kj0ea3u7', '[{\"referencia\":\"12526\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":13,\"peso\":\"\",\"rut_destinatario\":\"20529321-3\",\"nombre_destinatario\":\"JESENIA OLIVARES\",\"telefono_destinatario\":\"+56 9 2011 5727\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12526\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"POB. MANUEL RODRIGUEZ PSJ MANUEL MONTT 450\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-22 16:42:11', 43, NULL, NULL),
(196, 'kj0ec9ev', '[{\"referencia\":\"12558\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":6,\"peso\":\"\",\"rut_destinatario\":\"13987542-7\",\"nombre_destinatario\":\"TERESA CABRERA NAVARRO\",\"telefono_destinatario\":\"+56 9 3779 6752\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12558\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\" DOCTOR SALAS 1110\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-22 16:43:52', 43, NULL, NULL),
(197, 'kj0edroq', '[{\"referencia\":\"12567\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":6,\"peso\":\"\",\"rut_destinatario\":\"15727708-1\",\"nombre_destinatario\":\"Cinthia Cianferoni\",\"telefono_destinatario\":\"+56 9 8639 7638\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12567\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Av Bernardo Ohiggins 01330, Valencia alto\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-22 16:45:02', 43, NULL, NULL),
(198, 'kj0ef7yc', '[{\"referencia\":\"12421\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":1,\"peso\":\"\",\"rut_destinatario\":\"16105721-5\",\"nombre_destinatario\":\"Gabriela Fleming DÃ­az\",\"telefono_destinatario\":\"+56 9 6175 5505\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12421\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"TÃ­bola 4472 la planchada rodelillo\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-22 16:46:10', 43, NULL, NULL),
(200, 'kj0f9if4', '[{\"referencia\":\"12293\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":2,\"peso\":\"\",\"rut_destinatario\":\"26209515-0\",\"nombre_destinatario\":\"Maritza briceÃ±o\",\"telefono_destinatario\":\"+56 9 5632 2421\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12293\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Calle jose yaÃ±ez pasaje los castaÃ±o Villa primavera bloc V numero 1150 piso 3 a\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-22 17:09:43', 43, NULL, NULL),
(201, 'kj0fhx9c', '[{\"referencia\":\"26945\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":25,\"peso\":\"\",\"rut_destinatario\":\"11111111-1\",\"nombre_destinatario\":\"Antonio Pino\",\"telefono_destinatario\":\"984595475\",\"email_destinatario\":\"angelalagosdiaz@gmail.com\",\"detalle\":\"26945\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Vicente huidobro 230\",\"rut_remitente\":\"16660893-7\",\"nombre_remitente\":\"Arena Para Mascotas\",\"telefono_remitente\":\"931029478\",\"email_remitente\":\"boris.cortez@maroe.cl\",\"direccion_remitente\":\"Buzeta 3558\"}]', 'pendiente', 4000, '2020-12-22 17:16:17', 43, NULL, NULL),
(202, 'kj1hzrxu', '[{\"referencia\":\"12550\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":19,\"peso\":\"\",\"rut_destinatario\":\"19448731-2\",\"nombre_destinatario\":\"JAVIERA LOBOS\",\"telefono_destinatario\":\" 9 4697 3776\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12550\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"LOS VILLARES PARADERO 6 S/N FRENTE AL 8000\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-23 11:13:54', 43, NULL, NULL),
(203, 'kj1i2tse', '[{\"referencia\":\"12496\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":5,\"peso\":\"\",\"rut_destinatario\":\"17275185-7\",\"nombre_destinatario\":\"Myriam LÃ³pez\",\"telefono_destinatario\":\"+56 9 7351 4506\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12496\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Marta Brunet 88 A, forestal\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-23 11:16:17', 43, NULL, NULL),
(204, 'kj1mlsha', '[{\"referencia\":\"VILLA EL ESFUERZO\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":11,\"peso\":\"\",\"rut_destinatario\":\"107843809\",\"nombre_destinatario\":\"OSVALDO ELADIO JARAMILLO\",\"telefono_destinatario\":\"968619640\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"QUILLOTA\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"CALLE PRINCIPAL NÂ° 6, VILLA EL ESFUERZO, QUILLOTA\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"223470600\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539, SANTIAGO\"}]', 'pagado', 4000, '2020-12-23 13:19:19', 37, NULL, NULL),
(205, 'kj1mw6g4', '[{\"referencia\":\"POBLACION SANTA TERESA\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":23,\"peso\":\"\",\"rut_destinatario\":\"215069109\",\"nombre_destinatario\":\"NATHALY PARRA CARRASCO\",\"telefono_destinatario\":\"955221754\",\"email_destinatario\":\"LOGISTICA@BOLOMEY.CL\",\"detalle\":\"AT. DELFINA CARRASCO\",\"total\":4000,\"id_usuario\":\"37\",\"direccion\":\"CARDENAL JOSE MARIA CARO NÂ° 1311, POB. SANTA TERESA, SAN ANTONIO\",\"rut_remitente\":\"875903004\",\"nombre_remitente\":\"CARLOS BOLOMEY SPA\",\"telefono_remitente\":\"223470600\",\"email_remitente\":\"LOGISTICA@BOLOMEY.CL\",\"direccion_remitente\":\"ALDUNATE 1539, SANTIAGO\"}]', 'pagado', 4000, '2020-12-23 13:27:24', 37, '{\n    \"payment_id\": \"zxu5t3nrsgxk\",\n    \"payment_url\": \"https://khipu.com/payment/info/zxu5t3nrsgxk\",\n    \"simplified_transfer_url\": \"https://app.khipu.com/payment/simplified/zxu5t3nrsgxk\",\n    \"transfer_url\": \"https://khipu.com/payment/manual/zxu5t3nrsgxk\",\n    \"webpay_url\": \"https://khipu.com/payment/webpayPsp/zxu5t3nrsgxk\",\n    \"hites_url\": null,\n    \"payme_url\": null,\n    \"app_url\": \"khipu:///pos/zxu5t3nrsgxk\",\n    \"ready_for_terminal\": false,\n    \"notification_token\": \"dade25164c54695de493381fcc4b949f2d0652755eb816394bcad3de1a06487f\",\n    \"receiver_id\": 363488,\n    \"conciliation_date\": {\n        \"date\": \"2020-12-23 16:41:07.065000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"subject\": \"Servicio Home Pack Chile\",\n    \"amount\": 4000,\n    \"currency\": \"CLP\",\n    \"status\": \"done\",\n    \"status_detail\": \"normal\",\n    \"body\": \"\",\n    \"picture_url\": \"https://homepackchile.cl/wp-content/uploads/2020/11/c0ca13fe-9f21-4506-b4ea-89707923588b.png\",\n    \"receipt_url\": \"https://s3.amazonaws.com/notifications.khipu.com/CPKH-2312201341-zxu5t3nrsgxk.pdf\",\n    \"return_url\": \"https://yitp.cl/khipu/finish.php\",\n    \"cancel_url\": \"https://yitp.cl/khipu/payFail.php\",\n    \"notify_url\": \"https://yitp.cl/khipu/demo-notify-js.php\",\n    \"notify_api_version\": \"1.3\",\n    \"expires_date\": {\n        \"date\": \"2020-12-24 16:27:25.254000\",\n        \"timezone_type\": 2,\n        \"timezone\": \"Z\"\n    },\n    \"attachment_urls\": [],\n    \"bank\": \"Banco desconocido\",\n    \"bank_id\": \"UNKNW\",\n    \"payer_name\": \"Carlos Bolomey Spa\",\n    \"payer_email\": \"logistica@bolomey.cl\",\n    \"personal_identifier\": \"\",\n    \"bank_account_number\": \"FAKE-3647c2bd-bcd9-4d42-b13d-abca81cca4b3\",\n    \"out_of_date_conciliation\": false,\n    \"transaction_id\": \"kj1mw6g4\",\n    \"custom\": \"\",\n    \"responsible_user_email\": \"homepackchile@gmail.com\",\n    \"send_reminders\": false,\n    \"send_email\": false,\n    \"payment_method\": \"webpay_psp\"\n}', 'Khipu'),
(206, 'kj1r3e6c', '[{\"referencia\":\"Extintores Lobo 27023\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":20,\"peso\":\"\",\"rut_destinatario\":\"11111111-1\",\"nombre_destinatario\":\"PABLO VARAS LOBO\",\"telefono_destinatario\":\"979094578\",\"email_destinatario\":\"pvaraslobo@hotmail.com\",\"detalle\":\"Esquina Chacabuco \",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Navarro 53\",\"rut_remitente\":\"16660893-7\",\"nombre_remitente\":\"APM\",\"telefono_remitente\":\"931029478\",\"email_remitente\":\"boris.cortez@maroe.cl\",\"direccion_remitente\":\"Buzeta 3558\"}]', 'pendiente', 4000, '2020-12-23 15:28:40', 43, NULL, NULL),
(207, 'kj1r6h31', '[{\"referencia\":\"27032\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":6,\"peso\":\"\",\"rut_destinatario\":\"11111111-1\",\"nombre_destinatario\":\"Barbara Alvial\",\"telefono_destinatario\":\"944380942\",\"email_destinatario\":\"barabara_alvial.22@outlook.cl\",\"detalle\":\"27032\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Alfonso Leng 528\",\"rut_remitente\":\"16660893-7\",\"nombre_remitente\":\"APM\",\"telefono_remitente\":\"931029478\",\"email_remitente\":\"boris.cortez@maroe.cl\",\"direccion_remitente\":\"Buzeta 3558\"}]', 'pendiente', 4000, '2020-12-23 15:31:03', 43, NULL, NULL),
(208, 'kj2vcqm8', '[{\"referencia\":\"no aplica\",\"fecha_ingreso\":\"pending\",\"origen\":20,\"destino\":29,\"peso\":0,\"rut_destinatario\":\"111111111\",\"nombre_destinatario\":\"francisca verdugo\",\"telefono_destinatario\":\"993217968\",\"email_destinatario\":\"pancha_v@hotmail.comm\",\"detalle\":\"no aplica\",\"total\":4165,\"id_usuario\":\"51\",\"direccion\":\"perez valenzuela 1517 depto 18\",\"rut_remitente\":\"119431395\",\"nombre_remitente\":\"patricia vargas\",\"telefono_remitente\":\"972115114\",\"email_remitente\":\"patricia.vrgs@gmail.com\",\"direccion_remitente\":\"navarro 53, san felipe\"},{\"referencia\":\"no aplica\",\"fecha_ingreso\":\"pending\",\"origen\":20,\"destino\":29,\"peso\":0,\"rut_destinatario\":\"111111111\",\"nombre_destinatario\":\"francisca verdugo\",\"telefono_destinatario\":\"993217968\",\"email_destinatario\":\"pancha_v@hotmail.comm\",\"detalle\":\"no aplica\",\"total\":4165,\"id_usuario\":\"51\",\"direccion\":\"perez valenzuela 1517 depto 18\",\"rut_remitente\":\"119431395\",\"nombre_remitente\":\"patricia vargas\",\"telefono_remitente\":\"972115114\",\"email_remitente\":\"patricia.vrgs@gmail.com\",\"direccion_remitente\":\"navarro 53, san felipe\"}]', 'pagado', 8330, '2020-12-24 10:15:26', 51, NULL, NULL),
(209, 'kj2vgqwv', '[{\"referencia\":\"no aplica\",\"fecha_ingreso\":\"pending\",\"origen\":20,\"destino\":29,\"peso\":0,\"rut_destinatario\":\"111111111\",\"nombre_destinatario\":\"francisca verdugo\",\"telefono_destinatario\":\"993217968\",\"email_destinatario\":\"pacha_v@hotmail.com\",\"detalle\":\"no aplica\",\"total\":4165,\"id_usuario\":\"51\",\"direccion\":\"perez valenzuela 1517 depto 18\",\"rut_remitente\":\"119431395\",\"nombre_remitente\":\"patricia vargas\",\"telefono_remitente\":\"972115114\",\"email_remitente\":\"patricia.vrgs@gmail.com\",\"direccion_remitente\":\"navarro 53, san felipe\"},{\"referencia\":\"no aplica\",\"fecha_ingreso\":\"pending\",\"origen\":20,\"destino\":29,\"peso\":0,\"rut_destinatario\":\"111111111\",\"nombre_destinatario\":\"francisca verdugo\",\"telefono_destinatario\":\"993217968\",\"email_destinatario\":\"pacha_v@hotmail.com\",\"detalle\":\"no aplica\",\"total\":4165,\"id_usuario\":\"51\",\"direccion\":\"perez valenzuela 1517 depto 18\",\"rut_remitente\":\"119431395\",\"nombre_remitente\":\"patricia vargas\",\"telefono_remitente\":\"972115114\",\"email_remitente\":\"patricia.vrgs@gmail.com\",\"direccion_remitente\":\"navarro 53, san felipe\"}]', 'pagado', 8330, '2020-12-24 10:18:33', 51, NULL, NULL),
(210, 'kj2vnb2w', '[{\"referencia\":\"no aplica\",\"fecha_ingreso\":\"pending\",\"origen\":20,\"destino\":29,\"peso\":0,\"rut_destinatario\":\"111111111\",\"nombre_destinatario\":\"carmen gloria verdugo\",\"telefono_destinatario\":\"992183547\",\"email_destinatario\":\"patrici.rvgs@gmail.com\",\"detalle\":\"no aplica\",\"total\":4165,\"id_usuario\":\"51\",\"direccion\":\"los nogales 1293 estancia el lirai colina\",\"rut_remitente\":\"119431395\",\"nombre_remitente\":\"patricia vargas\",\"telefono_remitente\":\"972115114\",\"email_remitente\":\"patricia.vrgs@gmail.com\",\"direccion_remitente\":\"navarro 53, san felipe\"}]', 'pagado', 4165, '2020-12-24 10:23:40', 51, NULL, NULL),
(211, 'kj2w79e7', '[{\"referencia\":\"12153 - 12167\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":6,\"peso\":\"\",\"rut_destinatario\":\"5334231-0\",\"nombre_destinatario\":\" Sara Pizarro T\",\"telefono_destinatario\":\"+56 9 3482 2347\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12153 - 12167\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"PoblaciÃ³n las rosas Las hortencias 1419\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-24 10:39:24', 43, NULL, NULL),
(212, 'kj2w9hcs', '[{\"referencia\":\"12710\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":3,\"peso\":\"\",\"rut_destinatario\":\"11386492-3\",\"nombre_destinatario\":\"Clara FernÃ¡ndez\",\"telefono_destinatario\":\"+56 9 6488 2213\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12710\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Calle Principal S/N campiche, PuchuncavÃ­\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-24 10:41:08', 43, NULL, NULL),
(213, 'kj2wcdcx', '[{\"referencia\":\"12705\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":5,\"peso\":\"\",\"rut_destinatario\":\"8176210-4\",\"nombre_destinatario\":\"CLAUDIA FERNANDEZ\",\"telefono_destinatario\":\" +56 9 9495 6316\",\"email_destinatario\":\"maroe@maroe.cl\",\"detalle\":\"12705\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"n CALLE DEL AGUA 67 CON HERRERA AGUA SANTA\",\"rut_remitente\":\"11111111-1\",\"nombre_remitente\":\"MAROE \",\"telefono_remitente\":\"562222222\",\"email_remitente\":\"NO@NO.CL\",\"direccion_remitente\":\"SANTIAGO\"}]', 'pendiente', 4000, '2020-12-24 10:43:23', 43, NULL, NULL),
(214, 'kj2zltas', '[{\"referencia\":\"Block 12, Depto 101\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":6,\"peso\":\"\",\"rut_destinatario\":\"11111111-1\",\"nombre_destinatario\":\"Daniela Garcia\",\"telefono_destinatario\":\"65553712\",\"email_destinatario\":\"danytoralexia@gmail.com\",\"detalle\":\"27081\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Alcalde Rene Rodriguez 1176 Block 12 Depto 101\",\"rut_remitente\":\"16660893-7\",\"nombre_remitente\":\"APM\",\"telefono_remitente\":\"931029478\",\"email_remitente\":\"boris.cortez@maroe.cl\",\"direccion_remitente\":\"Buzeta 3558\"}]', 'pendiente', 4000, '2020-12-24 12:14:42', 43, NULL, NULL),
(215, 'kj2zo0p9', '[{\"referencia\":\"Belloto Norte\",\"fecha_ingreso\":\"pending\",\"origen\":29,\"destino\":6,\"peso\":\"\",\"rut_destinatario\":\"11111111-1\",\"nombre_destinatario\":\"Barbara Alvial\",\"telefono_destinatario\":\"944380942\",\"email_destinatario\":\"barbara_alvial.22@outlook.cl\",\"detalle\":\"27048\",\"total\":4000,\"id_usuario\":\"43\",\"direccion\":\"Alfonso Leng 528\",\"rut_remitente\":\"16660893-7\",\"nombre_remitente\":\"Heber Rios\",\"telefono_remitente\":\"931029478\",\"email_remitente\":\"boris.cortez@maroe.cl\",\"direccion_remitente\":\"buzeta 3558\"}]', 'pendiente', 4000, '2020-12-24 12:16:25', 43, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `token`) VALUES
(11, 'nefifter@gmail.com', '483f4c3ee14093d15d1b866fc69a5f42d60af1ad24a40e547fbfe4d9f33461bf0942e49b66fd474d9f6e323b6b5fa5366386'),
(12, 'nefifter@gmail.com', '2afe788626e0831ca0afc4e86cb84a59398cbdea9242f7b163f70211dd438cb9f940b95781f9c4e65591fe1bf441fcfd4260'),
(13, 'yonatanpizarro21@hotmail.com', '40d51e986a0001f2100b5742d6b790532af801b6592bde2ce14a2f3b259d7ce63bc8a36f1eb077be426af6853b134157fecd'),
(14, 'yonatanpc65@gmail.com', 'bacb4c4dac4a3980430ceefb9fea768f25c1dcc27edd62d84b6d37bd1d5024d4a1a173cc75799110bdf93072be5d3a6d5a0b'),
(15, 'Nefifter@gmail.com', '8fa49758934591cec683bd292876ea86b90d7213ae6b77f13ba1f5f869dc1a86fed05a48d543d8934e75d5545e7e2d9f65b8'),
(16, 'Nefifter@gmail.com', '0aae1d008b6025c69c87d71003a2abbf509331afc2e5becb77d35bf88f4052cb24f8cb83818c04c073af9ed11816e022bfbd'),
(17, 'nefifter@gmail.com', '50a3e82e13fb0762b7524e09e1c48acad6a6f81dfbde49a324ebef0aa7a36a6f7e72194394e29545bc865446c3fa0a4ab505'),
(18, 'nefifter@gmail.com', '39d9c9dbf5d7771dc715beddfb8d09bc80b048984a7db8776a30ead737f4bf72dcd550725373245af4adb522e6f07bad8622');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_id_despacho` int(11) NOT NULL,
  `nombre_recepcion` varchar(800) DEFAULT NULL,
  `apellido_recepcion` varchar(800) DEFAULT NULL,
  `rut_recepcion` varchar(800) DEFAULT NULL,
  `motivo` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`id`, `fecha`, `estado`, `foto`, `fk_id_despacho`, `nombre_recepcion`, `apellido_recepcion`, `rut_recepcion`, `motivo`) VALUES
(186, '2020-12-15 11:27:48', 'ORDEN DE TRANSPORTE CREADA', NULL, 190, NULL, NULL, NULL, NULL),
(246, '2020-12-16 13:56:41', 'ENTREGADO', '/img/5fda3c48f0e88image.jpg', 190, 'Oscar', 'Guerra', '150919029', NULL),
(247, '2020-12-16 15:19:35', 'ORDEN DE TRANSPORTE CREADA', NULL, 198, NULL, NULL, NULL, NULL),
(248, '2020-12-16 15:21:31', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 198, NULL, NULL, NULL, NULL),
(249, '2020-12-16 22:02:21', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 198, NULL, NULL, NULL, NULL),
(269, '2020-12-17 11:39:08', 'EN TRÃNSITO A DESTINATARIO', NULL, 198, NULL, NULL, NULL, NULL),
(274, '2020-12-17 14:32:38', 'ENTREGADO', '/img/5fdb9635a34c61608226340986625816093600879261.jpg', 198, 'Paola', 'Pizqrro', '194486847', NULL),
(275, '2020-12-17 14:40:56', 'ORDEN DE TRANSPORTE CREADA', NULL, 221, NULL, NULL, NULL, NULL),
(276, '2020-12-17 15:54:16', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 221, NULL, NULL, NULL, NULL),
(277, '2020-12-17 16:25:02', 'ORDEN DE TRANSPORTE CREADA', NULL, 222, NULL, NULL, NULL, NULL),
(278, '2020-12-17 16:35:11', 'ORDEN DE TRANSPORTE CREADA', NULL, 223, NULL, NULL, NULL, NULL),
(279, '2020-12-17 16:35:11', 'ORDEN DE TRANSPORTE CREADA', NULL, 224, NULL, NULL, NULL, NULL),
(280, '2020-12-17 17:07:23', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 223, NULL, NULL, NULL, NULL),
(281, '2020-12-17 17:07:23', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 223, NULL, NULL, NULL, NULL),
(282, '2020-12-17 17:07:24', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 223, NULL, NULL, NULL, NULL),
(283, '2020-12-17 17:07:43', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 222, NULL, NULL, NULL, NULL),
(284, '2020-12-17 17:08:02', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 224, NULL, NULL, NULL, NULL),
(285, '2020-12-17 18:55:21', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 221, NULL, NULL, NULL, NULL),
(286, '2020-12-17 18:55:34', 'EN TRÃNSITO A DESTINATARIO', NULL, 221, NULL, NULL, NULL, NULL),
(287, '2020-12-17 18:56:26', 'ENTREGADO', '/img/5fdbd40a5d54016082421697526590817318082085198.jpg', 221, 'Omar ', 'Guerra', '102235266', NULL),
(288, '2020-12-17 20:45:54', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 222, NULL, NULL, NULL, NULL),
(289, '2020-12-17 20:45:57', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 222, NULL, NULL, NULL, NULL),
(290, '2020-12-17 20:46:15', 'EN TRÃNSITO A DESTINATARIO', NULL, 222, NULL, NULL, NULL, NULL),
(291, '2020-12-17 21:01:40', 'ENTREGADO', '/img/5fdbf163f011616082496673337492085349115840410.jpg', 222, 'Waldo ', 'Salinas', '82094342', NULL),
(292, '2020-12-17 21:14:41', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 223, NULL, NULL, NULL, NULL),
(293, '2020-12-17 21:14:59', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 224, NULL, NULL, NULL, NULL),
(294, '2020-12-17 21:15:00', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 224, NULL, NULL, NULL, NULL),
(295, '2020-12-18 11:24:35', 'EN TRÃNSITO A DESTINATARIO', NULL, 224, NULL, NULL, NULL, NULL),
(296, '2020-12-18 11:24:47', 'EN TRÃNSITO A DESTINATARIO', NULL, 223, NULL, NULL, NULL, NULL),
(297, '2020-12-18 11:24:47', 'EN TRÃNSITO A DESTINATARIO', NULL, 223, NULL, NULL, NULL, NULL),
(298, '2020-12-18 13:10:42', 'ORDEN DE TRANSPORTE CREADA', NULL, 225, NULL, NULL, NULL, NULL),
(299, '2020-12-18 13:15:47', 'ENTREGADO', '/img/5fdcd5b1e511816083081317828164065700925173200.jpg', 223, 'JosÃ© ', 'Vidal', '123527275', NULL),
(300, '2020-12-18 13:16:50', 'ENTREGADO', '/img/5fdcd5f1c2a2316083081983131516833485874284110.jpg', 224, 'Jose', 'Vidal', '123527275', NULL),
(301, '2020-12-18 13:20:44', 'ORDEN DE TRANSPORTE CREADA', NULL, 226, NULL, NULL, NULL, NULL),
(302, '2020-12-18 15:22:58', 'ORDEN DE TRANSPORTE CREADA', NULL, 227, NULL, NULL, NULL, NULL),
(303, '2020-12-18 15:31:07', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 227, NULL, NULL, NULL, NULL),
(304, '2020-12-18 16:09:07', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 225, NULL, NULL, NULL, NULL),
(305, '2020-12-18 16:09:07', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 225, NULL, NULL, NULL, NULL),
(306, '2020-12-18 16:09:21', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 226, NULL, NULL, NULL, NULL),
(314, '2020-12-18 17:45:59', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 225, NULL, NULL, NULL, NULL),
(315, '2020-12-18 17:47:01', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 226, NULL, NULL, NULL, NULL),
(316, '2020-12-18 17:47:27', 'EN TRÃNSITO A DESTINATARIO', NULL, 225, NULL, NULL, NULL, NULL),
(317, '2020-12-18 17:47:30', 'EN TRÃNSITO A DESTINATARIO', NULL, 226, NULL, NULL, NULL, NULL),
(319, '2020-12-18 18:49:47', 'ENTREGADO', '/img/5fdd23fa9dcc316083281588005659193933123194632.jpg', 225, 'Juan', 'Villaroel', '92627381', NULL),
(328, '2020-12-19 09:27:08', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 227, NULL, NULL, NULL, NULL),
(329, '2020-12-19 09:27:08', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 227, NULL, NULL, NULL, NULL),
(330, '2020-12-19 09:27:24', 'EN TRÃNSITO A DESTINATARIO', NULL, 227, NULL, NULL, NULL, NULL),
(331, '2020-12-19 12:20:23', 'ENTREGADO', '/img/5fde1a367d19616083911843551047027211001398780.jpg', 227, 'Kelly', 'Contreras', '145954517', NULL),
(333, '2020-12-21 10:20:00', 'ENTREGADO', '/img/5fe0a100eab2b16085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(334, '2020-12-21 10:20:21', 'ENTREGADO', '/img/5fe0a11538c3816085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(335, '2020-12-21 10:20:30', 'ENTREGADO', '/img/5fe0a11eb9e1816085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(336, '2020-12-21 10:22:44', 'ENTREGADO', '/img/5fe0a1a4eb3c216085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(337, '2020-12-21 10:23:33', 'ENTREGADO', '/img/5fe0a1d5396b816085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(338, '2020-12-21 10:24:42', 'ENTREGADO', '/img/5fe0a21a2365916085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(339, '2020-12-21 10:25:18', 'ENTREGADO', '/img/5fe0a23ecd1d316085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(340, '2020-12-21 10:27:44', 'ENTREGADO', '/img/5fe0a2d08553b16085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(341, '2020-12-21 10:29:01', 'ENTREGADO', '/img/5fe0a31d5762616085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(342, '2020-12-21 10:31:11', 'ENTREGADO', '/img/5fe0a39fecb4c16085567832255762325406160548689.jpg', 226, 'Alejandra', 'Ojeda', '137535734', NULL),
(343, '2020-12-21 11:54:33', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 231, NULL, NULL, NULL, NULL),
(349, '2020-12-21 13:20:48', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 234, NULL, NULL, NULL, NULL),
(357, '2020-12-21 15:58:41', 'ORDEN DE TRANSPORTE CREADA', NULL, 241, NULL, NULL, NULL, NULL),
(358, '2020-12-21 16:05:14', 'ORDEN DE TRANSPORTE CREADA', NULL, 242, NULL, NULL, NULL, NULL),
(359, '2020-12-21 16:09:55', 'ORDEN DE TRANSPORTE CREADA', NULL, 243, NULL, NULL, NULL, NULL),
(360, '2020-12-21 16:15:02', 'ORDEN DE TRANSPORTE CREADA', NULL, 244, NULL, NULL, NULL, NULL),
(361, '2020-12-21 16:45:15', 'ORDEN DE TRANSPORTE CREADA', NULL, 245, NULL, NULL, NULL, NULL),
(362, '2020-12-21 16:45:15', 'ORDEN DE TRANSPORTE CREADA', NULL, 246, NULL, NULL, NULL, NULL),
(363, '2020-12-21 16:45:15', 'ORDEN DE TRANSPORTE CREADA', NULL, 247, NULL, NULL, NULL, NULL),
(364, '2020-12-21 16:45:15', 'ORDEN DE TRANSPORTE CREADA', NULL, 248, NULL, NULL, NULL, NULL),
(365, '2020-12-21 16:45:15', 'ORDEN DE TRANSPORTE CREADA', NULL, 249, NULL, NULL, NULL, NULL),
(366, '2020-12-21 16:45:15', 'ORDEN DE TRANSPORTE CREADA', NULL, 250, NULL, NULL, NULL, NULL),
(367, '2020-12-21 16:54:45', 'ORDEN DE TRANSPORTE CREADA', NULL, 251, NULL, NULL, NULL, NULL),
(368, '2020-12-21 17:01:37', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 248, NULL, NULL, NULL, NULL),
(369, '2020-12-21 17:05:44', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 248, NULL, NULL, NULL, NULL),
(370, '2020-12-21 17:05:45', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 248, NULL, NULL, NULL, NULL),
(371, '2020-12-21 17:05:49', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 250, NULL, NULL, NULL, NULL),
(372, '2020-12-21 17:05:50', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 250, NULL, NULL, NULL, NULL),
(373, '2020-12-21 17:05:56', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 251, NULL, NULL, NULL, NULL),
(374, '2020-12-21 17:06:00', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 246, NULL, NULL, NULL, NULL),
(375, '2020-12-21 17:06:06', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 245, NULL, NULL, NULL, NULL),
(376, '2020-12-21 17:06:09', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 247, NULL, NULL, NULL, NULL),
(377, '2020-12-21 17:06:10', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 247, NULL, NULL, NULL, NULL),
(378, '2020-12-21 17:06:14', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 249, NULL, NULL, NULL, NULL),
(379, '2020-12-21 17:39:01', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 241, NULL, NULL, NULL, NULL),
(380, '2020-12-21 17:39:02', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 241, NULL, NULL, NULL, NULL),
(381, '2020-12-21 17:39:12', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 242, NULL, NULL, NULL, NULL),
(382, '2020-12-21 17:39:20', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 244, NULL, NULL, NULL, NULL),
(383, '2020-12-21 17:39:21', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 244, NULL, NULL, NULL, NULL),
(384, '2020-12-21 17:39:26', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 243, NULL, NULL, NULL, NULL),
(386, '2020-12-21 18:37:52', 'ORDEN DE TRANSPORTE CREADA', NULL, 253, NULL, NULL, NULL, NULL),
(387, '2020-12-21 20:05:55', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 241, NULL, NULL, NULL, NULL),
(388, '2020-12-21 20:07:17', 'EN TRÃNSITO A DESTINATARIO', NULL, 241, NULL, NULL, NULL, NULL),
(389, '2020-12-21 20:46:57', 'ENTREGADO', '/img/5fe133f15619f16085944014784698533668879524661.jpg', 241, 'Liliana ', 'Farias poblete', '174544166', NULL),
(395, '2020-12-21 23:32:56', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 231, NULL, NULL, NULL, NULL),
(396, '2020-12-21 23:33:00', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 234, NULL, NULL, NULL, NULL),
(397, '2020-12-21 23:33:02', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 242, NULL, NULL, NULL, NULL),
(398, '2020-12-21 23:33:04', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 243, NULL, NULL, NULL, NULL),
(399, '2020-12-21 23:33:07', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 244, NULL, NULL, NULL, NULL),
(400, '2020-12-21 23:33:09', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 245, NULL, NULL, NULL, NULL),
(401, '2020-12-21 23:33:11', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 246, NULL, NULL, NULL, NULL),
(402, '2020-12-21 23:33:13', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 247, NULL, NULL, NULL, NULL),
(403, '2020-12-21 23:33:15', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 248, NULL, NULL, NULL, NULL),
(404, '2020-12-21 23:33:17', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 249, NULL, NULL, NULL, NULL),
(405, '2020-12-21 23:33:19', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 250, NULL, NULL, NULL, NULL),
(406, '2020-12-21 23:33:21', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 251, NULL, NULL, NULL, NULL),
(407, '2020-12-22 08:22:05', 'EN TRÃNSITO A DESTINATARIO', NULL, 247, NULL, NULL, NULL, NULL),
(408, '2020-12-22 08:22:05', 'EN TRÃNSITO A DESTINATARIO', NULL, 247, NULL, NULL, NULL, NULL),
(409, '2020-12-22 08:22:23', 'EN TRÃNSITO A DESTINATARIO', NULL, 243, NULL, NULL, NULL, NULL),
(410, '2020-12-22 08:22:23', 'EN TRÃNSITO A DESTINATARIO', NULL, 243, NULL, NULL, NULL, NULL),
(411, '2020-12-22 08:22:46', 'EN TRÃNSITO A DESTINATARIO', NULL, 248, NULL, NULL, NULL, NULL),
(412, '2020-12-22 08:23:08', 'EN TRÃNSITO A DESTINATARIO', NULL, 246, NULL, NULL, NULL, NULL),
(413, '2020-12-22 08:23:10', 'EN TRÃNSITO A DESTINATARIO', NULL, 246, NULL, NULL, NULL, NULL),
(414, '2020-12-22 08:23:26', 'EN TRÃNSITO A DESTINATARIO', NULL, 250, NULL, NULL, NULL, NULL),
(415, '2020-12-22 08:23:56', 'EN TRÃNSITO A DESTINATARIO', NULL, 231, NULL, NULL, NULL, NULL),
(416, '2020-12-22 08:24:15', 'EN TRÃNSITO A DESTINATARIO', NULL, 234, NULL, NULL, NULL, NULL),
(417, '2020-12-22 08:24:48', 'EN TRÃNSITO A DESTINATARIO', NULL, 251, NULL, NULL, NULL, NULL),
(418, '2020-12-22 08:24:50', 'EN TRÃNSITO A DESTINATARIO', NULL, 242, NULL, NULL, NULL, NULL),
(419, '2020-12-22 08:24:56', 'EN TRÃNSITO A DESTINATARIO', NULL, 244, NULL, NULL, NULL, NULL),
(420, '2020-12-22 08:24:59', 'EN TRÃNSITO A DESTINATARIO', NULL, 245, NULL, NULL, NULL, NULL),
(421, '2020-12-22 08:25:01', 'EN TRÃNSITO A DESTINATARIO', NULL, 249, NULL, NULL, NULL, NULL),
(422, '2020-12-22 09:00:45', 'ENTREGADO', '/img/5fe1dfec6b50d16086384308079136339842693726133.jpg', 234, 'Jesus', 'Lauga', '156827959', NULL),
(423, '2020-12-22 09:29:04', 'ENTREGADO', '/img/5fe1e6900518016086401258706072494915556686567.jpg', 247, 'Gissela ', 'Pacheco', '158510413', NULL),
(424, '2020-12-22 09:44:04', 'ORDEN DE TRANSPORTE CREADA', NULL, 255, NULL, NULL, NULL, NULL),
(425, '2020-12-22 10:04:45', 'ENTREGADO', '/img/5fe1eeed0d55016086422678164363084391474428434.jpg', 231, 'Emili', 'Lizana', '197268123', NULL),
(426, '2020-12-22 10:43:47', 'ENTREGADO', '/img/5fe1f8125977c16086446120253116293638466826845.jpg', 248, 'Daniela ', 'Sandoval', '209597446', NULL),
(427, '2020-12-22 11:06:07', 'ENTREGADO', '/img/5fe1fd4ec892a16086459247224277116129506500218.jpg', 246, 'Paulina', 'Carrqsco', '15772181k', NULL),
(428, '2020-12-22 11:55:55', 'ENTREGADO', '/img/5fe208fb3993a16086489257046346331198185921065.jpg', 243, 'Paula', 'Solis', '17977884-k', NULL),
(429, '2020-12-22 12:55:01', 'ORDEN DE TRANSPORTE CREADA', NULL, 256, NULL, NULL, NULL, NULL),
(430, '2020-12-22 12:56:30', 'ORDEN DE TRANSPORTE CREADA', NULL, 257, NULL, NULL, NULL, NULL),
(441, '2020-12-22 14:37:12', 'ORDEN DE TRANSPORTE CREADA', NULL, 260, NULL, NULL, NULL, NULL),
(442, '2020-12-22 15:29:39', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 253, NULL, NULL, NULL, NULL),
(443, '2020-12-22 15:56:29', 'ENTREGADO', '/img/5fe2415ce9a9916086633542754811755348872422291.jpg', 244, 'Scarlet ', 'Vialmayer', '16702371-1', NULL),
(444, '2020-12-22 16:06:04', 'ENTREGADO', '/img/5fe2439bf3dc516086639079331521616581132492662.jpg', 245, 'Katherine Pavez ', 'Pavez', '12949130-2', NULL),
(445, '2020-12-22 16:17:17', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 255, NULL, NULL, NULL, NULL),
(446, '2020-12-22 16:17:17', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 255, NULL, NULL, NULL, NULL),
(447, '2020-12-22 16:36:26', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 260, NULL, NULL, NULL, NULL),
(448, '2020-12-22 16:36:26', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 260, NULL, NULL, NULL, NULL),
(450, '2020-12-22 16:40:23', 'ORDEN DE TRANSPORTE CREADA', NULL, 262, NULL, NULL, NULL, NULL),
(451, '2020-12-22 16:42:12', 'ORDEN DE TRANSPORTE CREADA', NULL, 263, NULL, NULL, NULL, NULL),
(452, '2020-12-22 16:43:53', 'ORDEN DE TRANSPORTE CREADA', NULL, 264, NULL, NULL, NULL, NULL),
(453, '2020-12-22 16:45:02', 'ORDEN DE TRANSPORTE CREADA', NULL, 265, NULL, NULL, NULL, NULL),
(454, '2020-12-22 16:46:10', 'ORDEN DE TRANSPORTE CREADA', NULL, 266, NULL, NULL, NULL, NULL),
(458, '2020-12-22 17:09:44', 'ORDEN DE TRANSPORTE CREADA', NULL, 268, NULL, NULL, NULL, NULL),
(460, '2020-12-22 17:16:18', 'ORDEN DE TRANSPORTE CREADA', NULL, 269, NULL, NULL, NULL, NULL),
(461, '2020-12-22 17:20:18', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 268, NULL, NULL, NULL, NULL),
(462, '2020-12-22 17:20:18', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 268, NULL, NULL, NULL, NULL),
(463, '2020-12-22 17:20:24', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 265, NULL, NULL, NULL, NULL),
(464, '2020-12-22 17:20:29', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 263, NULL, NULL, NULL, NULL),
(465, '2020-12-22 17:20:30', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 263, NULL, NULL, NULL, NULL),
(466, '2020-12-22 17:20:36', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 266, NULL, NULL, NULL, NULL),
(467, '2020-12-22 17:20:37', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 266, NULL, NULL, NULL, NULL),
(468, '2020-12-22 17:20:48', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 269, NULL, NULL, NULL, NULL),
(469, '2020-12-22 17:20:49', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 269, NULL, NULL, NULL, NULL),
(470, '2020-12-22 17:20:59', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 262, NULL, NULL, NULL, NULL),
(471, '2020-12-22 17:21:00', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 262, NULL, NULL, NULL, NULL),
(472, '2020-12-22 17:21:01', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 262, NULL, NULL, NULL, NULL),
(473, '2020-12-22 17:21:02', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 262, NULL, NULL, NULL, NULL),
(474, '2020-12-22 17:21:12', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 264, NULL, NULL, NULL, NULL),
(475, '2020-12-22 17:21:13', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 264, NULL, NULL, NULL, NULL),
(476, '2020-12-22 17:24:44', 'ENTREGADO', '/img/5fe2560c9d716D0CB4BC6-2FB0-4BD3-9EA9-E2596E870D5A.jpeg', 250, 'Javier', 'Escobar', '200130219', NULL),
(477, '2020-12-22 17:46:35', 'ACTUALIZADO A SOBRANCIAS', NULL, 242, NULL, NULL, NULL, 'Primer aviso'),
(478, '2020-12-22 17:46:44', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 257, NULL, NULL, NULL, NULL),
(479, '2020-12-22 17:46:46', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 256, NULL, NULL, NULL, NULL),
(480, '2020-12-22 17:50:14', 'EN TRÃNSITO A DESTINATARIO', NULL, 242, NULL, NULL, NULL, NULL),
(481, '2020-12-22 17:59:27', 'ENTREGADO', '/img/5fe25e2f6d8ce16086707368573609340057877013582.jpg', 242, 'Jorgue Eduardo', 'Jiilll', '18900669-1', NULL),
(482, '2020-12-22 18:16:30', 'ENTREGADO', '/img/5fe2622e59db91608671766957615808085347211947.jpg', 249, 'Isabel Maturana ', 'Gallardo', '11329434-5', NULL),
(483, '2020-12-22 19:14:10', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 263, NULL, NULL, NULL, NULL),
(484, '2020-12-22 19:14:11', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 263, NULL, NULL, NULL, NULL),
(485, '2020-12-22 19:14:43', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 262, NULL, NULL, NULL, NULL),
(486, '2020-12-22 19:14:43', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 262, NULL, NULL, NULL, NULL),
(487, '2020-12-22 19:15:18', 'EN TRÃNSITO A DESTINATARIO', NULL, 263, NULL, NULL, NULL, NULL),
(488, '2020-12-22 19:15:52', 'EN TRÃNSITO A DESTINATARIO', NULL, 262, NULL, NULL, NULL, NULL),
(489, '2020-12-22 19:18:37', 'ENTREGADO', '/img/5fe270bce4b93IMG_20201222_191737.jpg', 262, 'Joselyn ', 'Olivares', '205293205', NULL),
(490, '2020-12-22 19:25:12', 'ENTREGADO', '/img/5fe272489c47eIMG_20201222_191737.jpg', 263, 'Joselin', 'Olivares', '205293205', NULL),
(491, '2020-12-22 19:36:23', 'ENTREGADO', '/img/5fe274e717e4316086765507285387326329448589903.jpg', 251, 'Gladys ', 'Jaure', '10171746-1', NULL),
(492, '2020-12-22 20:11:52', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 256, NULL, NULL, NULL, NULL),
(493, '2020-12-22 20:12:08', 'EN TRÃNSITO A DESTINATARIO', NULL, 256, NULL, NULL, NULL, NULL),
(494, '2020-12-22 20:19:36', 'ENTREGADO', '/img/5fe27f088a44bIMG_20201222_201916.jpg', 256, 'Carlos', 'Lopez', '64555677', NULL),
(495, '2020-12-22 20:45:46', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 257, NULL, NULL, NULL, NULL),
(496, '2020-12-22 20:46:00', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 266, NULL, NULL, NULL, NULL),
(497, '2020-12-22 20:46:00', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 266, NULL, NULL, NULL, NULL),
(498, '2020-12-22 20:46:40', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 265, NULL, NULL, NULL, NULL),
(499, '2020-12-22 20:46:40', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 265, NULL, NULL, NULL, NULL),
(500, '2020-12-22 20:47:10', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 268, NULL, NULL, NULL, NULL),
(501, '2020-12-22 20:47:16', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 264, NULL, NULL, NULL, NULL),
(502, '2020-12-22 20:47:17', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 264, NULL, NULL, NULL, NULL),
(503, '2020-12-22 20:47:21', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 260, NULL, NULL, NULL, NULL),
(504, '2020-12-22 20:47:49', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 260, NULL, NULL, NULL, NULL),
(505, '2020-12-22 20:47:52', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 260, NULL, NULL, NULL, NULL),
(506, '2020-12-22 20:48:31', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 269, NULL, NULL, NULL, NULL),
(507, '2020-12-22 20:49:09', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 253, NULL, NULL, NULL, NULL),
(508, '2020-12-22 20:54:41', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 255, NULL, NULL, NULL, NULL),
(509, '2020-12-23 10:28:40', 'EN TRÃNSITO A DESTINATARIO', NULL, 253, NULL, NULL, NULL, NULL),
(510, '2020-12-23 10:28:51', 'EN TRÃNSITO A DESTINATARIO', NULL, 269, NULL, NULL, NULL, NULL),
(511, '2020-12-23 10:29:27', 'EN TRÃNSITO A DESTINATARIO', NULL, 268, NULL, NULL, NULL, NULL),
(512, '2020-12-23 10:29:44', 'EN TRÃNSITO A DESTINATARIO', NULL, 266, NULL, NULL, NULL, NULL),
(513, '2020-12-23 10:30:02', 'EN TRÃNSITO A DESTINATARIO', NULL, 265, NULL, NULL, NULL, NULL),
(514, '2020-12-23 10:30:22', 'EN TRÃNSITO A DESTINATARIO', NULL, 264, NULL, NULL, NULL, NULL),
(515, '2020-12-23 10:30:37', 'EN TRÃNSITO A DESTINATARIO', NULL, 260, NULL, NULL, NULL, NULL),
(516, '2020-12-23 10:31:23', 'EN TRÃNSITO A DESTINATARIO', NULL, 257, NULL, NULL, NULL, NULL),
(517, '2020-12-23 10:31:24', 'EN TRÃNSITO A DESTINATARIO', NULL, 257, NULL, NULL, NULL, NULL),
(518, '2020-12-23 10:31:41', 'EN TRÃNSITO A DESTINATARIO', NULL, 255, NULL, NULL, NULL, NULL),
(519, '2020-12-23 10:57:25', 'ENTREGADO', '/img/5fe34cc4ad25516087318076652328214897362621724.jpg', 264, 'Antonella', 'Albornoz', '13987542-7', NULL),
(520, '2020-12-23 11:13:55', 'ORDEN DE TRANSPORTE CREADA', NULL, 270, NULL, NULL, NULL, NULL),
(521, '2020-12-23 11:16:17', 'ORDEN DE TRANSPORTE CREADA', NULL, 271, NULL, NULL, NULL, NULL),
(522, '2020-12-23 11:34:23', 'ENTREGADO', '/img/5fe3556f5faa716087340447003027092471527088094.jpg', 265, 'Vialda', 'Vega berrios', '87521796', NULL),
(523, '2020-12-23 13:19:19', 'ORDEN DE TRANSPORTE CREADA', NULL, 272, NULL, NULL, NULL, NULL),
(524, '2020-12-23 13:41:11', 'ORDEN DE TRANSPORTE CREADA', NULL, 273, NULL, NULL, NULL, NULL),
(525, '2020-12-23 14:31:15', 'ENTREGADO', '/img/5fe37ee214a1416087446521031771483549941672175.jpg', 260, 'Esther', 'Tapia', '155548495', NULL),
(526, '2020-12-23 15:15:24', 'ENTREGADO', '/img/5fe3893c3ea2b16087472875152885019071143805670.jpg', 255, 'Sebastian', 'Ibaceta', '186807634', NULL),
(527, '2020-12-23 15:17:54', 'ENTREGADO', '/img/5fe389d2cae9216087474393067294663330863212845.jpg', 253, 'Sebastian', 'Ibaceta', '186807634', NULL),
(528, '2020-12-23 15:28:40', 'ORDEN DE TRANSPORTE CREADA', NULL, 274, NULL, NULL, NULL, NULL),
(529, '2020-12-23 15:31:03', 'ORDEN DE TRANSPORTE CREADA', NULL, 275, NULL, NULL, NULL, NULL),
(530, '2020-12-23 16:57:19', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 272, NULL, NULL, NULL, NULL),
(531, '2020-12-23 16:57:40', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 273, NULL, NULL, NULL, NULL),
(532, '2020-12-23 16:57:40', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 273, NULL, NULL, NULL, NULL),
(533, '2020-12-23 16:57:41', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 273, NULL, NULL, NULL, NULL),
(534, '2020-12-23 17:36:54', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 270, NULL, NULL, NULL, NULL),
(535, '2020-12-23 17:36:54', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 270, NULL, NULL, NULL, NULL),
(536, '2020-12-23 17:36:56', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 270, NULL, NULL, NULL, NULL),
(537, '2020-12-23 17:36:57', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 270, NULL, NULL, NULL, NULL),
(538, '2020-12-23 17:37:04', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 271, NULL, NULL, NULL, NULL),
(539, '2020-12-23 17:37:05', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 271, NULL, NULL, NULL, NULL),
(540, '2020-12-23 17:37:18', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 274, NULL, NULL, NULL, NULL),
(541, '2020-12-23 17:38:25', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 275, NULL, NULL, NULL, NULL),
(542, '2020-12-23 17:38:31', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 274, NULL, NULL, NULL, NULL),
(543, '2020-12-23 17:38:32', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 274, NULL, NULL, NULL, NULL),
(544, '2020-12-23 17:38:55', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 271, NULL, NULL, NULL, NULL),
(545, '2020-12-23 17:39:01', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 270, NULL, NULL, NULL, NULL),
(546, '2020-12-23 21:32:23', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 272, NULL, NULL, NULL, NULL),
(547, '2020-12-23 21:39:26', 'EN TRÃNSITO A DESTINATARIO', NULL, 272, NULL, NULL, NULL, NULL),
(548, '2020-12-23 21:43:09', 'ENTREGADO', '/img/5fe3e41da8af416087705630315035556469611371181.jpg', 272, 'Monica', 'Guzman', '80785534', NULL),
(549, '2020-12-23 21:44:30', 'ENTREGADO', '/img/5fe3e46e6412c16087706286066815253329328802181.jpg', 269, 'Mahonrie ', 'Espinoza ', '20140305*5', NULL),
(550, '2020-12-23 22:31:20', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 275, NULL, NULL, NULL, NULL),
(551, '2020-12-23 22:31:23', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 273, NULL, NULL, NULL, NULL),
(552, '2020-12-23 23:44:30', 'ACTUALIZADO A SOBRANCIAS', NULL, 268, NULL, NULL, NULL, 'Primer aviso'),
(553, '2020-12-23 23:46:29', 'ENTREGADO', '/img/5fe4010573ce216087779746994439151266779151380.jpg', 266, 'Gloria ', 'Fleming', '134272848', NULL),
(554, '2020-12-24 00:35:29', 'ENTREGADO', '/img/5fe40c81af265IMG-20201224-WA0000.jpg', 257, 'Nicole', 'Arancibia', '164878368', NULL),
(555, '2020-12-24 07:49:59', 'EN TRÃNSITO A DESTINATARIO', NULL, 268, NULL, NULL, NULL, NULL),
(556, '2020-12-24 08:53:05', 'EN TRÃNSITO A DESTINATARIO', NULL, 273, NULL, NULL, NULL, NULL),
(557, '2020-12-24 08:53:33', 'EN TRÃNSITO A DESTINATARIO', NULL, 270, NULL, NULL, NULL, NULL),
(558, '2020-12-24 08:53:40', 'EN TRÃNSITO A DESTINATARIO', NULL, 275, NULL, NULL, NULL, NULL),
(559, '2020-12-24 08:53:53', 'EN TRÃNSITO A DESTINATARIO', NULL, 274, NULL, NULL, NULL, NULL),
(560, '2020-12-24 08:54:14', 'EN TRÃNSITO A DESTINATARIO', NULL, 271, NULL, NULL, NULL, NULL),
(561, '2020-12-24 09:57:00', 'ENTREGADO', '/img/5fe4901b95fdc16088145904321460857949193116951.jpg', 274, 'Patricia', 'Vargas', '119431395', NULL),
(562, '2020-12-24 10:18:34', 'ORDEN DE TRANSPORTE CREADA', NULL, 276, NULL, NULL, NULL, NULL),
(563, '2020-12-24 10:18:34', 'ORDEN DE TRANSPORTE CREADA', NULL, 277, NULL, NULL, NULL, NULL),
(564, '2020-12-24 10:23:40', 'ORDEN DE TRANSPORTE CREADA', NULL, 278, NULL, NULL, NULL, NULL),
(565, '2020-12-24 10:26:59', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 278, NULL, NULL, NULL, NULL),
(566, '2020-12-24 10:27:01', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 277, NULL, NULL, NULL, NULL),
(567, '2020-12-24 10:27:03', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 276, NULL, NULL, NULL, NULL),
(568, '2020-12-24 10:39:24', 'ORDEN DE TRANSPORTE CREADA', NULL, 279, NULL, NULL, NULL, NULL),
(569, '2020-12-24 10:41:08', 'ORDEN DE TRANSPORTE CREADA', NULL, 280, NULL, NULL, NULL, NULL),
(570, '2020-12-24 10:43:23', 'ORDEN DE TRANSPORTE CREADA', NULL, 281, NULL, NULL, NULL, NULL),
(571, '2020-12-24 10:59:24', 'ENTREGADO', '/img/5fe49ebb9b6d816088183449694738329449070075512.jpg', 270, 'Javiera', 'Lobos', '194487312', NULL),
(572, '2020-12-24 12:14:42', 'ORDEN DE TRANSPORTE CREADA', NULL, 282, NULL, NULL, NULL, NULL),
(573, '2020-12-24 12:16:25', 'ORDEN DE TRANSPORTE CREADA', NULL, 283, NULL, NULL, NULL, NULL),
(574, '2020-12-24 12:24:24', 'ENTREGADO', '/img/5fe4b2a7a1b0c16088234358282432505729747063886.jpg', 268, 'JosÃ© pastor peÃ±a ', 'PeÃ±a ', '26374464-1', NULL),
(575, '2020-12-24 12:31:11', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 279, NULL, NULL, NULL, NULL),
(576, '2020-12-24 12:31:11', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 279, NULL, NULL, NULL, NULL),
(577, '2020-12-24 12:31:12', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 279, NULL, NULL, NULL, NULL),
(578, '2020-12-24 12:31:21', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 279, NULL, NULL, NULL, NULL),
(579, '2020-12-24 12:31:22', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 280, NULL, NULL, NULL, NULL),
(580, '2020-12-24 12:31:37', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 281, NULL, NULL, NULL, NULL),
(581, '2020-12-24 12:31:37', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 281, NULL, NULL, NULL, NULL),
(582, '2020-12-24 12:32:27', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 282, NULL, NULL, NULL, NULL),
(583, '2020-12-24 12:32:27', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 282, NULL, NULL, NULL, NULL),
(584, '2020-12-24 12:32:58', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 280, NULL, NULL, NULL, NULL),
(585, '2020-12-24 12:32:58', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 280, NULL, NULL, NULL, NULL),
(586, '2020-12-24 12:32:59', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 280, NULL, NULL, NULL, NULL),
(587, '2020-12-24 12:34:58', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 283, NULL, NULL, NULL, NULL),
(588, '2020-12-24 12:34:59', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 283, NULL, NULL, NULL, NULL),
(589, '2020-12-24 12:35:00', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 283, NULL, NULL, NULL, NULL),
(590, '2020-12-24 12:35:00', 'ENVÃO RECIBIDO POR HOMEPACKCHILE', NULL, 283, NULL, NULL, NULL, NULL),
(591, '2020-12-24 13:12:25', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 276, NULL, NULL, NULL, NULL),
(592, '2020-12-24 13:12:28', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 278, NULL, NULL, NULL, NULL),
(593, '2020-12-24 13:12:31', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 277, NULL, NULL, NULL, NULL),
(594, '2020-12-24 13:12:47', 'EN TRÃNSITO A DESTINATARIO', NULL, 278, NULL, NULL, NULL, NULL),
(595, '2020-12-24 13:12:52', 'EN TRÃNSITO A DESTINATARIO', NULL, 277, NULL, NULL, NULL, NULL),
(596, '2020-12-24 13:12:56', 'EN TRÃNSITO A DESTINATARIO', NULL, 276, NULL, NULL, NULL, NULL),
(597, '2020-12-24 13:13:54', 'ENTREGADO', '/img/5fe4be41bcf3e1608826415314597132059414925054.jpg', 278, 'Francisca ', 'Verdugo', '159369765', NULL),
(598, '2020-12-24 13:14:33', 'ENTREGADO', '/img/5fe4be6966b051608826458143352432579286254691.jpg', 276, 'Francisca', 'Verdugo', '159369765', NULL),
(599, '2020-12-24 13:57:48', 'ENTREGADO', '/img/5fe4c88b8fad316088290331682133741250894212761.jpg', 278, 'Carmen gloria', 'Verdugo', '89830400', NULL),
(600, '2020-12-24 14:04:58', 'ENTREGADO', '/img/5fe4ca39c13031608829421421298432306938372374.jpg', 277, 'Francisca', 'Verdugo', '159369765', NULL),
(601, '2020-12-24 14:35:02', 'ENTREGADO', '/img/5fe4d14619e5016088312465667452695913452248529.jpg', 273, 'Natalia Alejandra ', 'Parra ', '21506910-9', NULL),
(602, '2020-12-24 14:57:40', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 283, NULL, NULL, NULL, NULL),
(603, '2020-12-24 14:57:42', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 282, NULL, NULL, NULL, NULL),
(604, '2020-12-24 14:57:44', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 281, NULL, NULL, NULL, NULL),
(605, '2020-12-24 14:57:46', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 280, NULL, NULL, NULL, NULL),
(606, '2020-12-24 14:57:48', 'EN CENTRO DE DISTRIBUCIÃ“N', NULL, 279, NULL, NULL, NULL, NULL),
(607, '2020-12-24 17:09:44', 'EN TRÃNSITO A DESTINATARIO', NULL, 279, NULL, NULL, NULL, NULL),
(608, '2020-12-24 17:11:05', 'EN TRÃNSITO A DESTINATARIO', NULL, 282, NULL, NULL, NULL, NULL),
(609, '2020-12-24 17:11:26', 'EN TRÃNSITO A DESTINATARIO', NULL, 283, NULL, NULL, NULL, NULL),
(610, '2020-12-24 17:13:19', 'ACTUALIZADO A SOBRANCIAS', NULL, 275, NULL, NULL, NULL, 'Falta de tiempo'),
(611, '2020-12-24 17:15:05', 'EN TRÃNSITO A DESTINATARIO', NULL, 275, NULL, NULL, NULL, NULL),
(612, '2020-12-24 17:18:08', 'EN TRÃNSITO A DESTINATARIO', NULL, 281, NULL, NULL, NULL, NULL),
(613, '2020-12-24 17:18:13', 'EN TRÃNSITO A DESTINATARIO', NULL, 280, NULL, NULL, NULL, NULL),
(614, '2020-12-24 17:48:56', 'ENTREGADO', '/img/5fe4feb77f5d516088429192614410564124457217540.jpg', 279, 'Sara ', 'Pizaaro', '5334231-0', NULL),
(615, '2020-12-24 17:58:10', 'ENTREGADO', '/img/5fe500e2034d91608843470526541042569282509835.jpg', 281, 'Daniela', 'Poblete', '150823625', NULL),
(616, '2020-12-24 18:19:05', 'ENTREGADO', '/img/5fe505c95acec16088447287905447221495082948927.jpg', 271, 'Myriam ', 'Lopez', '172751857', NULL),
(617, '2020-12-24 18:36:28', 'ENTREGADO', '/img/5fe509db5eac016088457641881418729178527565951.jpg', 282, 'Daniela ', 'GarcÃ­a ', '17074474-8', NULL),
(618, '2020-12-29 10:23:32', 'ENTREGADO', '/img/5feb2dd371415IMG_20201228_094853.jpg', 280, 'Clara', 'Fernandez', '113864923', NULL),
(619, '2020-12-29 10:32:31', 'ENTREGADO', '/img/5feb2fef5eb77descarga.png', 283, 'Claudia', 'Fernandez', '17753949-k', NULL),
(620, '2020-12-29 10:34:26', 'ENTREGADO', '/img/5feb30629d06adescarga.png', 275, 'Claudia ', 'Fernandez', '17753949-K', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `perfil` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `rut` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `comuna` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `passwd` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `telefono`, `perfil`, `rut`, `email`, `fecha_nacimiento`, `comuna`, `passwd`) VALUES
(20, 'Home Pack Chile SPA.', 'homepackchile', '+56961831771', 'admin', '76629553-3', 'contacto@homepackchile.cl', '2020-10-27', 'Quillota', '0fd69aafc33d8a6ee8ac93cc8df93bcb'),
(28, 'Yonatan Pizarro CalderÃ³n', 'yonatanpc65', '934561195', 'Cliente', '18420862-8', 'yonatanpc65@gmail.com', '1993-02-19', 'La Calera', '7de2ca0db9df406d088fe2c2eb120f34'),
(29, 'Gamalier', 'Gamalier', '997854028', 'Cliente', '205307419', 'gamitogonzalezbork@gmail.com', '2001-03-01', 'La cruz', '7012a2b31da1c1cc27d8b0bbf7c5c61a'),
(30, 'nefi', 'nefi rodriguez', '977423010', 'chofer', '134272848', 'nefifter@gmail.com', '1978-06-26', 'quillota', '6d209e2c109403b3266941d2eedbb117'),
(31, 'Osvaldo jaramillo', 'Osvaldo jaramillo', '968619640', 'Cliente', '107843809', 'camionfurios8@gmail.com', '1966-09-16', 'Quillota', '2866821372cf294ae23a7f7408136987'),
(33, 'karem jaramillo', 'karem jaramillo', '962760236', 'admin', '17209830-4', 'karem.jaramillo2@gmail.com', '1989-07-15', 'quillota', 'ea5186032eee47a311ddf719d17c0ae2'),
(34, 'Ariel', 'Arielgonzalez', '966032365', 'Cliente', '165009363', 'arielgonzalezborquez@gmail.com', '1986-11-17', 'Melon', '36a38d7bfd79638961a319c867821843'),
(37, 'Carlos Bolomey Spa', 'Bolomey', '986802029', 'Empresa', '875903004', 'logistica@bolomey.cl', '1976-08-21', 'santiago', 'f502e0b1687249484f3ac6f07ede49a0'),
(38, 'Gadiel gonzalez', 'Gadielgonzalez', '972698930', 'chofer', '17789768k', 'gadielgb@hotmail.com', '1990-10-15', 'La cruz', '0fd69aafc33d8a6ee8ac93cc8df93bcb'),
(42, 'Alexandra Castro', 'Alexandra', '988936422', 'Cliente', '18257998k', 'alexandracastroponce@gmail.com', '1993-02-10', 'Limache', '9f7c27245bb52b1aad01ef5eda1c3563'),
(43, 'Heber RÃ­os MuÃ±oz', 'MAROE', '9931029478', 'Empresa', '166608937', 'hariosmunoz@gmail.com', '1987-09-21', 'EstaciÃ³n Central', 'c6040eabbf3622287e884fe2458e6685'),
(44, 'Francoise ', 'Francoise ', '990875209', 'Empresa', '160000309', 'francoiselauga@gmail.com', '1984-12-17', 'Quillota', '29abbdb7daef57ca08bb8ce2ab1e212c'),
(45, 'Que Coreana SpA', 'Yasnav', '975539691', 'Empresa', '772047533', 'yasna.cvl@gmail.com', '1988-05-26', 'Pudahuel', '16feb1badd7e4898c80111b732db6e8b'),
(46, 'Ping wang', 'Minipingsshop', '969000023', 'Cliente', '23794859-9', 'paulawangzhao@gmail.com', '1997-06-18', 'MaipÃº', '223ae7848a6b506d63d4128bff828347'),
(47, 'SebastiÃ¡n ibaceta Contreras ', 'Ibaceta ', '989786733 ', 'Cliente', '18680763-4', 'Servicios@grupoibaceta.com', '1994-08-19', 'San Esteban, los andes', 'bc821b635ee435c11a95fdc0c28c8bc7'),
(48, 'Jorge', 'Joshi', '+56979086213', 'Cliente', '18900669-1', 'dead_brother@hotmail.com', '1994-09-26', 'La Ligua', '7428fbb00aa20940f4f98cfccada8972'),
(49, 'yonatan admin', 'xjonatanx', 'PRUEBA', 'admin', '11519982k', 'yonatanpizarro21@hotmail.com', '1993-02-19', 'Home Pack Chile SPA.	', '18a9aff7425883fef4711442ca727dbb'),
(50, 'Emili Lizana Carvajal', 'Emili Lizana', '+56930368213', 'Cliente', '19726812-3', 'emili.lizana15@gmail.com', '1997-05-30', 'OlmuÃ©', 'd6fa3a2e5f047cd71ad90e56b494a103'),
(51, 'patricia vargas', 'patriciavargas', '972115114', 'Cliente', '119431395', 'patricia.vrgs@gmail.com', '1972-03-22', 'san felipe', 'a51fb975227d6640e4fe47854476d133'),
(52, 'Daniela Garcia Olguin', 'Daniela', '65553712', 'Cliente', '170744748', 'danytoralexia@gmail.com', '1989-06-06', 'Quilpue', '2fa6cfbd48eae9abcb78cfee86709ba8'),
(53, 'BÃ¡rbara alvial', 'Barbara', '+56944380942', 'Cliente', '191833082', 'barbara_alvial.22@outlook.cl', '1994-10-05', 'Quilpue', '018eb579fbf8da3f72e0017c9cff1692');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `despachos`
--
ALTER TABLE `despachos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_seguimiento` (`numero_seguimiento`),
  ADD KEY `fk_id_usuario` (`id_usuario`),
  ADD KEY `fk_id_pago` (`id_pago`),
  ADD KEY `fk_id_chofer` (`id_chofer`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_usuario_` (`fk_id_usuario`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orden_unica` (`orden_compra`),
  ADD KEY `id_usuario_fk` (`fk_id_usuario`);

--
-- Indices de la tabla `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_despacho` (`fk_id_despacho`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `despachos`
--
ALTER TABLE `despachos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT de la tabla `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `despachos`
--
ALTER TABLE `despachos`
  ADD CONSTRAINT `fk_id_chofer` FOREIGN KEY (`id_chofer`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_pago` FOREIGN KEY (`id_pago`) REFERENCES `pagos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD CONSTRAINT `fk_id_usuario_` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `id_usuario_fk` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `fk_id_despacho` FOREIGN KEY (`fk_id_despacho`) REFERENCES `despachos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
