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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela produtosbd.clientes: ~3 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `email`, `senha`, `endereco`, `telefone`) VALUES
	(1, 'cleberson', 'clebinho777@gmail.com', 'clebsonfirefree0', 'rua frei silva 333', '47997400930'),
	(2, 'cleberson', 'clebinho777@gmail.com', 'clebsonfirefree0', 'rua frei silva 333', '47997400930'),
	(3, 'cleberson', 'clebinho777@gmail.com', 'clebsonfirefree0', 'rua frei silva 333', '47997400930');

-- Copiando estrutura para tabela produtosbd.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `fabricacao` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preco` decimal(6,2) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `lote` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela produtosbd.produtos: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
