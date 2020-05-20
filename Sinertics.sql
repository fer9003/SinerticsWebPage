-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 20, 2020 at 01:07 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Sinertics`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `celular` varchar(13) NOT NULL,
  `mensaje` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `correo`, `celular`, `mensaje`) VALUES
(1, 'Damian', 'fera@hotmail.com', '0928781212', 'a'),
(2, 'Andres', 'dam.mora@gmial.com', '0928781212', '2'),
(3, 'Michael', 'michaelalmeida11@gmail.com', '098765526128', 'mensaje de prueba DB'),
(4, 'Marco Hietala', 'm.hitela@gmail.com', '567890009812', 'nightwish');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `precio` varchar(10) NOT NULL,
  `imagen` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `descripcionlarga` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `imagen`, `descripcion`, `descripcionlarga`) VALUES
(1, 'Disco Sólido', '42USD', 'ssd', 'Disco de estado sólido marca Kingston de capacidad 240GB, interfaz SATA 6Gbps.', 'La unidad de estado sólido A400 de Kingston mejora dramáticamente la capacidad de respuesta de su sistema existente con velocidades increíbles de inicio, carga y transferencia, comparadas con los discos duros mecánicos. Usando un controlador de última generación para leer y escribir a velocidades de hasta 500MB/seg y 450MB/seg, este SSD es 10 veces más rápido que un disco duro tradicional1 para un mejor rendimiento, mayor capacidad de respuesta y multi-tarea, y en general un sistema más rápido. Además de ser más confiable y duradero, el A400 está disponible en múltiples capacidades, desde 120GB a 1.92TB2.\r\nFactor de forma M.2 y 2.5\"'),
(2, 'Docking Station Macbook', '90USD', 'docmac', 'Estación de trabajo para Macbook pro de 13 y 15 pulgadas de aluminio.', 'El soporte compacto le permite acomodar la laptop verticalmente, haciendo que su escritorio no solo esté bien organizado y ordenado, sino que también esté lleno de estilo moderno.\r\nCon diseño de ancho ajustable, este soporte puede coincidir con la mayoría de los tipos de computadoras portátiles, cuyo grosor varía de 0.55in / 14mm a 2.71in / 69mm, como MacBook Air, MacBook Pro, Microsoft Surface, Chromebook y otros portátiles.\r\non una alfombrilla de silicona antideslizante alrededor de la ranura y en la parte inferior del soporte, el soporte vertical para computadora portátil se mantendrá estable en el escritorio y protegerá su computadora portátil de cualquier rasguño. Además, la base sólida es lo suficientemente pesada para evitar que su computadora portátil se vuelque.'),
(3, 'Hub para Macbook', '28USD', 'hubmac', 'Hub para macbook pro entrada interfaz usb C y salida HDMI, USB, Tarjeta SD', 'Admite 5K o dos pantallas de video 4K (4096 x 2160 @ 60 Hz), transferencia de datos de 40 Gbps. Entrega de potencia de carga de paso de hasta 100W.\r\nODLICNO USB c Concentrador con adaptador HDMI * 1 admite resolución de hasta 4K * 30Hz o Full HD 1080p * 60Hz, proporcionando video vívido, ultra HD, imagen más clara y mejor vista sin ningún sacudida. Puerto tipo C * 1, puerto USB 3.0 * 2, lector de tarjetas micro SD / SD * 1 y dos puertos de carga USB-C, diseñado para nuevos productos tipo C, incluyendo MacBook Pro 13 \", MacBook Pro 15\", 2017 / 2016 MacBook Pro, MacBook Air 2018..\r\nAdmite una gran potencia de entrada. Con el puerto de carga Thunderbolt 3 pass-through, este concentrador USB C puede cargar tus dispositivos conectados rápidamente mientras se muestran o transfieren datos, no necesitas preocuparte por la escasez de energía.'),
(4, 'Tv Box', '80USD', 'tvbox', 'TV BOX marca XIAOMI 4K.', 'Disfruta de tus series favoritas en NETFLIX con un botón independiente a una resolución de 4K (Sujeto a resolución del TV)\r\nIncluye conexión por Miracast y Chromecast\r\nIncluye control remoto de voz por Bluetooth, alimentado por 2 pilas AAA (Pilas incluidas)\r\nUn diseño simple, elegante y una mejor refrigeración evitando sobrecalentamiento podrás correr tus juegos favoritos y disfrutar en familia sin restricciones'),
(5, 'audifonos xiaomi', '22USD', 'audifonos', 'Audifonos marca Xiaomi inalambricos', 'Compatibles con Bluetooth 5.0\r\nTecnología True Wireless, como en los Airdots Pro, para una conexión super rápida.\r\nEstuche cargador con entrada microusb y batería de 300mAh, tus audífonos se cargan mientras están guardados en su estuche.\r\nHasta 4 horas de uso continuo, con batería de 40mAh.\r\nProducto no incluye cable para cargar. Las instrucciones pueden venir en mandarín'),
(6, 'Chromecast', '35USD', 'chromecast', 'Chromecast de google convierte tu tv a smart tv', 'Google Chromecast es un dispositivo de reproducción audiovisual (multimedia) en red fabricado por Google. \r\nCon Chromecast, el dispositivo móvil se convierte en un mando a distancia personalizado. Se pueden utilizar las aplicaciones del teléfono celular para hacer búsquedas y navegar, así como para reproducir y pausar contenido, retroceder en la reproducción, controlar el volumen e incluso crear listas de reproducción. Mientras se envía contenido, se puede utilizar el teléfono para otras funciones');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
