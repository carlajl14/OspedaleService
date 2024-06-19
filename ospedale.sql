-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2024 a las 16:11:22
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ospedale`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnosticos`
--

CREATE TABLE `diagnosticos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `diagnosticos`
--

INSERT INTO `diagnosticos` (`id`, `descripcion`) VALUES
(1, 'Frecuencia cardiaca inusualmente acelerada (taquicardia)'),
(2, 'Frecuencia cardiaca inusualmente lenta (bradicardia)'),
(3, 'Latidos irregulares del corazon (arritmias)'),
(4, 'Alteraciones electrocardiográficas'),
(5, 'Dolor en el torax'),
(6, 'Alergia al polen y a los acaros del polvo'),
(7, 'Alergia a los frutos secos'),
(8, 'Alergia a las frutas'),
(9, 'Alteraciones mecánicas de la deglución o del tránsito, que cursan con afagia o disfagia severa y que precisan sonda'),
(10, 'Trastornos neuromotores que impiden la deglución o el tránsito y precisan sonda'),
(11, 'Requerimientos especiales de energía y/o nutrientes'),
(12, 'Asma'),
(13, 'Enfermedad pulmonar obstructiva crónica (EPOC)'),
(14, 'Bronquitis crónica'),
(15, 'Sobrepeso extremo'),
(16, 'Fibrosis de los pulmones'),
(17, 'Sarcoidosis y esclerodermia'),
(18, 'Anomalia congenitca'),
(19, 'Enfermedad de Huntington'),
(20, 'Parkinson'),
(21, 'Disfuncion cerebral'),
(22, 'Trastorno del sueño'),
(23, 'Tumor cerebral'),
(24, 'Meningitis'),
(25, 'Sindrome de Guillain-Barre'),
(26, 'Esclerosis multiple'),
(27, 'Fibrosis quistica'),
(28, 'Toxoplasmosis'),
(29, 'Fenilcetonuria'),
(30, 'Problemas de crecimieno'),
(31, 'Tristeza o euforia mas intensan de lo normal'),
(32, 'Limitación para llevar una vida normal'),
(33, 'Agitacion o nerviosismo'),
(34, 'Dificultades para concentrarse'),
(35, 'Facilidad para fatigarse'),
(36, 'Presion elevada'),
(37, 'Presion arterial alta'),
(38, 'Presión arterial normal'),
(39, 'Dorso plano o hipercifosis'),
(40, 'Decaimiento postural'),
(41, 'Hiperlordosis'),
(42, 'Polimiositis'),
(43, 'Artritis idiopatica juvenil'),
(44, 'Artritis reumatoide'),
(45, 'Diabetes tipo 1'),
(46, 'Espondilitis anquilosante'),
(47, 'Lupus Erimetamoso Sistemico'),
(48, 'Cancer de piel'),
(49, 'Infeccion en la piel'),
(50, 'Eccema'),
(51, 'Dermatitis seborreica'),
(52, 'Psoriasis'),
(53, 'Sequedad del cuero cabelludo'),
(54, 'Retinopatia diabética'),
(55, 'Retinopatia hipertensiva'),
(56, 'Retinosis pigmentaria'),
(57, 'Anemia'),
(58, 'Leucemia'),
(59, 'Trombocitopenia'),
(60, 'Prostatitis'),
(61, 'Hiperplasia prostatica benigna'),
(62, 'Cancer de prostata'),
(71, 'Ha mejorado'),
(72, 'Regular'),
(73, 'Perfecto'),
(74, 'Perfecto'),
(75, 'Perfecto'),
(76, 'Perfecto'),
(77, 'Perfecto'),
(78, 'Perfecto'),
(79, 'Perfecto'),
(80, 'Mejor'),
(81, 'Gonorrea'),
(82, 'Mejorable');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`) VALUES
(1, 'Alergologia'),
(2, 'Cardiologia'),
(3, 'Endocrinologia'),
(4, 'Neumologia'),
(5, 'Neurologia'),
(6, 'Pediatria'),
(7, 'Psiquiatria'),
(8, 'Fisioterapia'),
(9, 'Reumatologia'),
(10, 'Dermatologia'),
(11, 'Oftalmologia'),
(12, 'Urologia'),
(19, 'Logopedia'),
(20, 'Traumatologia'),
(23, 'Ginecologia'),
(24, 'Geriatria'),
(25, 'Nueva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `nombre`) VALUES
(1, 'Captopril'),
(2, 'Enalapril'),
(3, 'Fosinopril'),
(4, 'Lisinopril'),
(5, 'Cetirizina'),
(6, 'Desloratadina'),
(7, 'Fexofenadina'),
(8, 'Levocetirizina'),
(9, 'Orlistat'),
(10, 'Fentermina'),
(11, 'Naltrexona'),
(12, 'Liraglutida'),
(13, 'Aclidinio'),
(14, 'Glicopirronio'),
(15, 'Ipratropio'),
(16, 'Tiotropio'),
(17, 'Spinzara'),
(18, 'Ocrevus'),
(19, 'Mavenclad'),
(20, 'Fycompa'),
(21, 'Acetilcisteina'),
(22, 'Aciclovir oral'),
(23, 'Amoxicilina'),
(24, 'Atropina'),
(25, 'Citalopram'),
(26, 'Fluoxetina'),
(27, 'Paroxetine'),
(28, 'Sertraline'),
(29, 'Ibuprofeno'),
(30, 'Naproxeno'),
(31, 'Aspirina'),
(32, 'Diclofecano'),
(33, 'Paracetamol'),
(34, 'Tramadol'),
(35, 'Nolotil'),
(36, 'Morfina'),
(37, 'Aciclovir topico'),
(38, 'Beclometasona'),
(39, 'Acido gliconico'),
(40, 'Ciclopirox'),
(41, 'Reactine Colirio'),
(42, 'Alergoftal Colirio'),
(43, 'Lipolasic Gel Oftalmico'),
(44, 'Otispring Colirio'),
(45, 'Trospium'),
(46, 'Fesoterodina'),
(47, 'Solifenancia'),
(48, 'Tolterodina'),
(49, 'Prueba'),
(50, '2'),
(51, '5'),
(52, '5'),
(53, 'Orlistat'),
(54, 'Nolotil'),
(55, 'Vaginesil'),
(56, 'Medicamento1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `id` int(11) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `especialidad_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`id`, `DNI`, `nombre`, `apellidos`, `direccion`, `telefono`, `email`, `password`, `especialidad_id`) VALUES
(1, '11111111H', 'Maria Carmen', 'Rodriguez Martin', 'C/Mayor', '928463719', 'maricarmen@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 3),
(2, '22222222D', 'Antonio', 'Lara Perez', 'C/Menor', '832946105', 'antonio@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 4),
(3, '33333333F', 'Lucia', 'Alejo Garcia', 'C/Centro', '647264826', 'lucia@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 5),
(4, '44444444V', 'Martin', 'Fernandez Diaz', 'C/Sur', '243596565', 'martin@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 1),
(5, '55555555C', 'Alicia', 'Marcos Lopez', 'C/Norte', '240546315', 'alicia@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 2),
(6, '66666666X', 'Pedro', 'Sanchez Gomez', 'C/Noreste', '249304862', 'pedro@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 8),
(7, '77777777N', 'Goyo', 'Gil Serrano', 'C/Sureste', '928463719', 'goyo@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 10),
(8, '88888888L', 'Paco', 'Morales Ramos', 'C/Principe', '385415725', 'paco@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 9),
(9, '99999999P', 'Jorge', 'Blanco Molina', 'C/Iglesia', '634581440', 'jorge@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 7),
(10, '01029384J', 'Marta', 'Garcia Sanchez', 'C/Constitucion', '253482562', 'marta@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 4),
(11, '23497463K', 'Paula', 'Molina Ortega', 'C/Fuente', '248345983', 'paula@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 5),
(12, '74832917M', 'Mariana', 'Ortega Delgado', 'C/Nueva', '348521679', 'mariana@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 6),
(13, '93847137G', 'Manuel', 'Marin Rubio', 'C/Real', '524863159', 'manuel@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 9),
(14, '73648264T', 'Ramon', 'Olgado Garcia', 'C/Miguel de Cervantes', '348527692', 'ramon@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 3),
(15, '17362578B', 'Alejandra', 'Sanz Medina', 'C/Picasso', '928463719', 'alejandra@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 10),
(16, '92756184Q', 'Ana', 'Castro Martin', 'C/Federico', '928463719', 'ana@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 11),
(17, '274738273V', 'Alejandro', 'Sanz Perez', 'C/Goya', '928463719', 'alejandro@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 12),
(19, '34852165J', 'Jose Maria', 'Perez Perez', 'C/Mayor 2', '504863125', 'josemaria@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 4),
(21, '12548534K', 'Goyo', 'Ruiz Lopez', 'C/Sur 2', '205134896', 'goyoruiz@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 20),
(30, '987458745S', 'Sheila', 'Lara Garcia', 'C/Isidro', '987412563', 'sheilalara@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 23),
(31, '32132132P', 'Paco', 'Ruiz Amadeo', 'C/Menor 5', '333111555', 'pacoruiz@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 24),
(40, '12023568L', 'Ricardo', 'Lopez Herrero', 'C/Lopez', '987412563', 'ricardolopez@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico_atiende_paciente`
--

CREATE TABLE `medico_atiende_paciente` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `medico_id` int(11) DEFAULT NULL,
  `paciente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico_atiende_paciente`
--

INSERT INTO `medico_atiende_paciente` (`id`, `fecha`, `hora`, `medico_id`, `paciente_id`) VALUES
(1, '2023-10-17', '12:10:00', 2, 4),
(2, '2023-12-18', '13:40:00', 12, 13),
(4, '2024-01-08', '09:35:00', 13, 12),
(6, '2024-01-10', '12:40:00', 12, 14),
(8, '2024-01-17', '13:00:00', 3, 18),
(9, '2024-01-30', '12:39:00', 8, 15),
(10, '2024-01-31', '08:10:00', 13, 11),
(11, '2024-02-01', '12:18:00', 6, 25),
(12, '2024-02-05', '09:15:00', 9, 19),
(13, '2024-02-05', '12:57:00', 16, 14),
(14, '2024-02-11', '11:38:00', 17, 2),
(15, '2024-02-13', '09:00:00', 4, 2),
(17, '2024-02-16', '08:00:00', 4, 1),
(18, '2024-02-19', '10:30:00', 10, 22),
(20, '2024-02-21', '13:12:00', 16, 20),
(21, '2024-02-23', '09:50:00', 6, 24),
(22, '2024-02-28', '08:40:00', 8, 10),
(23, '2024-03-05', '09:30:00', 5, 1),
(24, '2024-03-08', '10:00:00', 4, 9),
(25, '2024-03-10', '14:30:00', 17, 4),
(26, '2024-03-13', '10:50:00', 7, 17),
(27, '2024-03-15', '14:00:00', 3, 21),
(29, '2024-03-27', '11:29:00', 15, 16),
(30, '2024-04-02', '10:20:00', 7, 23),
(31, '2024-04-02', '12:09:00', 1, 1),
(32, '2024-04-02', '12:30:00', 9, 16),
(33, '2024-04-22', '11:00:00', 1, 8),
(34, '2024-04-29', '10:49:00', 15, 10),
(35, '2024-04-30', '09:20:00', 10, 20),
(0, '2024-06-04', '20:45:43', 30, 23),
(0, '2024-06-08', '16:03:49', 40, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico_diagnostico_paciente`
--

CREATE TABLE `medico_diagnostico_paciente` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `medico_id` int(11) DEFAULT NULL,
  `diagnostico_id` int(11) DEFAULT NULL,
  `paciente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico_diagnostico_paciente`
--

INSERT INTO `medico_diagnostico_paciente` (`id`, `fecha`, `medico_id`, `diagnostico_id`, `paciente_id`) VALUES
(1, '2023-10-17', 2, 13, 4),
(2, '2023-12-18', 12, 28, 13),
(3, '2023-12-20', 2, 16, 7),
(4, '2024-01-08', 13, 47, 12),
(5, '2024-01-10', 14, 11, 3),
(6, '2024-01-10', 12, 30, 14),
(7, '2024-01-12', 11, 23, 5),
(8, '2024-01-17', 3, 22, 18),
(9, '2024-01-30', 8, 45, 15),
(10, '2024-01-31', 13, 44, 11),
(11, '2024-02-01', 6, 40, 25),
(12, '2024-02-05', 9, 34, 19),
(13, '2024-02-05', 16, 55, 14),
(14, '2024-02-11', 17, 60, 2),
(15, '2024-02-13', 4, 7, 2),
(16, '2024-02-15', 1, 10, 5),
(17, '2024-02-16', 4, 6, 1),
(18, '2024-02-19', 10, 17, 22),
(19, '2024-02-20', 5, 3, 3),
(20, '2024-02-21', 16, 58, 20),
(21, '2024-02-23', 6, 37, 24),
(22, '2024-02-28', 8, 42, 10),
(23, '2024-03-05', 5, 1, 1),
(24, '2024-03-08', 4, 8, 9),
(25, '2024-03-10', 17, 62, 4),
(26, '2024-03-13', 7, 49, 17),
(27, '2024-03-15', 3, 18, 21),
(28, '2024-03-21', 11, 25, 6),
(29, '2024-03-27', 15, 52, 16),
(30, '2024-04-02', 1, 9, 1),
(31, '2024-04-02', 9, 32, 16),
(32, '2024-04-22', 1, 9, 8),
(33, '2024-04-29', 15, 51, 10),
(34, '2024-04-30', 10, 12, 20),
(35, '2024-04-02', 7, 50, 23),
(38, '2024-06-05', 17, 72, 3),
(39, '2024-06-04', 17, 73, 3),
(46, '2024-06-07', 17, 80, 3),
(47, '2024-06-12', 30, 81, 23),
(48, '2024-06-13', 40, 82, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico_medicamento_paciente`
--

CREATE TABLE `medico_medicamento_paciente` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `medico_id` int(11) DEFAULT NULL,
  `medicamento_id` int(11) DEFAULT NULL,
  `paciente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico_medicamento_paciente`
--

INSERT INTO `medico_medicamento_paciente` (`id`, `fecha`, `medico_id`, `medicamento_id`, `paciente_id`) VALUES
(1, '2023-10-17', 2, 14, 4),
(2, '2023-12-18', 12, 21, 13),
(3, '2023-12-20', 2, 15, 7),
(4, '2024-01-08', 13, 36, 12),
(5, '2024-01-10', 14, 12, 3),
(6, '2024-01-10', 12, 24, 14),
(7, '2024-01-12', 11, 19, 5),
(8, '2024-01-17', 3, 20, 18),
(9, '2024-01-30', 8, 35, 15),
(10, '2024-01-31', 13, 34, 11),
(11, '2024-02-01', 6, 30, 25),
(12, '2024-02-05', 9, 26, 19),
(13, '2024-02-05', 16, 41, 14),
(14, '2024-02-11', 17, 46, 2),
(15, '2024-02-13', 4, 6, 2),
(16, '2024-02-15', 1, 11, 5),
(17, '2024-02-16', 4, 5, 1),
(18, '2024-02-19', 10, 13, 22),
(19, '2024-02-20', 5, 2, 3),
(20, '2024-02-21', 16, 44, 20),
(21, '2024-02-23', 6, 29, 24),
(22, '2024-02-28', 8, 33, 10),
(23, '2024-03-05', 5, 2, 1),
(24, '2024-03-08', 4, 7, 9),
(25, '2024-03-10', 17, 48, 4),
(26, '2024-03-13', 7, 39, 17),
(27, '2024-03-15', 3, 17, 21),
(28, '2024-03-21', 11, 18, 6),
(29, '2024-03-27', 15, 38, 16),
(30, '2024-04-02', 1, 9, 1),
(31, '2024-04-02', 9, 25, 16),
(32, '2024-04-22', 1, 10, 8),
(33, '2024-04-29', 15, 37, 10),
(34, '2024-04-30', 10, 16, 20),
(35, '2024-04-02', 7, 40, 23),
(36, '2024-06-06', 17, 36, 2),
(42, '2024-06-05', 30, 35, 23),
(43, '2024-06-06', 30, 55, 23),
(45, '2024-06-12', 30, 2, 23),
(46, '2024-06-19', 40, 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico_prueba_paciente`
--

CREATE TABLE `medico_prueba_paciente` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `medico_id` int(11) DEFAULT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `prueba_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico_prueba_paciente`
--

INSERT INTO `medico_prueba_paciente` (`id`, `fecha`, `medico_id`, `paciente_id`, `prueba_id`) VALUES
(1, '2024-02-16', 4, 1, 3),
(2, '2024-02-13', 4, 3, 2),
(3, '2024-03-08', 4, 9, 3),
(4, '2024-02-13', 5, 1, 2),
(5, '2024-02-20', 5, 3, 1),
(6, '2024-04-22', 1, 8, 4),
(7, '2024-02-15', 1, 5, 4),
(8, '2024-01-10', 14, 3, 4),
(9, '2023-10-17', 2, 4, 5),
(10, '2023-12-20', 2, 7, 6),
(11, '2024-04-30', 10, 20, 5),
(12, '2024-02-19', 10, 22, 6),
(13, '2024-03-15', 3, 21, 7),
(14, '2024-01-17', 3, 18, 8),
(15, '2024-01-12', 11, 5, 8),
(16, '2024-03-21', 11, 6, 9),
(17, '2023-12-18', 12, 13, 10),
(18, '2024-01-10', 12, 14, 11),
(19, '2024-04-02', 9, 16, 12),
(20, '2024-02-05', 9, 19, 13),
(21, '2024-02-23', 6, 24, 14),
(22, '2024-02-01', 6, 25, 15),
(23, '2024-02-28', 8, 10, 16),
(24, '2024-01-30', 8, 15, 17),
(25, '2024-01-31', 13, 11, 16),
(26, '2024-01-08', 13, 12, 17),
(27, '2024-03-13', 7, 17, 18),
(28, '2024-04-02', 1, 1, 18),
(29, '2024-04-29', 15, 10, 19),
(30, '2024-03-27', 15, 16, 19),
(31, '2024-02-05', 16, 14, 20),
(32, '2024-02-21', 16, 20, 21),
(33, '2024-02-11', 17, 2, 22),
(34, '2024-03-10', 17, 4, 23),
(35, '2024-04-04', 7, 20, 15),
(53, '2024-06-12', 30, 23, 1),
(54, '2024-06-13', 30, 23, 50),
(56, '2024-06-19', 30, 23, 1),
(57, '2024-06-13', 40, 2, 1),
(58, '2024-06-18', 40, 2, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `DNI`, `nombre`, `apellidos`, `direccion`, `telefono`, `email`, `password`) VALUES
(1, '11111111F', 'Soledad', 'García Amorros', 'C/Mayor', '928463719', 'soledad@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(2, '736152935L', 'Daniel', 'Andela López', 'C/Menor', '928463719', 'danielandela@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(3, '25348961K', 'Jose María', 'Ruiz Dorado', 'C/Sur', '928463719', 'josemaria@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(4, '24867531J', 'Natalio', 'Arqués López', 'C/Norte', '928463719', 'natalio@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(5, '01486325Y', 'Esther', 'Barahona Gutierrez', 'C/Centro', '928463719', 'esther@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(6, '07951348G', 'Luis', 'Bordona Martín', 'C/Sureste', '928463719', 'luis@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(7, '14578962H', 'Pablo', 'Cano López', 'C/Suroeste', '928463719', 'pablo@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(8, '04862153D', 'Arturo', 'Carrasco Perez', 'C/Suroeste', '928463719', 'arturo@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(9, '34862159P', 'Aurora', 'Cortázar Luque', 'C/Noroeste', '928463719', 'aurora@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(10, '34852176R', 'Alfonso', 'Cuevas Garrido', 'C/Fuentes', '928463719', 'alfonso@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(11, '64831597T', 'Pedro', 'Drasín Amorros', 'C/Nueva', '928463719', 'pedro@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(12, '01534862W', 'Luis Manuel', 'García Matos', 'C/Nueva', '928463719', 'luismanuel@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(13, '385019646X', 'Benito', 'Encinas López', 'C/Federico García', '928463719', 'benito@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(14, '34866022G', 'Bere', 'Naranjo Gonzalez', 'C/Goya', '928463719', 'bere@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(15, '34444444D', 'Alexis', 'Campos Naranjo', 'C/Sol', '928463719', 'alexis@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(16, '55566647V', 'Ismael', 'Berumen Cedillo', 'C/Español', '928463719', 'ismael@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(17, '55558888R', 'Fabiola', 'Estrada Barra', 'C/Mayor', '928463719', 'fabiola@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(18, '99997775Z', 'Fernanda', 'Esquivel Amorros', 'C/Picasso', '928463719', 'fernanda@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(19, '00044423S', 'Daniel', 'Farias Rosas', 'C/Luna Nueva', '928463719', 'daniel@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(20, '55554442B', 'Sergio', 'Hernandez Campos', 'C/Luna Vieja', '928463719', 'sergio@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(21, '66663333M', 'Sheila', 'Gomez Amorros', 'C/Fiesta', '928463719', 'sheila@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(22, '66677889K', 'Fatima', 'Martin Amorros', 'C/Antigua', '928463719', 'fatima@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(23, '33311126T', 'Carolina', 'Martinez Gonzalez', 'C/Proxima', '928463719', 'carolina@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(24, '66622244C', 'Susana', 'Crespo Cruz', 'C/Mayor', '928463719', 'susana@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(25, '33448899M', 'Lucas', 'Nieto Moreno', 'C/Mateo', '928463719', 'lucas@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(26, '95135748K', 'Santiago', 'Gomez Ruiz', 'C/Sur 6', '987456987', 'santiagogomez@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(27, '96369369K', 'Julio', 'Perez Ruiz', 'C/Sur 8', '985236547', 'julioperez@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(29, '20135486J', 'Mario', 'Herrero Diaz', 'C/Mayor 8', '852031569', 'marioherrero@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(31, '02134568K', 'Ricardo', 'Ulla Ruiz', 'C/Sur 10', '852031479', 'ricardoulla@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8'),
(32, '20202020J', 'Juan Manuel', 'Ruiz Ruiz', 'C/Menor 4', '654321456', 'juanmanuel@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas`
--

CREATE TABLE `pruebas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pruebas`
--

INSERT INTO `pruebas` (`id`, `nombre`) VALUES
(1, 'Electrocardiograma'),
(2, 'Prueba de esfuerzo'),
(3, 'Prueba cutanea'),
(4, 'Nutricion enterica en el hogar'),
(5, 'Espirometria'),
(6, 'Medicion de los volumenes pulmonares'),
(7, 'Resonancia magnetica'),
(8, 'Electroencefalograma'),
(9, 'Punción Lumbar'),
(10, 'Revision del recien nacido'),
(11, 'Revision infantil'),
(12, 'Trastorno del estado de animo'),
(13, 'Trastorno de ansiedad'),
(14, 'Evaluacion de los signos vitales'),
(15, 'Evaluacion de la postura'),
(16, 'Anticuerpos antinucleares'),
(17, 'Antigeno Leucocitario Humano'),
(18, 'Biopsia cutanea'),
(19, 'Dermatoscopia y trioscopia'),
(20, 'Retinografia'),
(21, 'Biometria'),
(22, 'Analisis del PSA'),
(23, 'Biopsia fusion'),
(24, 'Analitica de sangre'),
(25, 'Analisis de sangre'),
(50, 'Prueba3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `diagnosticos`
--
ALTER TABLE `diagnosticos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `especialidad_id` (`especialidad_id`);

--
-- Indices de la tabla `medico_atiende_paciente`
--
ALTER TABLE `medico_atiende_paciente`
  ADD PRIMARY KEY (`fecha`,`hora`),
  ADD KEY `medico_id` (`medico_id`),
  ADD KEY `paciente_id` (`paciente_id`);

--
-- Indices de la tabla `medico_diagnostico_paciente`
--
ALTER TABLE `medico_diagnostico_paciente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medico_id` (`medico_id`),
  ADD KEY `diagnostico_id` (`diagnostico_id`),
  ADD KEY `paciente_id` (`paciente_id`);

--
-- Indices de la tabla `medico_medicamento_paciente`
--
ALTER TABLE `medico_medicamento_paciente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medico_id` (`medico_id`),
  ADD KEY `medicamento_id` (`medicamento_id`),
  ADD KEY `paciente_id` (`paciente_id`);

--
-- Indices de la tabla `medico_prueba_paciente`
--
ALTER TABLE `medico_prueba_paciente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medico_id` (`medico_id`),
  ADD KEY `paciente_id` (`paciente_id`),
  ADD KEY `prueba_id` (`prueba_id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diagnosticos`
--
ALTER TABLE `diagnosticos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `medico_diagnostico_paciente`
--
ALTER TABLE `medico_diagnostico_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `medico_medicamento_paciente`
--
ALTER TABLE `medico_medicamento_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `medico_prueba_paciente`
--
ALTER TABLE `medico_prueba_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD CONSTRAINT `medicos_ibfk_1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidades` (`id`);

--
-- Filtros para la tabla `medico_atiende_paciente`
--
ALTER TABLE `medico_atiende_paciente`
  ADD CONSTRAINT `medico_atiende_paciente_ibfk_1` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`),
  ADD CONSTRAINT `medico_atiende_paciente_ibfk_2` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`);

--
-- Filtros para la tabla `medico_diagnostico_paciente`
--
ALTER TABLE `medico_diagnostico_paciente`
  ADD CONSTRAINT `medico_diagnostico_paciente_ibfk_1` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`),
  ADD CONSTRAINT `medico_diagnostico_paciente_ibfk_2` FOREIGN KEY (`diagnostico_id`) REFERENCES `diagnosticos` (`id`),
  ADD CONSTRAINT `medico_diagnostico_paciente_ibfk_3` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`);

--
-- Filtros para la tabla `medico_medicamento_paciente`
--
ALTER TABLE `medico_medicamento_paciente`
  ADD CONSTRAINT `medico_medicamento_paciente_ibfk_1` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`),
  ADD CONSTRAINT `medico_medicamento_paciente_ibfk_2` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamentos` (`id`),
  ADD CONSTRAINT `medico_medicamento_paciente_ibfk_3` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`);

--
-- Filtros para la tabla `medico_prueba_paciente`
--
ALTER TABLE `medico_prueba_paciente`
  ADD CONSTRAINT `medico_prueba_paciente_ibfk_1` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`),
  ADD CONSTRAINT `medico_prueba_paciente_ibfk_2` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`),
  ADD CONSTRAINT `medico_prueba_paciente_ibfk_3` FOREIGN KEY (`prueba_id`) REFERENCES `pruebas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
