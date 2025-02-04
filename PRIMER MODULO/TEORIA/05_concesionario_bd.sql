-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2015 a las 10:47:14
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `concesionario_profesor`
--
DROP DATABASE IF EXISTS `concesionario_profesor`;
CREATE DATABASE `concesionario_profesor` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `concesionario_profesor`;

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(9) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `id_persona`, `direccion`, `telefono`) VALUES
(1, 5, 'Vereda de los Peligros (Parla)', '800452111'),
(2, 6, 'Calle Retama (Guadalix de la Sierra)', '910753743'),
(3, 7, 'Plaza de Salesas (Madrid)', '906499644'),
(4, 8, 'Lugar del Extrarradio (Valdepiélagos)', '908729819'),
(5, 9, 'Calle de Marte (Tres Cantos)', '702096299'),
(6, 10, 'Plaza de Traspalacio (Robledo de Chavela)', '952395973'),
(7, 11, 'Calle de Tenerife (Becerril de la Sierra)', '934907233'),
(8, 12, 'Calle Burgos (Pedrezuela)', '990172771'),
(9, 13, 'Calle de Filipinas (Madrid)', '918569462'),
(10, 14, 'Calle de Puntallana (Madrid)', '959240282'),
(11, 15, 'Calle Peña las Monjas (Bustarviejo)', '563152228'),
(12, 16, 'Calle del Almirante (Madrid)', '873143875'),
(13, 17, 'Calle de la Fuente Santa (Talamanca de Jarama)', '932266814'),
(14, 18, 'Subida de los Almendros (Arganda del Rey)', '863676017'),
(15, 19, 'Calle de Salamanca (Madrid)', '700389522'),
(16, 20, 'Calle de San Blas (Humanes de Madrid)', '695294324'),
(17, 21, 'Calle de Pico de la Maliciosa (Madrid)', '988543067'),
(18, 22, 'Calle Isabel Allende (Parla)', '901065480'),
(19, 23, 'Calle Vistalegre (Colmenarejo)', '971922643'),
(20, 24, 'Calle Plutón (Paracuellos de Jarama)', '572818587'),
(21, 25, 'Paseo de María Teresa (Madrid)', '985317651'),
(22, 26, 'Calle de Fuentelencina (Madrid)', '659828498'),
(23, 27, 'Carretera de la Acebeda (Robregordo)', '789754651'),
(24, 28, 'Calle del Ferrocarril del Tajuña (Madrid)', '699925213'),
(25, 29, 'Calle de Luis Rodríguez Ontiveros (Alcobendas)', '740993175'),
(26, 30, 'Calle de los Lirios (Collado Mediano)', '565996035'),
(27, 31, 'Calle de la Artillería (Getafe)', '723467018'),
(28, 32, 'Avenida Dolores Ibárruri (Leganés)', '919411499'),
(29, 33, 'Calle de la Guía (Pozuelo de Alarcón)', '578069015'),
(30, 34, 'Calle Juan Miró (Torrejón de Velasco)', '794266343'),
(31, 35, 'Avenida de Pedro Díez (Madrid)', '861053533'),
(32, 36, 'Calle San Lucas (Villanueva del Pardillo)', '863366898'),
(33, 37, 'Calle Tierra de Fuego (Moralzarzal)', '612928583'),
(34, 38, 'Calle Valle del Esgueva (Torrejón de Ardoz)', '560245919'),
(35, 39, 'Avenida de Juan de Herrera (Madrid)', '742497280'),
(36, 40, 'Avenida de Francia (Arroyomolinos)', '953415636'),
(37, 41, 'Calle Antonio Machado (Arganda del Rey)', '684639483'),
(38, 42, 'Camino Viejo de Torrelaguna (Algete)', '600090894'),
(39, 43, 'Calle Cepa (Majadahonda)', '672655947'),
(40, 44, 'Carril Toledano (Navalcarnero)', '648295584'),
(41, 45, 'Parque Bodegón (Meco)', '705771423'),
(42, 46, 'Calle Río Eume (Boadilla del Monte)', '695798869'),
(43, 47, 'Calle Arba (Venturada)', '628047324'),
(44, 48, 'Camino de Chinchón (Colmenar de Oreja)', '722797848'),
(45, 49, 'Extraradio la Granja (Lozoya)', '899671968'),
(46, 50, 'Avenida de la Salud (Moralzarzal)', '660550962'),
(47, 51, 'Calle de los Sauces (Torrejón de Velasco)', '653799254'),
(48, 52, 'Calle Luxemburgo (Torrejón de Ardoz)', '995120555'),
(49, 53, 'Calle de las Trece Rosas (Fuenlabrada)', '958329070'),
(50, 54, 'Calle Francisco Alonso (Torrejón de Velasco)', '789063792'),
(51, 55, 'Calle de Cataluña (Tres Cantos)', '619046732'),
(52, 56, 'Calle Záncara (Venturada)', '608629237'),
(53, 57, 'Avenida Río Henares (Anchuelo)', '942900281'),
(54, 58, 'Calle de la Imagen (Meco)', '630982189'),
(55, 59, 'Calle Jade (Pozuelo de Alarcón)', '949076425'),
(56, 60, 'Calle de Collado de la Mina (Madrid)', '681681122'),
(57, 61, 'Calle Navalmedio (Molinos, Los)', '942764237'),
(58, 62, 'Calle de Carboneras (Madrid)', '703321520'),
(59, 63, 'Calle del Tomillo (Alpedrete)', '990294069'),
(60, 64, 'Plaza del Matadero (Aranjuez)', '666716348'),
(61, 65, 'Calle de Amador y Fernando (Madrid)', '765035234'),
(62, 66, 'Travesia de Lozoya (Gargantilla del Lozoya y Pinilla de Buitrago)', '611349861'),
(63, 67, 'Pasaje Gustavo Adolfo Bécquer (San Martín de la Vega)', '685738924'),
(64, 68, 'Avenida Castilla (Villaviciosa de Odón)', '738877363'),
(65, 69, 'Calle de los Siete Picos (Boalo, El)', '738561857'),
(66, 70, 'Calle Dalia (Santa María de la Alameda)', '999572981'),
(67, 71, 'Calle San José de Calasanz (Villanueva del Pardillo)', '866383548'),
(68, 72, 'Calle de Rosalía de Castro (Robledo de Chavela)', '626884854'),
(69, 73, 'Camino de Navalejos (Patones)', '659448183'),
(70, 74, 'Calle del Cerrillo (Cabrera, La)', '833778131'),
(71, 75, 'Calle Pablo Neruda (Miraflores de la Sierra)', '694316051');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_coches`
--

DROP TABLE IF EXISTS `clientes_coches`;
CREATE TABLE IF NOT EXISTS `clientes_coches` (
  `id_cliente_coche` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_coche` int(11) NOT NULL,
  `precio` int(6) NOT NULL,
  `fecha_venta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes_coches`
