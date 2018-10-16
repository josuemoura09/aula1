-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 09-Out-2018 às 13:06
-- Versão do servidor: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ContaCorrente`
--

CREATE TABLE IF NOT EXISTS `ContaCorrente` (
  `idContaCorrente` int(22) NOT NULL,
  `NumeroConta` varchar(45) NOT NULL,
  `CPF_Titular` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ContaCorrente`
--

INSERT INTO `ContaCorrente` (`idContaCorrente`, `NumeroConta`, `CPF_Titular`) VALUES
(1, 'ytyt', '05387412527'),
(2, 'ytyt', '05387412527'),
(3, 'ytyt', '05387412527'),
(4, '12', '05387412527'),
(6, '13', '05387412527');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Operacao`
--

CREATE TABLE IF NOT EXISTS `Operacao` (
  `idOperacao` int(11) NOT NULL,
  `DataOperacao` datetime NOT NULL,
  `ValorOperacao` decimal(20,2) NOT NULL,
  `CPFResponsavelOperacao` varchar(45) NOT NULL,
  `idContaCorrente` int(22) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Operacao`
--

INSERT INTO `Operacao` (`idOperacao`, `DataOperacao`, `ValorOperacao`, `CPFResponsavelOperacao`, `idContaCorrente`) VALUES
(3, '2018-12-08 00:00:00', 25.00, '0538744', 4),
(5, '2018-05-08 00:00:00', -50.00, '0538744', 4),
(6, '2018-12-08 00:00:00', 60.00, '05387412527', 4),
(7, '2018-12-08 00:00:00', 3000.00, '0538744', 6),
(8, '2018-09-20 00:00:00', -32.00, '0538744', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ContaCorrente`
--
ALTER TABLE `ContaCorrente`
  ADD PRIMARY KEY (`idContaCorrente`);

--
-- Indexes for table `Operacao`
--
ALTER TABLE `Operacao`
  ADD PRIMARY KEY (`idOperacao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ContaCorrente`
--
ALTER TABLE `ContaCorrente`
  MODIFY `idContaCorrente` int(22) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Operacao`
--
ALTER TABLE `Operacao`
  MODIFY `idOperacao` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
