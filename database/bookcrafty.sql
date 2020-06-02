SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bookcrafty`
--

CREATE DATABASE `bookcrafty`;

USE `bookcrafty`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`) VALUES
(1, 'Ficção'),
(2, 'Tecnico'),
(3, 'Romance'),
(4, 'Mangá'),
(5, 'Programação'),
(6, 'Terror');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id_editora` int(11) NOT NULL,
  `nome` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `nome`) VALUES
(1, 'Saraiva'),
(2, 'Cultura'),
(3, 'Draco'),
(4, 'Abril'),
(5, 'Veronesi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `endereco` varchar(199) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cep` int(8) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `fk_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_pedido`
--

CREATE TABLE `item_pedido` (
  `id_item_pedido` int(11) NOT NULL,
  `fk_pedido` int(11) NOT NULL,
  `fk_produto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `item_pedido`
--

INSERT INTO `item_pedido` (`id_item_pedido`, `fk_pedido`, `fk_produto`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(10, 1, 7),
(11, 2, 7),
(12, 8, 1),
(13, 8, 2),
(14, 9, 1),
(15, 9, 2),
(16, 10, 1),
(17, 10, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `fk_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `status`, `fk_usuario`) VALUES
(1, 'aprovado', 1),
(2, 'aprovado', 1),
(3, 'Criado', 1),
(4, 'Criado', 1),
(5, 'Criado', 1),
(6, 'Criado', 1),
(7, 'Criado', 1),
(8, 'Criado', 1),
(9, 'Criado', 1),
(10, 'Criado', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `fk_categoria` int(11) NOT NULL,
  `imagem` varchar(500) DEFAULT NULL,
  `fk_editora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `descricao`, `preco`, `fk_categoria`, `imagem`, `fk_editora`) VALUES
(1, 'Harry Potter', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 30.5, 2, '/Images/potter.jpg', 1),
(2, 'Deserto dos Tartaros', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 22, 3, '/Images/dino.jpg', 2),
(3, 'Brave New World', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 45, 1, '/Images/huxley.jpg', 3),
(4, 'Percy Jackson', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 40, 1, '/Images/percy.jpg', 4),
(5, 'A lenda do cavaleiro sem cabeça', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 2, '/Images/cavaleiro.jpg', 2),
(6, 'Mysql', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 20, 5, '/Images/mysql.jpg', 3),
(7, 'Laravel Ninja', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 15, 5, '/Images/ninjas.jpg', 2),
(8, 'Guiness Book 2019', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 2, '/Images/guiness.jpg', 4),
(9, 'Php para iniciantes', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 30, 5, '/Images/php.jpg', 2),
(10, 'The Murder Book', 'Esse é o melhor livro', 9, 2, '/Images/murder.jpg', 1),
(11, 'Dungeons & Dragons', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 8, 2, '/Images/dd.jpg', 3),
(12, 'O Hobbit', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 2, '/Images/hebit.jpg', 2),
(13, 'O guia do mochileiro das galáxias', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 25, 2, '/Images/galaxia.jpg', 3),
(14, 'Boku No hero', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 25, 4, '/Images/cdz.jpg', 4),
(15, 'O trono destruido', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 14, 2, '/Images/trono.jpg', 4),
(16, 'One Punch Man', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 40, 4, '/Images/saitama.jpg', 4),
(17, 'Naruto', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 30, 4, '/Images/naruto.jpg', 4),
(18, 'Dragon Ball', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 50, 4, '/Images/dragon.jpg', 4),
(19, 'Kahoot: O mal que nos espera', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 25, 2, '/Images/kahot.jpg', 3),
(20, 'Aviões', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 1, '/Images/aviao.jpg', 1),
(21, 'O Processo', 'livro treta do kafka, não aguento', 45, 3, NULL, 2),
(22, 'A insustentável leveza do ser', 'livro treta, favor evitar, mas é otimo', 45, 3, '/storage/uploads/treta.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200413192746-create_table_endereco.js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(145) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `senha`) VALUES
(1,'Richard Tozier','richie@email.com','123'),
(2,'Edward Kaspbrak','eddie@email.com','123'),
(3,'Beverly Marsh','bev@email.com','123'),
(4,'Stanley Uris','stan@email.com','123'),
(5,'William Denbrough','bill@email.com','123'),
(6,'Michael Hanlon','mike@email.com','123'),
(7,'Benjamin Hanscom','ben@email.com','123'),
(8,'Kay McCall','kay@email.com','123'),
(9,'Audra Phillips','audra@email.com','123'),
(10,'Carole Danner','carole@email.com','123'),
(11,'Thomas Rogan','tom@email.com','123'),
(12,'Henry Bowers','henry@email.com','123'),
(13,'Patrick Hockstetter','patrick@email.com','123'),
(14,'Victor Criss','vic@email.com','123'),
(15,'Reginald Huggins','belch@email.com','123'),
(16,'Greta Bowie','greta@email.com','123'),
(17,'Sally Mueller','sally@email.com','123'),
(18,'Vincent Taliendo','boogers@email.com','123'),
(19,'Georgie Denbrough','georgie@email.com','123'),
(20,'Robert Gray','pennywise@email.com','123');

-- --------------------------------------------------------

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario` (`fk_usuario`);

--
-- Índices para tabela `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD PRIMARY KEY (`id_item_pedido`),
  ADD KEY `fk_pedido` (`fk_pedido`),
  ADD KEY `fk_produto` (`fk_produto`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `fk_usuario` (`fk_usuario`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_produto_categoria` (`fk_categoria`),
  ADD KEY `fk_produto_editora1` (`fk_editora`);

--
-- Índices para tabela `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `item_pedido`
--
ALTER TABLE `item_pedido`
  MODIFY `id_item_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `item_pedido`
--
ALTER TABLE `item_pedido`
  ADD CONSTRAINT `item_pedido_ibfk_1` FOREIGN KEY (`fk_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `item_pedido_ibfk_2` FOREIGN KEY (`fk_produto`) REFERENCES `produto` (`id_produto`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`fk_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produto_editora1` FOREIGN KEY (`fk_editora`) REFERENCES `editora` (`id_editora`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
