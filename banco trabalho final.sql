-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para produtosbd
CREATE DATABASE IF NOT EXISTS `produtosbd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `produtosbd`;

-- Copiando estrutura para tabela produtosbd.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` char(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela produtosbd.clientes: ~3 rows (aproximadamente)
DELETE FROM `clientes`;
INSERT INTO `clientes` (`id`, `nome`, `email`, `senha`, `endereco`, `telefone`) VALUES
	(1, 'cleberson', 'clebinho777@gmail.com', 'clebsonfirefree0', 'rua frei silva 333', '47997400930'),
	(2, 'cleberson', 'clebinho777@gmail.com', 'clebsonfirefree0', 'rua frei silva 333', '47997400930'),
	(3, 'cleberson', 'clebinho777@gmail.com', 'clebsonfirefree0', 'rua frei silva 333', '47997400930'),
	(12, '', '', '', '', '0');

-- Copiando estrutura para tabela produtosbd.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `fabricacao` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preco` decimal(6,2) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `lote` varchar(45) DEFAULT NULL,
  `link_imagem` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela produtosbd.produtos: ~4 rows (aproximadamente)
DELETE FROM `produtos`;
INSERT INTO `produtos` (`fabricacao`, `id`, `preco`, `nome`, `validade`, `categoria`, `lote`, `link_imagem`) VALUES
	('2024-09-18', 1, 69.99, 'raçao', '2027-09-18', 'animais', '100', 'https://www.designi.com.br/images/preview/10001751.jpg'),
	('2024-09-18', 2, 21.99, 'shampoo', '2027-03-18', 'cabelo', '200', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIYGvu21RNDuCF1Mf-rFvJs9gV6UhQ8h1czQ&s'),
	('2024-09-18', 3, 5.99, 'chocolate', '2024-09-18', 'doce', '70', 'https://png.pngtree.com/png-vector/20200317/ourmid/pngtree-bar-of-chocolate-icon-design-png-image_2161255.jpg'),
	('2024-09-18', 4, 17.00, 'doritos', '2024-11-18', 'salgado', '40', 'https://i.pinimg.com/originals/d4/d8/37/d4d83754ed9ac5ee17a6d6db0de72f6c.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
