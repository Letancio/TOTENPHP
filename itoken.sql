-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Fev-2021 às 01:33
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `itoken`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `id_atendimento` int(11) NOT NULL,
  `cpf` varchar(40) NOT NULL,
  `servico` varchar(40) NOT NULL,
  `atendimento` varchar(80) NOT NULL,
  `data_atendimento` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `senha` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`id_atendimento`, `cpf`, `servico`, `atendimento`, `data_atendimento`, `senha`) VALUES
(38, '02145789563', 'PAGAMENTO DE BOLETO/ FATURA', 'NORMAL', '2021-02-16 16:06:47', '371'),
(39, '21487564296', 'ABERTURA DE CONTA', 'PRIORIDADE', '2021-02-16 16:08:32', '419'),
(40, '02175741263', 'PAGAMENTO DE BOLETO/ FATURA', 'PRIORIDADE', '2021-02-16 16:09:05', '166'),
(41, '02145478796', 'PAGAMENTO DE BOLETO/ FATURA', 'NORMAL', '2021-02-16 18:22:39', '99');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servico` int(11) NOT NULL,
  `servico` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id_servico`, `servico`, `status`) VALUES
(1, 'PAGAMENTO DE BOLETO/ FATURA', 'DISPONIVEL'),
(3, 'ABERTURA DE CONTA', 'DISPONIVEL'),
(4, 'RECEBIMENTO DE CARTÃO', 'DISPONIVEL'),
(5, 'GERENCIA', 'FECHADO');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`id_atendimento`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `id_atendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
