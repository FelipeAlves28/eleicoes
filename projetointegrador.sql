-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Mar-2020 às 17:09
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetointegrador`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolaridade`
--

CREATE TABLE `escolaridade` (
  `id_tipo` int(3) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escolaridade`
--

INSERT INTO `escolaridade` (`id_tipo`, `tipo`) VALUES
(1, 'ANALFABETO'),
(2, 'LE_E_ESCREVE'),
(3, 'NAO_INFORMADO'),
(4, '1_GRAU_COMPLETO'),
(5, '1_GRAU_INCOMPLETO'),
(6, '2_GRAU_COMPLETO'),
(7, '2_GRAU_INCOMPLETO'),
(8, 'SUPERIOR_COMPLETO'),
(9, 'SUPERIOR_INCOMPLETO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pref_2008`
--

CREATE TABLE `pref_2008` (
  `id_pref` int(3) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `num_cand` int(3) NOT NULL,
  `partido` varchar(11) NOT NULL,
  `coligacao` varchar(30) NOT NULL,
  `zona` int(3) NOT NULL,
  `votos` varchar(11) NOT NULL,
  `turno` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `pref_2012`
--

CREATE TABLE `pref_2012` (
  `id_pref` int(3) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `num_cand` int(3) NOT NULL,
  `partido` varchar(11) NOT NULL,
  `coligacao` varchar(30) NOT NULL,
  `zona` int(3) NOT NULL,
  `votos` varchar(11) NOT NULL,
  `turno` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `pref_2016`
--

CREATE TABLE `pref_2016` (
  `id_pref` int(3) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `num_cand` int(3) NOT NULL,
  `partido` varchar(11) NOT NULL,
  `coligacao` varchar(30) NOT NULL,
  `zona` int(3) NOT NULL,
  `votos` varchar(11) NOT NULL,
  `turno` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `pre_cand_pref2020`
--

CREATE TABLE `pre_cand_pref2020` (
  `id_cand` int(3) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `num_cad` varchar(10) NOT NULL,
  `partido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pre_cand_pref2020`
--

INSERT INTO `pre_cand_pref2020` (`id_cand`, `nome`, `num_cad`, `partido`) VALUES
(1, 'RAFAEL GRECA', '33', 'DEM'),
(2, 'GUSTAVO FRUET', '12', 'PDT'),
(3, 'NEY LEPREVOST', '55', 'PSD'),
(4, 'DELEGADO FRANCISCHIN', '17', 'PSL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pre_cand_veread2020`
--

CREATE TABLE `pre_cand_veread2020` (
  `id_cand` int(3) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `num_cad` varchar(10) NOT NULL,
  `partido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo_escolaridade2008`
--

CREATE TABLE `sexo_escolaridade2008` (
  `id_escola` int(3) NOT NULL,
  `tipo_esc` int(3) NOT NULL,
  `masculino` varchar(11) NOT NULL,
  `feminino` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo_escolaridade2012`
--

CREATE TABLE `sexo_escolaridade2012` (
  `id_escola` int(3) NOT NULL,
  `tipo_esc` int(3) NOT NULL,
  `masculino` varchar(11) NOT NULL,
  `feminino` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo_escolaridade2016`
--

CREATE TABLE `sexo_escolaridade2016` (
  `id_escola` int(3) NOT NULL,
  `tipo_esc` int(3) NOT NULL,
  `masculino` varchar(11) NOT NULL,
  `feminino` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo_idade2008`
--

CREATE TABLE `sexo_idade2008` (
  `id_idade` int(3) NOT NULL,
  `idade` varchar(11) NOT NULL,
  `masculino` varchar(11) NOT NULL,
  `feminino` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo_idade2012`
--

CREATE TABLE `sexo_idade2012` (
  `id_idade` int(3) NOT NULL,
  `idade` varchar(11) NOT NULL,
  `masculino` varchar(11) NOT NULL,
  `feminino` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo_idade2016`
--

CREATE TABLE `sexo_idade2016` (
  `id_idade` int(3) NOT NULL,
  `idade` varchar(11) NOT NULL,
  `masculino` varchar(11) NOT NULL,
  `feminino` varchar(11) NOT NULL,
  `total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(3) NOT NULL,
  `turno` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turno`
--

INSERT INTO `turno` (`id_turno`, `turno`) VALUES
(1, '1° TURNO'),
(2, '2° TURNO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ver_2008`
--

CREATE TABLE `ver_2008` (
  `id_ver` int(5) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `num_cand` int(3) NOT NULL,
  `partido` varchar(11) NOT NULL,
  `coligacao` varchar(30) NOT NULL,
  `zona` int(3) NOT NULL,
  `votos` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Estrutura da tabela `ver_2012`
--

CREATE TABLE `ver_2012` (
  `id_ver` int(5) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `num_cand` int(3) NOT NULL,
  `partido` varchar(11) NOT NULL,
  `coligacao` varchar(30) NOT NULL,
  `zona` int(3) NOT NULL,
  `votos` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ver_2012`
--



-- --------------------------------------------------------

--
-- Estrutura da tabela `ver_2016`
--

CREATE TABLE `ver_2016` (
  `id_ver` int(5) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `num_cand` int(3) NOT NULL,
  `partido` varchar(11) NOT NULL,
  `coligacao` varchar(30) NOT NULL,
  `zona` int(3) NOT NULL,
  `votos` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `escolaridade`
--
ALTER TABLE `escolaridade`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Índices para tabela `pref_2008`
--
ALTER TABLE `pref_2008`
  ADD PRIMARY KEY (`id_pref`),
  ADD KEY `fk_tur08` (`turno`);

--
-- Índices para tabela `pref_2012`
--
ALTER TABLE `pref_2012`
  ADD PRIMARY KEY (`id_pref`),
  ADD KEY `fk_tur12` (`turno`);

--
-- Índices para tabela `pref_2016`
--
ALTER TABLE `pref_2016`
  ADD PRIMARY KEY (`id_pref`),
  ADD KEY `fk_tupref16` (`turno`);

--
-- Índices para tabela `pre_cand_pref2020`
--
ALTER TABLE `pre_cand_pref2020`
  ADD PRIMARY KEY (`id_cand`);

--
-- Índices para tabela `pre_cand_veread2020`
--
ALTER TABLE `pre_cand_veread2020`
  ADD PRIMARY KEY (`id_cand`);

--
-- Índices para tabela `sexo_escolaridade2008`
--
ALTER TABLE `sexo_escolaridade2008`
  ADD PRIMARY KEY (`id_escola`),
  ADD KEY `fk_esctipo` (`tipo_esc`);

--
-- Índices para tabela `sexo_escolaridade2012`
--
ALTER TABLE `sexo_escolaridade2012`
  ADD PRIMARY KEY (`id_escola`),
  ADD KEY `fk_tipesc12` (`tipo_esc`);

--
-- Índices para tabela `sexo_escolaridade2016`
--
ALTER TABLE `sexo_escolaridade2016`
  ADD PRIMARY KEY (`id_escola`),
  ADD KEY `fk_esc16` (`tipo_esc`);

--
-- Índices para tabela `sexo_idade2008`
--
ALTER TABLE `sexo_idade2008`
  ADD PRIMARY KEY (`id_idade`);

--
-- Índices para tabela `sexo_idade2012`
--
ALTER TABLE `sexo_idade2012`
  ADD PRIMARY KEY (`id_idade`);

--
-- Índices para tabela `sexo_idade2016`
--
ALTER TABLE `sexo_idade2016`
  ADD PRIMARY KEY (`id_idade`);

--
-- Índices para tabela `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- Índices para tabela `ver_2008`
--
ALTER TABLE `ver_2008`
  ADD PRIMARY KEY (`id_ver`);

--
-- Índices para tabela `ver_2012`
--
ALTER TABLE `ver_2012`
  ADD PRIMARY KEY (`id_ver`);

--
-- Índices para tabela `ver_2016`
--
ALTER TABLE `ver_2016`
  ADD PRIMARY KEY (`id_ver`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pref_2008`
--
ALTER TABLE `pref_2008`
  MODIFY `id_pref` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `pref_2012`
--
ALTER TABLE `pref_2012`
  MODIFY `id_pref` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `pref_2016`
--
ALTER TABLE `pref_2016`
  MODIFY `id_pref` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `pre_cand_pref2020`
--
ALTER TABLE `pre_cand_pref2020`
  MODIFY `id_cand` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pre_cand_veread2020`
--
ALTER TABLE `pre_cand_veread2020`
  MODIFY `id_cand` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sexo_escolaridade2008`
--
ALTER TABLE `sexo_escolaridade2008`
  MODIFY `id_escola` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `sexo_escolaridade2012`
--
ALTER TABLE `sexo_escolaridade2012`
  MODIFY `id_escola` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `sexo_escolaridade2016`
--
ALTER TABLE `sexo_escolaridade2016`
  MODIFY `id_escola` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `sexo_idade2008`
--
ALTER TABLE `sexo_idade2008`
  MODIFY `id_idade` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `sexo_idade2012`
--
ALTER TABLE `sexo_idade2012`
  MODIFY `id_idade` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `sexo_idade2016`
--
ALTER TABLE `sexo_idade2016`
  MODIFY `id_idade` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ver_2008`
--
ALTER TABLE `ver_2008`
  MODIFY `id_ver` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7666;

--
-- AUTO_INCREMENT de tabela `ver_2012`
--
ALTER TABLE `ver_2012`
  MODIFY `id_ver` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7081;

--
-- AUTO_INCREMENT de tabela `ver_2016`
--
ALTER TABLE `ver_2016`
  MODIFY `id_ver` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10851;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pref_2008`
--
ALTER TABLE `pref_2008`
  ADD CONSTRAINT `fk_tur08` FOREIGN KEY (`turno`) REFERENCES `turno` (`id_turno`);

--
-- Limitadores para a tabela `pref_2012`
--
ALTER TABLE `pref_2012`
  ADD CONSTRAINT `fk_tur12` FOREIGN KEY (`turno`) REFERENCES `turno` (`id_turno`);

--
-- Limitadores para a tabela `pref_2016`
--
ALTER TABLE `pref_2016`
  ADD CONSTRAINT `fk_tupref16` FOREIGN KEY (`turno`) REFERENCES `turno` (`id_turno`);

--
-- Limitadores para a tabela `sexo_escolaridade2008`
--
ALTER TABLE `sexo_escolaridade2008`
  ADD CONSTRAINT `fk_esctipo` FOREIGN KEY (`tipo_esc`) REFERENCES `escolaridade` (`id_tipo`);

--
-- Limitadores para a tabela `sexo_escolaridade2012`
--
ALTER TABLE `sexo_escolaridade2012`
  ADD CONSTRAINT `fk_tipesc12` FOREIGN KEY (`tipo_esc`) REFERENCES `escolaridade` (`id_tipo`);

--
-- Limitadores para a tabela `sexo_escolaridade2016`
--
ALTER TABLE `sexo_escolaridade2016`
  ADD CONSTRAINT `fk_esc16` FOREIGN KEY (`tipo_esc`) REFERENCES `escolaridade` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
