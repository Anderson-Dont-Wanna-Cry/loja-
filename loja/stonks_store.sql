SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- BANCO COM INFORMAÇÕES FICTICIAS UTILIZADO
-- Database: `stonks_store`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `qc_categorias`
--

CREATE TABLE `qc_categorias` (
  `cate_id` int(11) NOT NULL,
  `cate_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- `qc_categorias`
--

INSERT INTO `qc_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(1, 'Geral', 'geral'),
(2, 'Camisas', 'categoria-camisa'),
(3, 'Calças', 'categoria-calcas'),
(4, 'Tênis', 'categoria-tenis'),
(5, 'Sapatos', 'categoria-sapatos');

-- --------------------------------------------------------

--
-- `qc_clientes`
--

CREATE TABLE `qc_clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_sobrenome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cli_numero` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_bairro` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cidade` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cli_uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cpf` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cli_rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_ddd` int(2) NOT NULL,
  `cli_fone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_celular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cli_pass` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- `qc_clientes`
--

INSERT INTO `qc_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(1, 'Silvio', 'Anderson', 'Rua Mozart', '67', 'JC', 'fort', 'CE', '583187', '00233566900', '3333333333333333', 31, '987958826', '987958826', 'silvioanderson20@hotmail.com', '123', '2020-09-16', '2020-09-16', '15:30:00'),
(2, 'Arlete', 'Freire', 'Rua Rio Grande', '55', 'JC', 'fort', 'CE', '5555555', '5555555', '55555555', 55, '5555555', '555555555', 'arlete@hotmail.com', '123', '2015-08-30', '2015-08-30', '12:30:00'),
(3, 'Pedro', 'Carvalho', 'Rua Anzol', '67', 'Alv', '', 'Debaixo', '31535522', '00233566900', '3333333333333333', 31, '987958826', '987958826', 'pedrocarvalho@hotmail.com', '123', '2013-09-16', '2013-09-16', '9:30:00');

-- --------------------------------------------------------

--
-- `qc_imagens`
--

CREATE TABLE `qc_imagens` (
  `img_id` int(11) NOT NULL,
  `img_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_imagens`
--

INSERT INTO `qc_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(1, 'tenis-couro-01.jpg', 7, ''),
(2, 'tenis-couro-02.jpg', 7, ''),
(3, 'tenis-couro-03.jpg', 7, '');

-- --------------------------------------------------------

--
-- `qc_pedidos`
--

CREATE TABLE `qc_pedidos` (
  `ped_id` int(11) NOT NULL,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cliente` int(11) NOT NULL,
  `ped_cod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ped_ref` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_forma` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_codigo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `ped_frete_valor` double(9,2) DEFAULT '0.00',
  `ped_frete_tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `qc_pedidos`
--

INSERT INTO `qc_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(1, '2021-08-30', '18:28:30', 1, '123456789', '054451ref', 'NAO', '', '', '', NULL, NULL),
(2, '2021-08-30', '18:38:21', 2, '55555555', '054451ref', '', '', '', '', NULL, NULL),
(3, '2021-08-30', '19:02:59', 1, '20170830180856', '054451ref', 'Pago', '', '', '', NULL, NULL),
(4, '2021-08-30', '19:03:36', 1, '554cea57af027ad67d3c07128471ada1', '054451ref', '', '', '', '', NULL, NULL),
(5, '2021-08-31', '17:11:59', 1, 'abfaf450e3111472a706305db9647c12', '054451ref', '', '', '', '', NULL, NULL),
(6, '2021-08-31', '20:51:33', 1, 'b1ba05b46708b03d8bb3224ef76edbb6', '1708312008331', '', '', '', '', NULL, NULL),
(7, '2021-08-31', '20:53:41', 1, '1708312008411', '1708312008411', '', '', '', '', NULL, NULL),
(8, '2021-09-01', '17:27:08', 1, '1709011709071', '1709011709071', '', '', '', '', NULL, NULL),
(9, '2021-09-01', '17:44:06', 1, '1709011709061', '1709011709061', '', '', '', '', NULL, NULL),
(10, '2021-09-01', '18:19:48', 1, '1709011809481', '1709011809481', '', '', '', '', 18.30, NULL),
(11, '2021-09-01', '18:21:43', 1, '1709011809431', '1709011809431', '', '', '', '', 16.10, NULL),
(12, '2021-09-01', '18:42:08', 1, '1709011809081', '1709011809081', '', '', '', '', 16.10, NULL),
(13, '2021-09-01', '19:07:30', 1, '1709011909261', '1709011909261', '', '', '', '', 16.10, NULL),
(14, '2021-09-01', '19:15:07', 1, '1709011909001', '1709011909001', '', '', '', '', 16.10, NULL),
(15, '2021-09-01', '19:19:14', 1, '1709011909111', '1709011909111', '', '', '', '', 16.10, NULL),
(16, '2017-09-01', '19:21:02', 1, '1709011909571', '1709011909571', '', '', '', '', 16.10, NULL),
(17, '2017-09-01', '19:42:14', 1, '1709011909091', '1709011909091', '', '', '', '', 18.30, NULL),
(18, '2017-09-01', '19:45:15', 1, '1709011909101', '1709011909101', '', '', '', '', 16.10, NULL),
(19, '2017-09-01', '22:52:45', 1, '1709012209331', '1709012209331', '', '', '', '', 16.10, NULL),
(20, '2017-09-01', '22:53:49', 1, '1709012209421', '1709012209421', '', '', '', '', 16.10, NULL),
(21, '2017-09-01', '23:07:00', 1, '1709012309201', '1709012309201', '', '', '', '', 16.10, NULL),
(22, '2017-09-01', '23:11:25', 1, '1709012309201', '1709012309201', '', '', '', '', 29.00, NULL),
(23, '2015-09-01', '23:19:31', 1, '1709012309241', '1709012309241', '', '', '', '', 16.10, NULL),
(24, '2015-09-01', '23:21:34', 1, '1709012309301', '1709012309301', '', '', '', '', 16.10, NULL),
(25, '2015-09-01', '23:25:59', 1, '1709012309521', '1709012309521', '', '', '', '', 17.20, NULL),
(26, '2015-09-01', '23:36:21', 1, '1709012309161', '1709012309161', '', '', '', '', 16.10, NULL),
(27, '2015-09-01', '23:47:09', 1, '1709012309041', '1709012309041', '', '', '', '', 26.80, NULL),
(28, '2015-09-01', '23:55:23', 1, '1709012309131', '1709012309131', '', '', '', '', 17.20, NULL),
(29, '2015-09-02', '00:01:32', 1, '1709020009231', '1709020009231', '', '', '', '', 17.20, NULL),
(30, '2012-09-02', '00:05:52', 1, '1709020009431', '1709020009431', '', '', '', '', 17.20, NULL),
(31, '2012-09-02', '00:08:07', 1, '1709020009591', '1709020009591', '', '', '', '', 29.00, NULL),
(32, '2012-09-02', '00:10:30', 1, '1709020009241', '1709020009241', '', '', '', '', 26.80, NULL),
(33, '2012-09-02', '00:12:38', 1, '1709020009331', '1709020009331', '', '', '', '', 16.10, NULL),
(34, '2012-09-02', '00:15:17', 1, '1709020009111', '1709020009111', '', '', '', '', 16.10, NULL),
(35, '2012-09-02', '00:16:15', 1, '1709020009101', '1709020009101', '', '', '', '', 16.10, NULL),
(36, '2012-09-02', '00:19:43', 1, '1709020009331', '1709020009331', '', '', '', '', 16.10, NULL),
(37, '2012-09-02', '00:22:14', 1, '1709020009041', '1709020009041', '', '', '', '', 29.00, NULL),
(38, '2012-09-02', '00:39:13', 1, '1709020009071', '1709020009071', '', '', '', '', 29.00, NULL);

-- --------------------------------------------------------

--
-- `qc_pedidos_itens`
--

CREATE TABLE `qc_pedidos_itens` (
  `item_id` int(11) NOT NULL,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_pedidos_itens`
--

INSERT INTO `qc_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(1, 9, 250.00, 2, '123456789'),
(2, 7, 750.00, 2, '123456789'),
(3, 8, 600.00, 1, '123456789'),
(4, 9, 250.00, 2, '123456789'),
(5, 7, 750.00, 2, '123456789'),
(6, 8, 600.00, 1, '123456789'),
(7, 9, 250.00, 1, '55555555'),
(8, 8, 600.00, 1, '55555555'),
(9, 9, 250.00, 1, '20170830180856'),
(10, 8, 600.00, 1, '20170830180856'),
(11, 8, 600.00, 1, '554cea57af027ad67d3c07128471ada1'),
(12, 1, 80.00, 1, '554cea57af027ad67d3c07128471ada1'),
(13, 9, 250.00, 1, 'abfaf450e3111472a706305db9647c12'),
(14, 9, 250.00, 1, 'b1ba05b46708b03d8bb3224ef76edbb6'),
(15, 10, 300.00, 1, '1708312008411'),
(16, 3, 250.00, 1, '1708312008411'),
(17, 7, 750.00, 1, '1708312008411'),
(18, 1, 80.00, 2, '1709011709071'),
(19, 2, 60.00, 1, '1709011709071'),
(20, 1, 80.00, 1, '1709011709061'),
(21, 1, 80.00, 1, '1709011809481'),
(22, 1, 80.00, 1, '1709011809431'),
(23, 2, 60.00, 1, '1709011809081'),
(24, 1, 80.00, 1, '1709011909261'),
(25, 2, 60.00, 1, '1709011909001'),
(26, 2, 60.00, 1, '1709011909111'),
(27, 1, 80.00, 1, '1709011909571'),
(28, 2, 60.00, 1, '1709011909571'),
(29, 1, 80.00, 1, '1709011909091'),
(30, 2, 60.00, 1, '1709011909091'),
(31, 1, 80.00, 1, '1709011909101'),
(32, 2, 60.00, 2, '1709011909101'),
(33, 1, 80.00, 1, '1709012209331'),
(34, 1, 80.00, 1, '1709012209421'),
(35, 2, 60.00, 1, '1709012209421'),
(36, 1, 80.00, 1, '1709012309201'),
(37, 2, 60.00, 1, '1709012309201'),
(38, 1, 80.00, 1, '1709012309201'),
(39, 2, 60.00, 1, '1709012309201'),
(40, 7, 750.00, 1, '1709012309201'),
(41, 6, 300.00, 1, '1709012309201'),
(42, 1, 80.00, 1, '1709012309241'),
(43, 7, 750.00, 1, '1709012309241'),
(44, 3, 250.00, 1, '1709012309241'),
(45, 1, 80.00, 1, '1709012309301'),
(46, 2, 60.00, 1, '1709012309301'),
(47, 5, 1250.00, 1, '1709012309301'),
(48, 1, 80.00, 1, '1709012309521'),
(49, 6, 300.00, 1, '1709012309521'),
(50, 7, 750.00, 1, '1709012309521'),
(51, 10, 300.00, 1, '1709012309521'),
(52, 4, 300.00, 1, '1709012309521'),
(53, 9, 250.00, 1, '1709012309161'),
(54, 2, 60.00, 1, '1709012309161'),
(55, 1, 80.00, 1, '1709012309041'),
(56, 2, 60.00, 1, '1709012309041'),
(57, 6, 300.00, 1, '1709012309041'),
(58, 1, 80.00, 1, '1709012309131'),
(59, 4, 300.00, 1, '1709012309131'),
(60, 6, 300.00, 1, '1709012309131'),
(61, 7, 750.00, 1, '1709012309131'),
(62, 3, 250.00, 1, '1709020009231'),
(63, 2, 60.00, 1, '1709020009231'),
(64, 1, 80.00, 1, '1709020009231'),
(65, 6, 300.00, 1, '1709020009231'),
(66, 7, 750.00, 1, '1709020009231'),
(67, 1, 80.00, 1, '1709020009431'),
(68, 2, 60.00, 1, '1709020009431'),
(69, 3, 250.00, 1, '1709020009431'),
(70, 6, 300.00, 1, '1709020009431'),
(71, 7, 750.00, 1, '1709020009431'),
(72, 1, 80.00, 1, '1709020009591'),
(73, 3, 250.00, 1, '1709020009591'),
(74, 5, 1250.00, 1, '1709020009591'),
(75, 7, 750.00, 1, '1709020009591'),
(76, 1, 80.00, 1, '1709020009241'),
(77, 3, 250.00, 1, '1709020009241'),
(78, 7, 750.00, 1, '1709020009241'),
(79, 1, 80.00, 1, '1709020009331'),
(80, 7, 750.00, 1, '1709020009331'),
(81, 4, 300.00, 1, '1709020009331'),
(82, 1, 80.00, 1, '1709020009111'),
(83, 1, 80.00, 1, '1709020009101'),
(84, 1, 80.00, 1, '1709020009331'),
(85, 1, 80.00, 1, '1709020009041'),
(86, 7, 750.00, 1, '1709020009041'),
(87, 2, 60.00, 1, '1709020009041'),
(88, 6, 300.00, 2, '1709020009041'),
(89, 1, 80.00, 1, '1709020009071'),
(90, 3, 250.00, 1, '1709020009071'),
(91, 7, 750.00, 1, '1709020009071'),
(92, 6, 300.00, 1, '1709020009071'),
(93, 10, 300.00, 1, '1709020009071');

-- --------------------------------------------------------

--
-- `qc_produtos`
--

CREATE TABLE `qc_produtos` (
  `pro_id` int(11) NOT NULL,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` int(11) NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_ref` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `pro_frete_free` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Não'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_produtos`
--

INSERT INTO `qc_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`) VALUES
(1, 2, 'Camisa Social', 'Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\r\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\r\nImagens Meramente Ilustrativas.', 0.050, 80.00, 80, 80, 80, '03.jpg', 'camisa-social', 1, 'modelo01', '02651551', 1, '1', 'gratuito'),
(2, 2, 'Camisa Polo', 'Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\r\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\r\nImagens Meramente Ilustrativas.', 0.060, 60.00, 50, 50, 50, 'camisa.jpg', 'camisa-polo', 10, 'modelo 054515', '15154', 1, '1', 'Não'),
(3, 3, 'Calça Jeans', 'Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\r\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.', 0.100, 250.00, 50, 50, 50, 'calca.jpg', 'calca-jeans', 15, '0654655', '2998415', 1, '1', 'Não'),
(4, 3, 'Calça de Moleton', 'Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\r\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.', 0.100, 300.00, 50, 50, 50, 'calca02.jpg', 'calca-de-moleton', 50, '15445', '554888', 1, '1', 'Não'),
(5, 4, 'Tênis Corvette Slim Freeway', 'Com leve amortecimento, o Tênis Corvette Slim Freeway conta com conforto e design esportivo para você acelerar em direção à autenticidade. Ideal para acompanhar os apaixonados por carros.', 0.100, 1250.00, 50, 50, 50, 'tenis-corvete.jpg', 'tenis-corvete', 10, '265566', '5565699', 1, '1', 'Não'),
(6, 4, 'Tênis Asics GEL Excite', 'O Tênis Asics GEL Excite 4 é desenvolvido com tecnologias que melhoram o desempenho nas corridas e caminhadas. Sistema de gel com absorção de impacto e EVA que retorna ao estado original com rapidez. ', 0.100, 300.00, 50, 50, 50, 'tenis-asics.jpg', 'tenis-asics-gel', 1, '111555', '1589555', 1, '1', 'Não'),
(7, 4, 'Tênis Couro Nike Shox Avenue', 'Apresentando amortecimento de 4 colunas no calcanhar, o Tênis Couro Nike Shox Avenue LTR auxilia na distribuição do peso. Conta com design esportivo, tração e sistema de amarração que envolve os pés. ', 0.100, 750.00, 50, 50, 50, 'tenis-couro.jpg', 'tenis-couro', 10, '05515151', '11558566', 1, '1', 'Não'),
(8, 4, 'Tênis Nike Shox Avenue', 'Aproveite a casualidade do dia a dia com muito estilo e pronto para aceitar qualquer convite. Com o Tênis Nike Shox Avenue você completa o visual com originalidade e desfruta de máximo conforto. ', 0.100, 600.00, 50, 50, 50, 'tenis-nike-shox.jpg', 'tenis-nike-shox', 50, '05899644', '05485515', 1, '1', 'Não'),
(9, 5, 'Sapatênis Burn York', 'Aposte em combinações masculinas para o “casual day” com o Sapatênis Burn York. Conferindo versatilidade ao visual, o modelo inspirado no esporte tem perfuros laterais e detalhe em ilhós colorido.', 0.100, 250.00, 50, 50, 50, 'sapatenis-burn.jpg', 'sapatenis-burn', 20, '84484884', '84845226', 1, '1', 'Não'),
(10, 5, 'Sapatênis Calvin Klein Boat Lth', 'O Sapatênis Calvin Klein Boat Lth é confeccionado em couro, que oferece ótima durabilidade. Leva um estilo casual e sofisticado às combinações, tem interior macio e fechamento por cadarço. ', 0.100, 300.00, 50, 50, 50, 'sapatenis-calvin-klein.jpg', 'sapatenis-calvin-klein', 10, '19855648', '4648848', 1, '1', 'Não');


--
-- Indexes for table `qc_categorias`
--
ALTER TABLE `qc_categorias`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `qc_clientes`
--
ALTER TABLE `qc_clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indexes for table `qc_imagens`
--
ALTER TABLE `qc_imagens`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `qc_pedidos`
--
ALTER TABLE `qc_pedidos`
  ADD PRIMARY KEY (`ped_id`);

--
-- Indexes for table `qc_pedidos_itens`
--
ALTER TABLE `qc_pedidos_itens`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `qc_produtos`
--
ALTER TABLE `qc_produtos`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qc_categorias`
--
ALTER TABLE `qc_categorias`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `qc_clientes`
--
ALTER TABLE `qc_clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `qc_imagens`
--
ALTER TABLE `qc_imagens`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `qc_pedidos`
--
ALTER TABLE `qc_pedidos`
  MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `qc_pedidos_itens`
--
ALTER TABLE `qc_pedidos_itens`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `qc_produtos`
--
ALTER TABLE `qc_produtos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

