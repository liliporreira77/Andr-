-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jun-2024 às 15:31
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `color`
--

CREATE TABLE `color` (
  `color_id` int(5) NOT NULL,
  `nome_tipo` varchar(100) NOT NULL,
  `color` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `color`
--

INSERT INTO `color` (`color_id`, `nome_tipo`, `color`) VALUES
(1, 'Eventos Munícipais', '#ff0000'),
(2, 'Eventos Particulares', '#1b00eb'),
(3, 'Aniversários das Coletividades', '#ffc800'),
(4, 'Festas Populares', '#0f8f47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(220) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `obs` text DEFAULT NULL,
  `image` varchar(720) NOT NULL,
  `user_id` int(5) NOT NULL,
  `color_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `obs`, `image`, `user_id`, `color_id`) VALUES
(4, 'Palavras Salpicadas pelo Índico', '2024-06-01 15:00:00', '2024-06-01 17:00:00', '', '', 5002, 1),
(5, 'Exposição \"Joshua Benoliel: Repórter Parlamentar (1906-1924)\"', '2024-06-04 10:00:00', '2024-06-29 23:59:00', 'df', '', 101, 1),
(6, 'Lançamento de 2 livros infantis de Inês Lacerda', '2024-06-08 15:00:00', '2024-06-08 17:00:00', '', '', 5002, 1),
(9, 'Cimónia Solene da Comemorações do Dia da Cidade', '2024-06-16 11:00:00', '2024-06-16 13:00:00', '', '', 1768, 1),
(11, 'Festa S João de Paramos', '2024-06-14 00:00:00', '2024-06-26 00:00:00', '', '', 1048, 4),
(12, 'Comemorações do Dia da Cidade', '2024-06-14 00:00:00', '2024-06-16 23:59:00', '', '', 1048, 1),
(13, 'Abertura do FIME', '2024-06-14 00:00:00', '2024-06-15 00:00:00', '', '', 487, 1),
(20, 'd', '2024-05-28 00:00:00', '2024-05-28 00:00:00', 'ccccccv', 'uploads/1052/ÓRGÃOS SOCIAIS DA APEE.jpg', 1052, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `user_id` int(5) NOT NULL,
  `nome_login` varchar(252) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hash_session` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`user_id`, `nome_login`, `email`, `password`, `hash_session`) VALUES
(101, 'Armando Bouçon', 'armando.ribeiro@cm-espinho.pt', '', 0),
(485, 'Andrea Magalhães', 'andrea.silva@cm-espinho.pt', '', 0),
(487, 'Anabela Lourenço', 'anabela.lourenco@cm-espinho.pt', '2', 0),
(503, 'Afonso Leitão', 'afonso.leitao@cm-espinho.pt', 'a38f742762f4d088c757ad19ae9d7c37', 1),
(888, 'Pedro Silva', 'pedro.silva@cm-espinho.pt', NULL, 0),
(930, 'Maria João Rodrigues', 'mariajoao.rodrigues@cm-espinho.pt', '', 0),
(1011, 'João Paulo Junior', 'joao.junior@cm-espinho.pt', '', 0),
(1014, 'Cristina Silva', 'cristina.maia@cm-espinho.pt', '', 0),
(1048, 'Ana Loureiro', 'ana.loureiro@cm-espinho.pt', 'a38f742762f4d088c757ad19ae9d7c37', 1),
(1052, 'Alexandre Sousa', 'alexandre.sousa@cm-espinho.pt', '2', 0),
(1071, 'Vitor Santos', 'vitor.santos@cm-espinho.pt', '83a368f54768f506b833130584455df4', 0),
(1219, 'Liliana Ribeiro', 'liliana.ribeiro@cm-espinho.pt', 'b1d61b3ff8f979a108216e4e15a51a9e', 1),
(1324, 'Juliana Silva', 'juliana.silva@cm-espinho.pt', 'eb608c613e9e2779b12dfb7e1761daee', 0),
(1600, 'Leonor Lêdo Fonseca', 'leonor.fonseca@cm-espinho.pt', 'leonor.fonseca@cm-espinho.pt', 0),
(1666, 'José Manuel Costa', 'jose.costa@cm-espinho.pt', '', 0),
(1680, 'Cláudia Fidalgo', 'claudia.fidalgo@cm-espinho.pt', '', 0),
(1692, 'Sílvia Carvalho', 'silvia.carvalho@cm-espinho.pt', '', 0),
(1727, 'Pedro Louro', 'pedro.louro@cm-espinho.pt', '', 0),
(1768, 'Maria Manuel Cruz', 'mariamanuel.cruz@cm-espinho.pt', '', 0),
(1769, 'Nuno Cardoso', 'nuno.cardoso@cm-espinho.pt', NULL, 0),
(1770, 'Ângelo Cardoso', 'angelo.cardoso@cm-espinho.pt', NULL, 0),
(1771, 'Luís Canelas', 'luis.canelas@cm-espinho.pt', NULL, 0),
(1774, 'Joana Devezas', 'joana.devezas@cm-espinho.pt', NULL, 0),
(2010, 'Lurdes Ribelo', 'lurdes.rebelo@cm-espinho.pt', 'd7a84628c025d30f7b2c52c958767e76', 0),
(3005, 'José Novo', 'jose.novo@cm-espinho.pt', NULL, 0),
(5000, 'Carlos Gaio', 'carlos.gaio@cm-espinho.pt', NULL, 0),
(5001, 'Rui Neto', 'rui.neto@cm-espinho.pt', NULL, 0),
(5002, 'Mário Cachada', 'mario.cachada@cm-espinho.pt', NULL, 0),
(5003, 'Dulce Batista', 'dulce.batista@cm-espinho.pt', NULL, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`);

--
-- Índices para tabela `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `color`
--
ALTER TABLE `color`
  MODIFY `color_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5004;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