--

INSERT INTO `clientes_coches` (`id_cliente_coche`, `id_cliente`, `id_coche`, `precio`, `fecha_venta`) VALUES
(1, 1, 2, 9183, '2014-12-11 23:00:00'),
(2, 2, 12, 27852, '2013-09-19 22:00:00'),
(3, 3, 6, 44973, '2015-06-05 22:00:00'),
(4, 4, 22, 57608, '2013-02-24 23:00:00'),
(5, 5, 1, 7107, '2013-10-17 22:00:00'),
(6, 6, 20, 14239, '2014-12-31 23:00:00'),
(7, 7, 5, 52553, '2015-06-19 22:00:00'),
(8, 8, 10, 4336, '2014-03-28 23:00:00'),
(9, 9, 8, 21118, '2013-12-20 23:00:00'),
(10, 10, 25, 72575, '2014-02-14 23:00:00'),
(11, 11, 4, 42588, '2013-06-06 22:00:00'),
(12, 12, 11, 50202, '2014-08-29 22:00:00'),
(13, 13, 13, 32450, '2013-06-29 22:00:00'),
(14, 14, 19, 78380, '2013-10-23 22:00:00'),
(15, 15, 136, 85031, '2013-11-08 23:00:00'),
(16, 16, 144, 103845, '2014-03-02 23:00:00'),
(17, 17, 42, 158663, '2014-11-15 23:00:00'),
(18, 18, 82, 180745, '2013-07-08 22:00:00'),
(19, 19, 93, 197255, '2013-07-31 22:00:00'),
(20, 20, 46, 75820, '2014-12-18 23:00:00'),
(21, 21, 137, 105130, '2014-05-04 22:00:00'),
(22, 22, 107, 155039, '2014-01-22 23:00:00'),
(23, 23, 105, 140475, '2013-05-02 22:00:00'),
(24, 24, 145, 76365, '2014-04-10 22:00:00'),
(25, 25, 139, 145814, '2014-05-08 22:00:00'),
(26, 26, 122, 66702, '2014-06-09 22:00:00'),
(27, 27, 51, 50915, '2014-04-05 22:00:00'),
(28, 28, 39, 184511, '2013-07-09 22:00:00'),
(29, 29, 92, 71386, '2014-08-04 22:00:00'),
(30, 30, 50, 73923, '2013-11-05 23:00:00'),
(31, 31, 104, 127411, '2014-07-03 22:00:00'),
(32, 32, 61, 67296, '2014-06-19 22:00:00'),
(33, 33, 30, 177788, '2014-03-17 23:00:00'),
(34, 34, 98, 149504, '2013-01-12 23:00:00'),
(35, 35, 101, 66816, '2013-01-22 23:00:00'),
(36, 36, 115, 81910, '2013-03-20 23:00:00'),
(37, 37, 52, 110942, '2013-10-16 22:00:00'),
(38, 38, 102, 109512, '2014-11-04 23:00:00'),
(39, 39, 99, 112430, '2013-01-16 23:00:00'),
(40, 40, 27, 159325, '2013-06-02 22:00:00'),
(41, 41, 138, 105178, '2014-02-13 23:00:00'),
(42, 42, 75, 177869, '2013-02-05 23:00:00'),
(43, 43, 147, 156060, '2013-07-22 22:00:00'),
(44, 44, 32, 126194, '2013-04-14 22:00:00'),
(45, 45, 129, 185296, '2013-11-05 23:00:00'),
(46, 46, 36, 107894, '2013-10-31 23:00:00'),
(47, 47, 37, 51533, '2013-03-27 23:00:00'),
(48, 48, 88, 53666, '2013-10-12 22:00:00'),
(49, 49, 146, 144812, '2013-05-07 22:00:00'),
(50, 50, 133, 167524, '2013-02-23 23:00:00'),
(51, 51, 60, 85195, '2014-12-19 23:00:00'),
(52, 52, 43, 120638, '2015-06-18 22:00:00'),
(53, 53, 64, 67570, '2015-05-29 22:00:00'),
(54, 54, 121, 181864, '2014-03-27 23:00:00'),
(55, 55, 29, 140149, '2013-02-27 23:00:00'),
(56, 56, 89, 53888, '2013-01-07 23:00:00'),
(57, 57, 111, 115630, '2014-08-14 22:00:00'),
(58, 58, 117, 149788, '2013-02-14 23:00:00'),
(59, 59, 87, 98310, '2014-10-28 23:00:00'),
(60, 60, 110, 195624, '2013-09-04 22:00:00'),
(61, 61, 67, 168457, '2014-07-15 22:00:00'),
(62, 62, 48, 76224, '2014-06-18 22:00:00'),
(63, 63, 141, 191595, '2014-02-24 23:00:00'),
(64, 64, 116, 113346, '2014-03-18 23:00:00'),
(65, 65, 34, 168027, '2014-11-15 23:00:00'),
(66, 66, 131, 106610, '2014-02-28 23:00:00'),
(67, 67, 127, 72072, '2014-08-31 22:00:00'),
(68, 68, 84, 51185, '2014-07-02 22:00:00'),
(69, 69, 33, 86986, '2014-07-13 22:00:00'),
(70, 70, 59, 53592, '2013-12-15 23:00:00'),
(71, 71, 148, 124241, '2014-07-17 22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coches`
--

DROP TABLE IF EXISTS `coches`;
CREATE TABLE IF NOT EXISTS `coches` (
  `id_coche` int(11) NOT NULL,
  `matricula` varchar(7) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `coches`
--

INSERT INTO `coches` (`id_coche`, `matricula`, `id_modelo`, `color`) VALUES
(1, '3327ZZW', 1, 'Blanco vela'),
(2, '4892PJZ', 2, 'Oro'),
(3, '8813PDZ', 3, 'Lino'),
(4, '8969JBB', 4, 'Azul pizarra'),
(5, '9074NVL', 5, 'Azul oscuro'),
(6, '7332JMK', 6, 'Rojo violeta pálido'),
(7, '5213DYK', 7, 'Azul cadete'),
(8, '3694JPY', 8, 'Magenta oscuro'),
(9, '0403CFS', 9, 'Gris claro sgi'),
(10, '5317TYP', 10, 'Verde oscuro'),
(11, '7789RXJ', 11, 'Azul Alicia'),
(12, '4223GXP', 12, 'Verde oliva militar'),
(13, '7902WTG', 13, 'Cian claro'),
(14, '5511XSV', 14, 'Azul pizarra medio'),
(15, '5207SXJ', 15, 'Rojo violeta medio'),
(16, '9608GKB', 16, 'Burlywood'),
(17, '8724TBY', 17, 'Marfil'),
(18, '4428ZMM', 18, 'Fusta de papaya'),
(19, '4658MZN', 19, 'Añil'),
(20, '0325GBN', 20, 'Gris muy claro sgi'),
(21, '1215CBZ', 21, 'Violeta'),
(22, '2868LGX', 22, 'Arena ligera'),
(23, '8789HVZ', 23, 'Nata líquida'),
(24, '0488TMH', 24, 'Azul violeta'),
(25, '9038LNG', 25, 'Marfil'),
(26, '1179HCR', 26, 'Rojo violeta'),
(27, '3979YNT', 27, 'Cal Helada'),
(28, '4465VRV', 28, 'Azul acero'),
(29, '0776XCT', 26, 'Azul cadete'),
(30, '9048LLV', 29, 'Verde mar'),
(31, '9663JWB', 18, 'Bisque'),
(32, '2147XRM', 30, 'Cajón de arena'),
(33, '5361KKR', 31, 'Orquídea oscuro'),
(34, '5608KDP', 32, 'Azul pizarra'),
(35, '4432PMS', 33, 'Blanco plantación'),
(36, '4289JHK', 34, 'Púrpura'),
(37, '5317PHP', 35, 'Verde lima'),
(38, '8666FGS', 36, 'Gris pizarra oscuro'),
(39, '8135MBN', 36, 'Azul pizarra medio'),
(40, '0481KRB', 23, 'Rojo anaranjado'),
(41, '5953RKZ', 32, 'Blanco plantación'),
(42, '4792BSJ', 37, 'Vara de oro oscuro'),
(43, '0638XFF', 38, 'Azul Alicia'),
(44, '0389ZVX', 32, 'Verde mar claro'),
(45, '8014PNZ', 39, 'Gris brillante sgi'),
(46, '6501HKD', 40, 'Rojo oscuro'),
(47, '8496VJJ', 41, 'Azul real'),
(48, '2339DWW', 42, 'Gris muy claro sgi'),
(49, '8314TFR', 43, 'Verano caliente'),
(50, '7146VXX', 44, 'Cardo'),
(51, '5232NCV', 45, 'Cian'),
(52, '2602FZM', 46, 'Bisque'),
(53, '5970LKP', 47, 'Rojo indio'),
(54, '0203JMP', 48, 'Rojo violeta medio'),
(55, '9229XPG', 49, 'Salmón oscuro'),
(56, '8033WTB', 47, 'Verde mar'),
(57, '5779NWP', 50, 'Verde césped'),
(58, '9905TPS', 51, 'Cerceta sgi'),
(59, '2033NCX', 52, 'Magenta oscuro'),
(60, '5642DZL', 53, 'Vara de oro oscuro'),
(61, '9902FWP', 54, 'Blanco puro'),
(62, '1694KHH', 55, 'Gainsboro'),
(63, '7936VPP', 56, 'Trigo'),
(64, '2207NYZ', 57, 'Rosa claro'),
(65, '2305STP', 56, 'Gainsboro'),
(66, '5448ZGG', 58, 'Azul Alicia'),
(67, '9175DVM', 59, 'Rosa polvoriento'),
(68, '8790PGK', 44, 'Vara de oro amarilla claro'),
(69, '8877TXF', 60, 'Mocasín'),
(70, '4457KLB', 61, 'Tomate'),
(71, '2932YRL', 53, 'Verde mar oscuro'),
(72, '5918NYB', 62, 'Azul pizarra'),
(73, '9908GDZ', 63, 'Verde mar claro'),
(74, '8652VJG', 2, 'Verde'),
(75, '6046WJD', 64, 'Chocolate'),
(76, '6942PXS', 65, 'Cian claro'),
(77, '3652NLN', 66, 'Verde oliva oscuro'),
(78, '1216BTN', 25, 'Turquesa pálido'),
(79, '0992LWV', 67, 'Cal Helada'),
(80, '6361KZV', 68, 'Bronceado Caramelo'),
(81, '1479GTY', 69, 'Violeta'),
(82, '6556FYD', 70, 'Rojo'),
(83, '9695HNW', 71, 'Marfil colmillo'),
(84, '5461YXS', 72, 'Niebla matutina'),
(85, '9098XRM', 73, 'Azul cadete'),
(86, '2587XSV', 47, 'Azul claro sgi'),
(87, '0499XDD', 47, 'Crema de menta'),
(88, '3027GJZ', 74, 'Rosa'),
(89, '2690XPF', 75, 'Blanco sutil'),
(90, '7403GBJ', 76, 'Vara de oro'),
(91, '9056RJV', 77, 'Rojo violeta medio'),
(92, '1677RRG', 78, 'Turquesa pálido'),
(93, '8771NBR', 79, 'Verde oliva oscuro'),
(94, '3120HMM', 80, 'Cardo'),
(95, '5999ZFV', 63, 'Vara de oro pálido'),
(96, '0840RTY', 81, 'Marrón'),
(97, '1184SBB', 82, 'Rojo violeta medio'),
(98, '0950LXZ', 40, 'Vara de oro'),
(99, '1563TCH', 83, 'Blanco vela'),
(100, '9657SLD', 84, 'Blanco fantasma'),
(101, '2519TYK', 85, 'Verano caliente'),
(102, '9380KZW', 86, 'Ciruela'),
(103, '0165BDP', 87, 'Niebla matutina'),
(104, '6382GFJ', 88, 'Cian'),
(105, '1650GRJ', 89, 'Turquesa medio'),
(106, '4988KKV', 90, 'Rosa cálido'),
(107, '4352YJW', 91, 'Rosa profundo'),
(108, '7730PMS', 92, 'Pluma de Avestruz'),
(109, '3942DNG', 83, 'Marfil colmillo'),
(110, '7611LTM', 93, 'Cardo'),
(111, '3216RGH', 82, 'Azul capota'),
(112, '3514RZB', 94, 'Ladrillo refractario'),
(113, '3292CMF', 95, 'Chartreuse sgi'),
(114, '7882XBN', 96, 'Remolacha sgi'),
(115, '4168RYW', 97, 'Vara de oro claro'),
(116, '3412YTV', 98, 'Lino'),
(117, '8956JZZ', 99, 'Verde mar'),
(118, '7186GYX', 100, 'Gris débil'),
(119, '4701RPF', 101, 'Azul heráldico'),
(120, '6641MLS', 102, 'Blanco fantasma'),
(121, '9724TTN', 92, 'Vara de oro'),
(122, '2942HLK', 103, 'Azul oscuro'),
(123, '0189TMJ', 104, 'Azul heráldico'),
(124, '4933HZB', 105, 'Gris brillante sgi'),
(125, '1720RTP', 83, 'Rosa húmedo'),
(126, '6770YPF', 106, 'Chartreuse'),
(127, '7726WXZ', 107, 'Marfil colmillo'),
(128, '0450JMJ', 108, 'Verde velo'),
(129, '3490FXX', 8, 'Azul capota'),
(130, '5466JXL', 109, 'Velo de boda'),
(131, '3690XGN', 110, 'Oliva pálido'),
(132, '7135BYP', 111, 'Chartreuse sgi'),
(133, '0564XDZ', 112, 'Verde claro'),
(134, '0283SJS', 113, 'Azul naval'),
(135, '4831CWZ', 114, 'Rojo anaranjado'),
(136, '5584YZD', 115, 'Gris pizarra claro'),
(137, '9161RHS', 74, 'Verde mar claro'),
(138, '4198WWR', 116, 'Hojaldre de melocotón'),
(139, '6729DRT', 92, 'Nata líquida'),
(140, '9081GKJ', 117, 'Aguamarina'),
(141, '3230CMB', 118, 'Cajón de arena'),
(142, '9687RGG', 56, 'Naranja oscuro'),
(143, '9995LGV', 119, 'Gris sgi'),
(144, '6308FBN', 120, 'Blanco'),
(145, '4168GXS', 121, 'Azul oscuro'),
(146, '7239YNT', 9, 'Blanco fantasma'),
(147, '9091MNJ', 122, 'Orquídea medio'),
(148, '7059BCF', 123, 'Velo de boda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE IF NOT EXISTS `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`) VALUES
(42, 'Abarth'),
(15, 'Alfa Romeo'),
(48, 'Asia'),
(47, 'Aston Martin'),
(63, 'Audi'),
(21, 'Austin'),
(49, 'Bentley'),
(38, 'Bertone'),
(30, 'Cadillac'),
(44, 'Chevrolet'),
(55, 'Chrysler'),
(59, 'Citroen'),
(50, 'Corvette'),
(62, 'Dacia'),
(40, 'Daewoo'),
(20, 'Daihatsu'),
(64, 'Daimler'),
(28, 'Dodge'),
(53, 'Ferrari'),
(27, 'Fiat'),
(35, 'Ford'),
(43, 'Galloper'),
(37, 'Hyundai'),
(16, 'Infiniti'),
(7, 'Iveco-pegaso'),
(58, 'Jaguar'),
(33, 'Jeep'),
(34, 'Lada'),
(26, 'Lamborghini'),
(11, 'Lancia'),
(9, 'Land-rover'),
(45, 'Ldv'),
(12, 'Lexus'),
(18, 'Lotus'),
(36, 'Mahindra'),
(2, 'Maybach'),
(13, 'Mazda'),
(52, 'Mercedes-benz'),
(17, 'Mg'),
(8, 'Mini'),
(29, 'Mitsubishi'),
(23, 'Morgan'),
(22, 'Nissan'),
(32, 'Opel'),
(57, 'Peugeot'),
(1, 'Pontiac'),
(19, 'Porsche'),
(56, 'Renault'),
(4, 'Rolls-royce'),
(31, 'Rover'),
(61, 'Saab'),
(60, 'Santana'),
(25, 'Seat'),
(5, 'Skoda'),
(46, 'Smart'),
(51, 'Ssangyong'),
(41, 'Suzuki'),
(39, 'Talbot'),
(10, 'Tata'),
(6, 'Toyota'),
(24, 'Umm'),
(14, 'Vaz'),
(3, 'Volkswagen'),
(54, 'Wartburg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mecanicos`
--

DROP TABLE IF EXISTS `mecanicos`;
CREATE TABLE IF NOT EXISTS `mecanicos` (
  `id_mecanico` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `salario` int(4) NOT NULL,
  `fecha_contrato` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mecanicos`
--

INSERT INTO `mecanicos` (`id_mecanico`, `id_persona`, `salario`, `fecha_contrato`) VALUES
(1, 1, 1016, '2002-10-10'),
(2, 2, 1293, '2000-04-27'),
(3, 3, 1073, '2012-10-12'),
(4, 4, 1226, '2004-05-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mecanicos_coches`
--

DROP TABLE IF EXISTS `mecanicos_coches`;
CREATE TABLE IF NOT EXISTS `mecanicos_coches` (
  `id_mecanicos_coches` int(11) NOT NULL,
  `id_mecanico` int(11) NOT NULL,
  `id_coche_usado` int(11) NOT NULL,
  `fecha_trabajo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `horas` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mecanicos_coches`
--

INSERT INTO `mecanicos_coches` (`id_mecanicos_coches`, `id_mecanico`, `id_coche_usado`, `fecha_trabajo`, `horas`) VALUES
(1, 4, 1, '2013-10-08 22:00:00', 6),
(2, 4, 1, '2013-10-10 22:00:00', 2),
(3, 3, 1, '2013-10-13 22:00:00', 2),
(4, 4, 1, '2013-10-16 22:00:00', 4),
(5, 4, 2, '2014-12-07 23:00:00', 6),
(6, 2, 2, '2014-12-08 23:00:00', 5),
(7, 1, 3, '2015-06-07 22:00:00', 2),
(8, 3, 4, '2013-06-03 22:00:00', 1),
(9, 3, 4, '2013-06-04 22:00:00', 3),
(10, 3, 5, '2015-06-15 22:00:00', 1),
(11, 1, 5, '2015-06-16 22:00:00', 6),
(12, 1, 5, '2015-06-17 22:00:00', 3),
(13, 2, 6, '2015-05-29 22:00:00', 2),
(14, 2, 6, '2015-05-30 22:00:00', 6),
(15, 4, 6, '2015-05-31 22:00:00', 5),
(16, 3, 6, '2015-06-03 22:00:00', 1),
(17, 4, 7, '2014-06-08 22:00:00', 2),
(18, 3, 7, '2014-06-10 22:00:00', 6),
(19, 2, 7, '2014-06-12 22:00:00', 6),
(20, 1, 7, '2014-06-14 22:00:00', 3),
(21, 4, 8, '2013-12-15 23:00:00', 6),
(22, 4, 8, '2013-12-17 23:00:00', 3),
(23, 1, 9, '2014-03-12 23:00:00', 3),
(24, 1, 10, '2014-03-21 23:00:00', 1),
(25, 2, 10, '2014-03-23 23:00:00', 6),
(26, 3, 10, '2014-03-24 23:00:00', 2),
(27, 4, 10, '2014-03-27 23:00:00', 5),
(28, 3, 11, '2014-08-25 22:00:00', 6),
(29, 3, 11, '2014-08-26 22:00:00', 1),
(30, 3, 12, '2013-09-17 22:00:00', 3),
(31, 4, 12, '2013-09-18 22:00:00', 5),
(32, 3, 13, '2013-06-26 22:00:00', 3),
(33, 4, 13, '2013-06-27 22:00:00', 4),
(34, 2, 14, '2014-06-27 22:00:00', 6),
(35, 1, 14, '2014-06-29 22:00:00', 3),
(36, 2, 14, '2014-07-01 22:00:00', 3),
(37, 2, 14, '2014-07-04 22:00:00', 3),
(38, 1, 15, '2014-01-12 23:00:00', 3),
(39, 1, 15, '2014-01-14 23:00:00', 2),
(40, 3, 15, '2014-01-16 23:00:00', 2),
(41, 2, 16, '2013-11-28 23:00:00', 5),
(42, 1, 16, '2013-11-30 23:00:00', 1),
(43, 1, 16, '2013-12-01 23:00:00', 4),
(44, 3, 17, '2015-06-06 22:00:00', 3),
(45, 4, 17, '2015-06-09 22:00:00', 3),
(46, 1, 17, '2015-06-12 22:00:00', 2),
(47, 3, 17, '2015-06-14 22:00:00', 5),
(48, 4, 18, '2014-02-12 23:00:00', 3),
(49, 1, 18, '2014-02-13 23:00:00', 6),
(50, 2, 18, '2014-02-15 23:00:00', 2),
(51, 4, 18, '2014-02-16 23:00:00', 5),
(52, 4, 19, '2013-10-16 22:00:00', 3),
(53, 1, 19, '2013-10-19 22:00:00', 1),
(54, 2, 19, '2013-10-20 22:00:00', 4),
(55, 3, 20, '2014-12-24 23:00:00', 1),
(56, 4, 20, '2014-12-27 23:00:00', 6),
(57, 2, 20, '2014-12-30 23:00:00', 1),
(58, 2, 21, '2014-07-06 22:00:00', 3),
(59, 1, 21, '2014-07-07 22:00:00', 3),
(60, 1, 21, '2014-07-09 22:00:00', 1),
(61, 4, 21, '2014-07-12 22:00:00', 3),
(62, 2, 22, '2013-02-19 23:00:00', 3),
(63, 1, 22, '2013-02-20 23:00:00', 2),
(64, 2, 22, '2013-02-22 23:00:00', 3),
(65, 1, 22, '2013-02-23 23:00:00', 1),
(66, 3, 23, '2014-04-14 22:00:00', 6),
(67, 1, 23, '2014-04-16 22:00:00', 3),
(68, 3, 24, '2013-03-01 23:00:00', 6),
(69, 3, 24, '2013-03-03 23:00:00', 2),
(70, 3, 25, '2014-02-05 23:00:00', 1),
(71, 3, 25, '2014-02-08 23:00:00', 2),
(72, 2, 25, '2014-02-11 23:00:00', 3),
(73, 4, 26, '2014-01-26 23:00:00', 3),
(74, 4, 26, '2014-01-29 23:00:00', 6),
(75, 1, 26, '2014-01-31 23:00:00', 3),
(76, 4, 26, '2014-02-03 23:00:00', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

DROP TABLE IF EXISTS `modelos`;
CREATE TABLE IF NOT EXISTS `modelos` (
  `id_modelo` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id_modelo`, `id_marca`, `nombre`) VALUES
(1, 1, 'Firebird'),
(2, 2, 'Maybach'),
(3, 3, 'Santana'),
(4, 4, 'Phantom'),
(5, 5, 'S'),
(6, 6, 'Mr2'),
(7, 7, 'Daily'),
(8, 8, 'Paceman'),
(9, 9, 'Range Rover Evoque'),
(10, 10, 'Xenon'),
(11, 11, 'Ypsilon'),
(12, 10, 'Grand Safari'),
(13, 5, 'Scout'),
(14, 12, 'Is250'),
(15, 13, '626'),
(16, 14, '112 Stawra'),
(17, 10, 'Indica'),
(18, 8, 'Mini'),
(19, 15, 'Gt'),
(20, 6, 'Carina E'),
(21, 16, 'M'),
(22, 17, 'Zt'),
(23, 18, 'Exige'),
(24, 19, 'Cayman'),
(25, 20, 'Rocky'),
(26, 21, 'Montego'),
(27, 22, 'Prairie'),
(28, 23, '44'),
(29, 22, 'Juke'),
(30, 24, '121'),
(31, 25, 'Malaga'),
(32, 26, 'Aventador'),
(33, 27, 'Palio Weekend'),
(34, 28, 'Nitro'),
(35, 29, 'Montero Sport'),
(36, 30, 'Seville'),
(37, 29, 'L200'),
(38, 31, '75'),
(39, 32, 'Mokka'),
(40, 33, 'Wrangler'),
(41, 34, 'Kalina'),
(42, 35, 'Pick Up'),
(43, 8, 'Countryman'),
(44, 24, '100'),
(45, 36, 'Thar'),
(46, 37, 'Atos'),
(47, 38, 'Freeclimber Diesel'),
(48, 39, 'Samba'),
(49, 40, 'Kalos'),
(50, 41, 'Ignis'),
(51, 33, 'Patriot'),
(52, 42, '500c'),
(53, 43, 'Santamo'),
(54, 25, 'Ronda'),
(55, 44, 'Tacuma'),
(56, 45, 'Maxus'),
(57, 26, 'Gallardo'),
(58, 27, 'Strada'),
(59, 19, '911'),
(60, 10, 'Sumo'),
(61, 46, 'Fortwo'),
(62, 47, 'Cygnet'),
(63, 48, 'Rocsta'),
(64, 49, 'Azure'),
(65, 25, 'Altea'),
(66, 50, 'Corvette'),
(67, 43, 'Super Exceed'),
(68, 22, 'Primera'),
(69, 9, 'Defender'),
(70, 51, 'Korando Kj'),
(71, 25, 'Altea Xl'),
(72, 52, 'Clase Cl'),
(73, 44, 'Epica'),
(74, 4, 'Park Ward'),
(75, 53, '430'),
(76, 17, 'Zr'),
(77, 42, '695'),
(78, 4, 'Siver Dawn'),
(79, 42, 'Punto'),
(80, 22, 'Xtrail'),
(81, 29, '3000 Gt'),
(82, 16, 'Fx'),
(83, 54, '353'),
(84, 19, '928'),
(85, 55, 'Crossfire'),
(86, 36, 'Goa Pickup'),
(87, 31, 'Streetwise'),
(88, 53, '599'),
(89, 34, 'Stawra 2110'),
(90, 56, 'Master'),
(91, 21, 'Maestro'),
(92, 34, 'Samara'),
(93, 49, 'Brooklands'),
(94, 57, '605'),
(95, 20, 'Charade'),
(96, 14, '214'),
(97, 28, 'Caliber'),
(98, 34, 'Sagona'),
(99, 52, 'Sls Amg'),
(100, 23, 'Roadster'),
(101, 31, 'Mini'),
(102, 58, 'Xtype'),
(103, 29, '300 Gt'),
(104, 10, 'Aria'),
(105, 31, '200'),
(106, 59, 'Berlingo First'),
(107, 9, 'Discovery 4'),
(108, 36, 'Pikup'),
(109, 30, 'Xlr'),
(110, 11, 'Musa'),
(111, 40, 'Nubira'),
(112, 60, '300'),
(113, 61, '94x'),
(114, 40, 'Compact'),
(115, 29, 'Asx'),
(116, 61, '95'),
(117, 62, 'Lodgy'),
(118, 32, 'Ampera'),
(119, 63, 'Rs4'),
(120, 52, '300'),
(121, 15, '145'),
(122, 39, 'Horizon'),
(123, 64, 'Six');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevos`
--

DROP TABLE IF EXISTS `nuevos`;
CREATE TABLE IF NOT EXISTS `nuevos` (
  `id_coche_nuevo` int(11) NOT NULL,
  `id_coche` int(11) NOT NULL,
  `garantia` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nuevos`
--

INSERT INTO `nuevos` (`id_coche_nuevo`, `id_coche`, `garantia`) VALUES
(1, 27, 1),
(2, 28, 1),
(3, 29, 4),
(4, 30, 5),
(5, 31, 1),
(6, 32, 3),
(7, 33, 1),
(8, 34, 2),
(9, 35, 5),
(10, 36, 4),
(11, 37, 2),
(12, 38, 5),
(13, 39, 5),
(14, 40, 4),
(15, 41, 1),
(16, 42, 3),
(17, 43, 1),
(18, 44, 3),
(19, 45, 2),
(20, 46, 5),
(21, 47, 1),
(22, 48, 5),
(23, 49, 2),
(24, 50, 1),
(25, 51, 4),
(26, 52, 1),
(27, 53, 2),
(28, 54, 3),
(29, 55, 1),
(30, 56, 1),
(31, 57, 4),
(32, 58, 1),
(33, 59, 5),
(34, 60, 2),
(35, 61, 5),
(36, 62, 2),
(37, 63, 5),
(38, 64, 1),
(39, 65, 3),
(40, 66, 5),
(41, 67, 4),
(42, 68, 5),
(43, 69, 4),
(44, 70, 3),
(45, 71, 5),
(46, 72, 3),
(47, 73, 1),
(48, 74, 4),
(49, 75, 5),
(50, 76, 4),
(51, 77, 5),
(52, 78, 4),
(53, 79, 2),
(54, 80, 3),
(55, 81, 4),
(56, 82, 5),
(57, 83, 5),
(58, 84, 3),
(59, 85, 3),
(60, 86, 3),
(61, 87, 4),
(62, 88, 1),
(63, 89, 1),
(64, 90, 5),
(65, 91, 1),
(66, 92, 2),
(67, 93, 1),
(68, 94, 1),
(69, 95, 2),
(70, 96, 5),
(71, 97, 2),
(72, 98, 4),
(73, 99, 4),
(74, 100, 3),
(75, 101, 1),
(76, 102, 2),
(77, 103, 2),
(78, 104, 2),
(79, 105, 4),
(80, 106, 3),
(81, 107, 1),
(82, 108, 5),
(83, 109, 1),
(84, 110, 4),
(85, 111, 2),
(86, 112, 1),
(87, 113, 2),
(88, 114, 5),
(89, 115, 2),
(90, 116, 1),
(91, 117, 3),
(92, 118, 5),
(93, 119, 4),
(94, 120, 2),
(95, 121, 4),
(96, 122, 3),
(97, 123, 1),
(98, 124, 4),
(99, 125, 1),
(100, 126, 2),
(101, 127, 2),
(102, 128, 1),
(103, 129, 5),
(104, 130, 5),
(105, 131, 1),
(106, 132, 1),
(107, 133, 5),
(108, 134, 4),
(109, 135, 4),
(110, 136, 5),
(111, 137, 1),
(112, 138, 1),
(113, 139, 1),
(114, 140, 1),
(115, 141, 1),
(116, 142, 5),
(117, 143, 4),
(118, 144, 2),
(119, 145, 5),
(120, 146, 1),
(121, 147, 1),
(122, 148, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id_persona` int(11) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `dni`, `nombre`, `apellidos`) VALUES
(1, '59886552A', 'Mariana', 'Placencia Bordales'),
(2, '44168636B', 'Tula', 'Martinena Corcoba'),
(3, '98064336H', 'Saturnina', 'Pajazo Mendi'),
(4, '57235912K', 'Ayax', 'Miranes Pelayo'),
(5, '27861365Q', 'Fabiela', 'Oñatibia Arteaga'),
(6, '55132428W', 'Celio', 'Zaldierna Soret'),
(7, '20140531Y', 'Exaltación', 'Barril Cejudo'),
(8, '23316083V', 'Ihuen', 'Carbajo Corres'),
(9, '71444251H', 'Sayi', 'Izuzquiza Gotor'),
(10, '30492920A', 'Modesta', 'Amandi Guerrero'),
(11, '83596914X', 'Doralisa', 'Varo. Plaza'),
(12, '41925384H', 'Cristóbal', 'Caborredondo Villacis'),
(13, '74223377P', 'Valente', 'Zaitegui Coviella'),
(14, '93255533D', 'Nayla', 'Guazo Navas'),
(15, '32872927Q', 'Leal', 'Cuerva Piñeiro'),
(16, '14895814W', 'Greta', 'Garagorri Sotres'),
(17, '79092702A', 'Clidia', 'Talaya Caller'),
(18, '73037249J', 'Fileas', 'Barrientos Autran'),
(19, '51829513W', 'Unelen ', 'Alija Oliveros'),
(20, '32474501L', 'Huara', 'Alzolaras Corton'),
(21, '26295068L', 'Madelaine', 'Sauto Salamanca'),
(22, '39147703R', 'Francesca', 'Inarraza Alison'),
(23, '56343527J', 'Judit', 'Oria Frade'),
(24, '59049136V', 'Vivienne', 'Calon San'),
(25, '28392067Q', 'Ifigenia', 'Astete Uriondo'),
(26, '62309931X', 'Balbina', 'Cerredelo Quindos'),
(27, '89782936K', 'Cinthya', 'Peñuelas Gabirondo'),
(28, '42893735T', 'Amando', 'Valderrama Abascal'),
(29, '99494023W', 'Arantza', 'Canto Celaya'),
(30, '81479741X', 'Tomás', 'Godan Barrionuevo'),
(31, '18761071V', 'Elbio', 'Veleña Güemes'),
(32, '52058004B', 'Ismelda', 'Biñe Gorbalan'),
(33, '50324529T', 'Septimia', 'Haedo Hondona'),
(34, '43913771D', 'Jezabel', 'Landeras Figueruela'),
(35, '50702321V', 'Eugenio', 'Escajadillo Clavijo'),
(36, '13872197T', 'Cadence', 'Ayllon Bulnes'),
(37, '23329256B', 'Diana', 'Pagola Rujula'),
(38, '82526472B', 'Fausta', 'Manjon Menocal'),
(39, '49203709Q', 'Dimas', 'Montiano Martua'),
(40, '24145871B', 'Gavriel', 'Albarellos Yerro'),
(41, '32714100G', 'Honorato', 'Haro Chavarri'),
(42, '62339703C', 'Tabitha', 'Lasa Coco'),
(43, '30277751E', 'Froilán', 'Lecubarri Urquiola'),
(44, '28380347A', 'Edda', 'Valdero Berganza'),
(45, '91390168J', 'Gracia', 'Arena Valbuena'),
(46, '12075662H', 'Liberal', 'Mandojana Urdaneta'),
(47, '11881037L', 'Sempronio', 'Oña Ballesteros'),
(48, '19801993M', 'Orestes', 'Calonge Pedraja'),
(49, '57762469Q', 'Débora ', 'Mones Cabezon'),
(50, '30646831K', 'Mariano', 'Dieguez Genova'),
(51, '95273481Y', 'Tina', 'Ponte Tristan'),
(52, '91820481L', 'Tiziano', 'Tielve Faes'),
(53, '73216047D', 'Samirah', 'Ganzo Trancoso'),
(54, '38090649G', 'Maximiliano', 'Arrazola Fominaya'),
(55, '42035977G', 'Anémona', 'Balsera Ribeira'),
(56, '11722064E', 'Javier', 'Arriano Celerain'),
(57, '61205197N', 'Dominique', 'Urtado Villafuentes'),
(58, '55365648W', 'Palmiro', 'Miguelez Munaya'),
(59, '81488409F', 'Inocencio', 'Encio Peñacerrada'),
(60, '94642776F', 'Oscar', 'Rescuro Ocampo'),
(61, '38224485A', 'Teodoro', 'Raigadas Coronel'),
(62, '60167032K', 'Delfina', 'Urtado Cadorniga'),
(63, '68360248Q', 'Cadmo', 'Fuertehijar Cendan'),
(64, '47175947A', 'Agustín', 'Hoz Recio'),
(65, '64585008L', 'Georges', 'Bacete Pas'),
(66, '37329910J', 'Hueco', 'Bara Landeribar'),
(67, '96684146N', 'Marisol', 'Moreyre Echandi'),
(68, '43612383J', 'Lighuen', 'Allo Agreda'),
(69, '19327618M', 'Monserrat', 'Argudin Mosquera'),
(70, '22072496V', 'Dustin', 'Tortoles Taladriz'),
(71, '38552915Q', 'Indiana', 'Gallardo Preciado'),
(72, '77216002B', 'Rubí', 'Courel Uralde'),
(73, '78988227V', 'Casildo', 'Cernadas Alija'),
(74, '92646154S', 'Dinorah', 'Bolilla Prieto'),
(75, '22323944Y', 'Severiano', 'Sarratea Queto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usados`
--

DROP TABLE IF EXISTS `usados`;
CREATE TABLE IF NOT EXISTS `usados` (
  `id_coche_usado` int(11) NOT NULL,
  `id_coche` int(11) NOT NULL,
  `kilometros` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usados`
--

INSERT INTO `usados` (`id_coche_usado`, `id_coche`, `kilometros`) VALUES
(1, 1, 36582),
(2, 2, 35552),
(3, 3, 74324),
(4, 4, 11066),
(5, 5, 19910),
(6, 6, 55179),
(7, 7, 85265),
(8, 8, 44301),
(9, 9, 98589),
(10, 10, 17710),
(11, 11, 66637),
(12, 12, 13869),
(13, 13, 36694),
(14, 14, 97444),
(15, 15, 26681),
(16, 16, 59010),
(17, 17, 17615),
(18, 18, 65517),
(19, 19, 98037),
(20, 20, 85755),
(21, 21, 40499),
(22, 22, 73453),
(23, 23, 25501),
(24, 24, 12236),
(25, 25, 78987),
(26, 26, 50472);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`), ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `clientes_coches`
--
ALTER TABLE `clientes_coches`
  ADD PRIMARY KEY (`id_cliente_coche`), ADD KEY `cliente` (`id_cliente`), ADD KEY `coche` (`id_coche`);

--
-- Indices de la tabla `coches`
--
ALTER TABLE `coches`
  ADD PRIMARY KEY (`id_coche`), ADD UNIQUE KEY `matricula` (`matricula`), ADD KEY `id_modelo` (`id_modelo`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `mecanicos`
--
ALTER TABLE `mecanicos`
  ADD PRIMARY KEY (`id_mecanico`), ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `mecanicos_coches`
--
ALTER TABLE `mecanicos_coches`
  ADD PRIMARY KEY (`id_mecanicos_coches`), ADD KEY `id_mecanico` (`id_mecanico`,`id_coche_usado`), ADD KEY `id_coche` (`id_coche_usado`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id_modelo`), ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `nuevos`
--
ALTER TABLE `nuevos`
  ADD PRIMARY KEY (`id_coche_nuevo`), ADD KEY `id_coche` (`id_coche`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`), ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `usados`
--
ALTER TABLE `usados`
  ADD PRIMARY KEY (`id_coche_usado`), ADD KEY `id_coche` (`id_coche`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT de la tabla `clientes_coches`
--
ALTER TABLE `clientes_coches`
  MODIFY `id_cliente_coche` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT de la tabla `coches`
--
ALTER TABLE `coches`
  MODIFY `id_coche` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `mecanicos`
--
ALTER TABLE `mecanicos`
  MODIFY `id_mecanico` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `mecanicos_coches`
--
ALTER TABLE `mecanicos_coches`
  MODIFY `id_mecanicos_coches` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT de la tabla `nuevos`
--
ALTER TABLE `nuevos`
  MODIFY `id_coche_nuevo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `usados`
--
ALTER TABLE `usados`
  MODIFY `id_coche_usado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientes_coches`
--
ALTER TABLE `clientes_coches`
ADD CONSTRAINT `clientes_coches_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `clientes_coches_ibfk_2` FOREIGN KEY (`id_coche`) REFERENCES `coches` (`id_coche`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `coches`
--
ALTER TABLE `coches`
ADD CONSTRAINT `coches_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mecanicos`
--
ALTER TABLE `mecanicos`
ADD CONSTRAINT `mecanicos_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mecanicos_coches`
--
ALTER TABLE `mecanicos_coches`
ADD CONSTRAINT `mecanicos_coches_ibfk_1` FOREIGN KEY (`id_mecanico`) REFERENCES `mecanicos` (`id_mecanico`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `mecanicos_coches_ibfk_2` FOREIGN KEY (`id_coche_usado`) REFERENCES `usados` (`id_coche_usado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
ADD CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `nuevos`
--
ALTER TABLE `nuevos`
ADD CONSTRAINT `nuevos_ibfk_1` FOREIGN KEY (`id_coche`) REFERENCES `coches` (`id_coche`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usados`
--
ALTER TABLE `usados`
ADD CONSTRAINT `usados_ibfk_1` FOREIGN KEY (`id_coche`) REFERENCES `coches` (`id_coche`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
