-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Fev-2019 às 11:10
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advsafe`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `andamento`
--

CREATE TABLE `andamento` (
  `numeroand` int(11) NOT NULL,
  `numeroproc` varchar(25) NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `dataaud` varchar(10) DEFAULT NULL,
  `assunto` varchar(250) DEFAULT NULL,
  `horaaud` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `andamento`
--

INSERT INTO `andamento` (`numeroand`, `numeroproc`, `cliente`, `empresa`, `dataaud`, `assunto`, `horaaud`) VALUES
(1, '0100231-03.2018.5.01.0341', 94, 83, '', 'Pagamento da parcela no valor de R$ 525,00. 1/2.', ''),
(1, '0100232-85.2018.5.01.0341', 92, 79, '', 'Pagamento da Parcela 1/7 valor R$ 700,00.', ''),
(1, '0100294-28.2018.5.01.0341', 86, 75, '2019-04-30', '', '10:30'),
(1, '0100406-94.2018.5.01.0341', 96, 29, '', 'Pagamento da parcela no valor R$ 7000,00. 1/1', ''),
(1, '0100619-94.2018.5.01.0343', 37, 37, '', 'Pagamento da primeira Parcela no valor de R$ 464,00.', ''),
(2, '0100231-03.2018.5.01.0341', 94, 83, '', 'Pagamento da parcela no valor de R$ 525,00. 2/2', ''),
(2, '0100232-85.2018.5.01.0341', 92, 79, '', 'Pagamento da Parcela 2/7 valor R$ 700,00.', ''),
(2, '0100619-94.2018.5.01.0343', 37, 37, '', 'Pagamento da segunda Parcela no valor de R$ 400,00.', ''),
(3, '0100232-85.2018.5.01.0341', 92, 79, '', 'Pagamento da Parcela 3/7 valor R$ 700,00.', ''),
(4, '0100232-85.2018.5.01.0341', 92, 79, '', 'Pagamento da Parcela 4/7 valor R$ 700,00.', ''),
(5, '0100232-85.2018.5.01.0341', 92, 79, '', 'Pagamento da Parcela 5/7 valor R$ 700,00.', ''),
(6, '0100232-85.2018.5.01.0341', 92, 79, '', 'Pagamento da Parcela 6/7 valor R$ 700,00.', ''),
(7, '0100232-85.2018.5.01.0341', 92, 79, '', 'Deposito no valor de R$ 700,00. Parcela 7/7.', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcli` int(11) NOT NULL,
  `nomecli` varchar(150) DEFAULT NULL,
  `nacionalidade` varchar(50) DEFAULT NULL,
  `estcivil` varchar(15) DEFAULT NULL,
  `profissao` varchar(50) DEFAULT NULL,
  `ctps` varchar(7) DEFAULT NULL,
  `serie` varchar(6) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `rg` varchar(12) DEFAULT NULL,
  `pis` varchar(15) DEFAULT NULL,
  `endereco` varchar(250) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcli`, `nomecli`, `nacionalidade`, `estcivil`, `profissao`, `ctps`, `serie`, `cpf`, `rg`, `pis`, `endereco`, `telefone`, `celular`, `email`) VALUES
(1, 'Abel Silva da AnunciaÃ§Ã£o', 'brasileiro', 'solteiro', 'operador de plataforma', '0', '0', '105.136.648-00', '02.050.271-3', '200.7543.286-7', 'Rua Mantiqueira, nÂº 363, retiro volta redonda, rio de janeiro. CEP 27275-760', '', '', ''),
(2, 'Alexlane Cammarsono Lima', 'Brasileiro', 'Casado', 'Balconista', '0', '0', '096.633.967-33', '11.800.021-5', '126.8797.458-9', 'Av. Pinheiral, nÂº 81, SÃ£o Jorge, CEP. 27197-000, Pinheiral - RJ', '', '', ''),
(3, 'Alexsander Bento de Araujo', 'Brasileiro', 'Casado', '', '2832', '0072RJ', '970.951.337-09', '08.425.315-2', '122.7582.350-95', 'Rua joÃ£o Batista Ribeiro, nÂº 45, Colina, CEP 27197-000, Volta Redonda - RJ.', '(24) 3356-6234', '(24) 99438-5847', ''),
(4, 'Alexsander Jose da Cruz Oliveira', 'Brasileiro', 'solteiro', '', '30638', '0069RJ', '007.454.417-93', '', '', 'Rua Frei Caneca, nÂº 163, Jardim Cidade do AÃ§o, CEP 27275-405, Volta Redonda, RJ', '(24) 3026-3125', '(24) 99969-8340', ''),
(5, 'Wilson Eli da Silva', 'Brasileiro', 'Casado', 'Mestre de obra', '8477863', '0050RJ', '965.842.037-00', '22.519.06M-G', '108.9786.244-6', 'Rua 6, nÂº 10, Parque vitÃ³ria, TrÃªs PoÃ§os', '', '(24) 99916-8174', ''),
(6, 'Millena Inguina da Cruz', 'Brasileira', 'Solteira', 'GarÃ§onete', '3685829', '0050RJ', '177.430.177-61', '24.817.527-5', '201.0195.612-7', 'Rua A, nÂº 11, Bela Vista, Pinheiral CEP 27197-000', '(24) 3356-4814', '(24) 99932-6175', ''),
(7, 'Maychael de Souza Alvez', 'brasileiro', 'casado', 'Ajudante', '55220', '0149RJ', '123.709.987-09', '23.095.759-9', '', 'Travessa do Cruzeiro, nÂº 116, Arrozal - Pirai - RJ. CEP 27185-000 ', '', '(24) 99923-8488', ''),
(8, 'Jorge Luiz do Nascimento', 'Brasileiro', 'Casado', 'Caldeireiro', '79240', '0138RJ', '071.979.087-52', '10.884.423-4', '125.2463.016-3', 'Rodovia dos MetalÃºrgicos, nÂº 4390, Casa de Pedra - Volta Redonda - RJ. CEP. 27258-000', '(24) 2133-0737', '(24) 99883-1438', ''),
(9, 'Sandra GonÃ§alvez de Oliveira', 'brasileira', 'divorcidada', 'aposentada', '0', '0', '950.545.887-87', '07.633.744-3', '', 'Rua Um, nÂº 87, SiderlÃ¢ndia, Volta Redonda, RJ. CEP. 27273-670', '(20) 3348-9418', '(24) 98806-9835', ''),
(10, 'Gerson Lima da Rocha', 'Brasileiro', 'casado', 'Ajudante de AÃ§ougueiro', '6859174', '0040RJ', '010.002.037-27', '10.667.034-2', '122.9206.870-4', 'Rua 03 de Junho, nÂº 54 - SÃ£o SebastiÃ£o - SÃ£o Luiz - Volta Redonda - RJ. CEP. 27286-645', '(24) 3320-5385', '(24) 98846-5945', ''),
(11, 'Ivanir Machado Barbosa de Lima', 'Brasileiro', 'Casado', 'Do Lar', '0', '0', '753.484.207-78', '06.183.807-4', '', 'Rua das Palmeiras, nÂº 362,Palmeiras - Pinheiral, RJ. CEP 27197-000.', '(24) 3356-2230', '', ''),
(12, 'Ivanil Lopes', 'Brasileiro', 'Casado', 'Montador de Andaime', '64697', '0060RJ', '942.607.617-49', '07.695.532-7', '122.4762.818-6', 'Rua Princesa Isabel, nÂº 236, Ãgua Limpa - Volta Redonda - RJ. CEP 27250-550', '(24) 3350-2581', '(24) 99981-3213', ''),
(13, 'Jardel Luiz da Silva', 'Brrasileiro', 'Casado', 'motorista', '66614', '0107RJ', '078.443.087-02', '10.525.305-8', '181.1137.706-7', 'Rua BulhÃµes de Carvalho, nÂº 331, Casa 01, RolamÃ£o - Pinheiral - RJ. CEP 27197-000', '', '(24) 98842-8385', ''),
(14, 'Tatiany Correia da Silva', 'Brasileira', 'Casada', 'Merendeira', '13340', '0122RJ', '056.193.847-48', '20.109.244-2', '128.2526.858-7', 'Rua da LigaÃ§Ã£o, nÂº 36, Nova Primavera - Volta Redonda - RJ. CEP 27230-130\r\noutro cel: (24) 981515694', '', '(24) 98141-3711', ''),
(15, 'Thilmar Correa Machado Filho', 'Brasileiro', 'UniÃ£o EstÃ¡vel', 'Motorista de CaminhÃ£o', '4394028', '0040RJ', '733.609.297-72', '06.096.626-4', '108.3552.597-7', 'Rua 312, nÂº 79 - apto 101 - Sessenta - Volta Redonda - RJ. CEP 27256-100', '(24) 3346-7182', '(24) 98815-4650', ''),
(16, 'Paulo Roberto de Sousa da Silva', 'Brasileiro', 'Solteiro', 'Ajudante', '6069', '0010', '138.248.877-70', '22.248.510-4', '130.2010.558-6', 'Rua Carlindo Tavares, nÂº 762, Nova Primavera - Volta Redonda - RJ. CEP 27250-060', '', '(24) 99948-3443', ''),
(17, 'Carlos Henrique Oliveira da Silva', 'Brasileiro', 'Solteiro', '', '9384', '0100RJ', '029.330.847-08', '09.740.270-5', '125.4523.282-5', 'Rua Rodrigues de Abreu, nÂº 272, SÃ£o Carlos - Volta Redonda - RJ. CEP. 27265-360', '(24) 3343-4923', '(24) 99922-0277', ''),
(18, 'Rigia Ribeiro de Souza', 'Brasileira', 'Casada', 'Assistente Administrativo', '0120', '0054RJ', '996.766.057-00', '07.180.513-9', '122.7816.891-8', 'Rua Des. Toledo Pizza, nÂº 203, SÃ£o JoÃ£o - Volta Redonda - RJ. CEP. 27253-250', '', '(24) 99999-8303', ''),
(19, 'Edmar de Caires Silva', 'Brasileiro', 'Divorciado', 'Pedreiro', '25872', '0121RJ', '002.746.497-05', '08.324.241-2', '170.2563.288-9', 'Rua PG, nÂº 330, Apt. 101, Belo Horizonte - Volta Redonda - RJ. CEP 27278-515', '', '(24) 99964-0948', ''),
(20, 'Paulo Cezar de Farias', 'Brasileiro', 'Casado', 'Auxiliar de ServiÃ§os Gerais', '30093', '0042RJ', '007.643.227-02', '08.536.831-4', '122.0804.224-9', 'Rua G, nÂº 453, Vila Brasilia, CEP 27280-780, Volta Redonda, RJ.', '(24) 3338-5691', '(24) 99850-1611', ''),
(21, 'Maria Cristina Prazeres da Silva', 'Brasileira', 'Solteira', 'Monitor', '8447238', '0010ES', '125.031.027-00', '', '130.7232.962-0', 'Rua Alvorada, nÂº 91, Santo Agostinho - Volta Redonda - RJ. CEP. 27214-010', '', '(27) 99504-1552', ''),
(22, 'Edmar da Silva Lopes', 'Brasileiro', 'Casado', '', '65695', '0107RJ', '622.392.797-53', '04.529.620', '106.0980.292-2', 'Rua Boavista, nÂº 87 A, Santo Agostinho - Volta Redonda - RJ. CEP 27214-070', '', '', ''),
(23, 'Haroldo de Oliveira', 'Brasileiro', 'Casado', 'Ajudante', '0257835', '0020RJ', '499.963.667-04', '10.240.937-2', '107.9271.784-5', 'Rua 226, nÂº 124, Conforto - Volta Redonda - RJ. CEP 27265-070', '', '(24) 98153-5680', ''),
(24, 'Marco Antonio da silva', 'Brasileiro', 'Casado', 'Ajudante', '6600595', '0010RJ', '085.979.307-99', '08.998.002-1', '123.9626.026-1', 'Avenida Nossa Senhora do Amparo, nÂº 4035, Bloco L, Apt. 302, Santa Cruz - Volta Redonda - RJ. CEP 27215-270', '', '(24) 99844-7943', ''),
(25, 'Adilson Jose dos Santos', 'Brasileiro', 'Solteiro', 'eletricista', '46473', '0098RJ', '023.623.277-01', '08.793.549-0', '122.2009.761-9', 'Rua 12 de Outubro, nÂº 229, Parque Mayra - Pinheiral - RJ. 27197-000', '', '(24) 99834-5765', ''),
(26, 'ConceiÃ§Ã£o Santiago de Oliveira Souza', 'Brasileira', 'Casada', '', '0', '0', '131.506.757-90', '24.346.674-5', '', 'Rua JoÃ£o GuimarÃ£es, nÂº 53, Casa 03, Nova Primavera - Volta Redonda - RJ. CEP 27230-170', '', '(24) 99870-1775', ''),
(27, 'Tayson Nunes Matos de Paula', 'Brasileiro', 'Solteiro', '', '0', '0', '169.040.147-84', '28.037.338-2', '', 'Rua Cinco, nÂº 120, Vila Rica, 03 PoÃ§os, Volta Redonda - RJ. CEP 27240-290', '', '(24) 99938-0833', ''),
(28, 'Lucas Matheus Souza Matias', 'Brasileiro', 'Solteiro', 'Operador de Caixa', '4394383', '0040RJ', '177.455.487-99', '29.335.183-9', '203.1749.556-3', 'Rua Deolindo Miguel, nÂº 40, Vila Brasilia - Volta Redonda - RJ. CEP 27280-770', '(24) 3336-0705', '(24) 99983-1020', ''),
(29, 'Mauricio Santos da Silva', 'Brasileiro', 'Solteiro', 'Pedreiro', '5913712', '0030AL', '112.649.194-25', '35.603.933', '165.2578.926-6', 'Rua Lateral, nÂº 765, Santo Agostinho - Volta Redonda - RJ. CEP 27230-070', '', '(24) 98117-0155', ''),
(30, 'Jean Carlo Mosse Franco', 'Brasileiro', 'Casado', 'Vigilante', '41669', '0063RJ', '994.800.347-00', '08.552.818-0', '122.9288.140-5', 'Rua Nilo PeÃ§anha, nÂº 68, Eucaliptal - Volta Redonda - RJ. CEP 27263-140', '', '(24) 98116-1754', ''),
(31, 'Queila Amorim Costa', 'Brasileira', 'Solteira', 'TÃ©cnica em enfermagem', '94132', '0173RJ', '157.805.107-09', '26.935.421-3', '200.3865.184-4', 'Rua Rio Paraibuna, nÂº 376, Agua Limpa - Volta Redonda - RJ. CEP 27250-170', '(24) 3350-2082', '(24) 99985-9932', ''),
(32, 'Olau Alves Borges', 'Brasileiro', 'Casado', 'Aposentado', '0', '0', '496.366.427-53', '03.523.090', '', 'Avenida Dois, nÂº 35, Bela Vista - Volta Redonda - RJ. CEP 27262-030', '', '', ''),
(33, 'Carlos Alberto Moreira Ramos', 'Brasileiro', 'Casado', '', '0', '0', '498.454.977-72', '15.855.840-8', '', 'Rua Coroados, nÂº 57, Aterrado - Volta Redonda - RJ. CEP 27213-050', '', '', ''),
(34, 'Helio Matias Malaquias', 'Brasileiro', 'Casado    ', 'MecÃ¢nico de ManutenÃ§Ã£o', '44421', '0004RJ', '254.028.207-59', '04.279.595-5', '103.2282.623-0', 'Rua Antonio da Silva Reis, nÂº 615, Nova EsperanÃ§a - Barra Mansa - RJ. CEP 27338-500', '(24) 3326-9962', '', ''),
(35, 'Ariane GussÃ£o de Souza', 'Brasileiro', 'Solteira', 'Auxiliar de ServiÃ§os Gerais', '4392647', '0040RJ', '118.056.577-04', '21.848.907-8', '212.4954.446-9', 'Avenida Paulo Erlei A. Abrantes, nÂº 289, Casa 02, 03 PoÃ§os - Volta Redonda - RJ. CEP 27240-560', '', '(24) 99851-9736', ''),
(36, 'Tarcisio Silva Santos', 'Brasileiro', 'Casado', 'Maquinista', '49128', '0026RJ', '791.657.967-72', '06.772.634-9', '122.2532.331-5', 'Rua 544, nÂº 19, Jardim ParaÃ­ba - Volta Redonda - RJ. CEP 27215-180', '', '(24) 99836-1240', ''),
(37, 'Juventina Selma Fernandes', 'Brasileira', 'Casada', 'Auxiliar de ServiÃ§os Gerais', '38948', '0035MG', '051.743.577-93', '10.744.089-3', '206.0974.564-0', 'Rua Alvorada, nÂº 21, Santo Agostinho - Volta Redonda - RJ. CEP 27290-320', '', '(24) 99226-3951', ''),
(38, 'Edvaldo Gomes Sangi', 'Brasileiro', 'Solteiro', 'Auxiliar de ServiÃ§os Gerais', '00694', '0146RJ', '121.830.307-71', '21.907.794-8', '', 'Rua Santana, nÂº 96, Nova Primavera - Volta Redonda - RJ. CEP 27230-010', '', '(24) 99817-5939', ''),
(39, 'Josias de Souza Belisario', 'Brasileiro', 'Solteiro', 'Soldador', '0', '0', '', '04.561.442-7', '', 'residente na Rua 2, nÂ° 157, Conforto â€“ Volta Redonda â€“ RJ.', '(24) 3348-3329', '(24) 99913-2594', ''),
(40, 'Delfina Rocha Macedo Werneck', 'Brasileira', 'Casada', 'Do Lar', '0', '0', '026.763.687-37', '04.277.886-0', '', 'Rua JoÃ£o XXIII, nÂº 46, Monte Castelo - Volta Redonda - RJ. CEP 27253-090', '(24) 3343-0294', '', ''),
(41, 'Paulo Marcelino dos Reis', 'Brasileiro', 'Casado', 'Soldador', '16204', '0991RJ', '277.290.282-04', '27.828.067', '108.5987.211-1', 'Avenida Visconde do Rio Branco, nÂº 995, Bloco 04, Apt. 101, Ãgua Limpa - Volta Redonda - RJ. CEP 27250-250', '', '(24) 99326-1991', ''),
(42, 'Cleidiane de Souza Rodrigues Chaves', 'Brasileira', 'Casada', 'Treiner de Caixa', '6599848', '0010RJ', '130.080.347-99', '33.119.850-7', '130.2536.662-0', 'Rua Eloy Pereira Pimentel, nÂº 800, Ãgua Limpa - Volta Redonda - RJ. CEP 27250-005', '', '(24) 99280-2199', ''),
(43, 'Rogerio Ferreira de Souza', 'Brasileiro', 'Casado', 'MecÃ¢nico', '90724', '0006MG', '530.510.846-20', '07.206.069-2', '121.4172.592-7', 'Rua Rio Paranapanema, nÂº 104, Ãgua Limpa - Volta Redonda - RJ. CEP 27250-180', '', '(24) 99850-1428', ''),
(44, 'Antonio de Oliveira Junior', 'Brasileiro', 'Casado', '', '46893', '0063RJ', '000.192.057-08', '', '123.3498.968-3', 'Rua SebastiÃ£o P. Martins, nÂº 60, Apt. 101, Retiro - Volta Redonda - RJ. CEP 27280-670', '', '(24) 99814-0509', ''),
(45, 'Alexandra Paz dos Santos', 'Brasileira', 'Casada', '', '0', '0', '171.170.647-73', '29.974.110-8', '', 'Avenida Beira Rio, nÂº 153, Aero Clube - Volta Redonda - RJ. CEP 27283-040', '', '(24) 99959-5960', ''),
(46, 'Carlos Candido Borges ', 'Brasileiro', 'Casado', 'Aposentado', '96697', '0004RJ', '706.075.247-15', '05.711.989-3', '170.0655.882-2', 'Avenida dos GaÃºchos, nÂº 30, Bairro Cailandia - Volta Redonda - RJ. CEP 27220-430', '(24) 3342-2395', '(24) 99907-8128', ''),
(47, 'Hercules de Freitas Silva', 'Brasileiro', 'Casado', 'Pedreiro', '37995', '0142RJ', '103.511.907-24', '20.396.348-3', '130.1384.160-4', 'Rua Maestro Antonio Landim, nÂº 48, Centro - Arrozal - PiraÃ­ - RJ. CEP 27185-000', '', '(24) 99938-8628', ''),
(48, 'Juliana Cristina da Silva', 'Brasileira', 'Solteira', 'Balconista', '71986', '0169RJ', '158.725.657-63', '27.234.544-8', '', 'Rua Votorantim, nÂº 18, Vila Rica - 03 PoÃ§os - Volta Redonda - RJ. CEP 27240-010', '(24) 3336-2156', '(24) 99873-7041', ''),
(49, 'Luiz Claudio de Vasconcellos', 'Brasileiro', 'Casado', 'Instrutor', '0', '0', '069.833.257-10', '', '124.3520.493-2', 'RG 10.172.768-31 Rua Nova Friburgo, nÂº 735, Coqueiros - Volta Redonda - RJ. CEP 27280-841', '(24) 3344-0085', '(24) 99847-1763', ''),
(50, 'Antonio Ventura Lopes', 'Brasileiro', 'Casado', 'MecÃ¢nico de ManutenÃ§Ã£o', '36089', '0042RJ', '845.391.197-53', '06.030.259-3', '120.2800.661-9', 'Rua 1056, nÂº 159, Volta Grande I - Volta Redonda - RJ. CEP 27211-650.', '(24) 3350-4285', '(24) 97403-1433', ''),
(51, 'Edclaudio Luiz dos Santos', 'Brasileiro', 'Casado', 'Pedreiro', '04236', '0024PB', '118.332.377-81', '21.887.053-3', '161.6669.007-0', 'Viela Antonio Siqueira Sarriar, nÂº 200, Vila Brasilia - Volta Redonda - RJ. CEP 27281-785', '', '(24) 99835-1321', ''),
(52, 'Edilson da ConceiÃ§Ã£o', 'Brasileiro', 'Divorciado', 'MecÃ¢nico de ManutenÃ§Ã£o', '27081', '0102RJ', '658.018.907-00', '05.324.834-0', '107.0312.311-1', 'Avenida Visconde do Rio Branco, nÂº 447, Ãgua Limpa - Volta Redonda - RJ. CEP 27250-250', '(24) 3348-0387', '(24) 99831-6731', ''),
(53, 'JoÃ£o Batista da Silva', 'Brasileiro', 'Casado', '', '0', '0', '103.329.377-63', '10.656.996-5', '', 'Rua Chile, nÂº 6, Bairro ParaÃ­so - Pinheiral - RJ. CEP 27197-000.', '', '', ''),
(54, 'Leandro Ramos Santana', 'Brasileiro', 'Solteiro', 'MecÃ¢nico', '8778373', '0040RJ', '123.224.377-94', '22.120.864-8', '163.5567.473-0', 'Rua PetrÃ³polis, nÂº 394, Casa 02, SiderlÃ¢ndia - Volta Redonda - RJ. CEP. 27273-270', '(24) 3337-6170', '(24) 98108-1594', ''),
(55, 'Odi Mota do Carmo', 'Brasileiro', 'Casado', 'Ajudante', '31112', '0175RJ', '174.005.617-58', '29.913.734-9', '', 'Travessa Castelo Branco, nÂº 113, Centro - Pinheiral - RJ. CEP 27197-000', '', '(24) 99903-0470', ''),
(56, 'Marlon Brendo de Azevedo da Silva', 'Brasileiro', 'Solteiro', '', '07348', '0168RJ', '125.827.217-27', '23.285.021-4', '200.3891.340-7', 'Rua Sinerio de Oliveira, nÂº 23, Palmeiras - Pinheiral - RJ. CEP 27197-000.', '(09) 9854-0673', '(24) 99942-8408', ''),
(57, 'Patricia da Costa Mariano', 'Brasileira', 'Solteira', 'DomÃ©stica', '27122', '0126RJ', '096.893.527-33', '20.291.684-7', '', 'Avenida Antonio Almeida, nÂº 406, Apt. 202, Retiro - Volta Redonda - RJ. CEP 27277-330.', '(24) 3345-7614', '(24) 98875-1904', ''),
(58, 'Uilian Carmo da Silva Rodrigues', 'Brasileiro', 'Casado', 'Motorista', '5595244', '0010RJ', '095.428.317-14', '12.543.928-1', '128.3110.660-7', 'Rua Erica Bert, nÂº 173 A, TrÃªs PoÃ§os - Volta Redonda - RJ. CEP 27240-550.', '', '(24) 99967-1940', ''),
(59, 'Antonio Marques Neto', 'Brasileiro', 'Casado', '', '0', '0', '131.270.477-20', '80.857.100-4', '', 'Rua Chile, nÂº 07, ParaÃ­so - Pinheiral - RJ. ', '', '', ''),
(60, 'Bruno de Aguiar da Silva', 'Brasileiro', 'Solteiro', 'Caldeireiro', '60271', '0148RJ', '119.688.037-93', '21.535.981-1', '203.1479.896-4', 'Rua 06, nÂº 123, AÃ§ude II - Volta Redonda - RJ. CEP 27276-340', '(24) 3341-5947', '', ''),
(61, 'Marcos Antonio de Mattos', 'Brasileiro', 'Divorciado', 'Motorista', '3526', '0480RJ', '497.307.207-97', '05.154.497-1', '107.4548.761-8', 'Avenida Paulo Erlei Alves Abrantes, nÂº 1053, 03 PoÃ§os - Volta Redonda - RJ. CEP 27240-560', '(24) 3340-0490', '(24) 99823-2929', ''),
(62, 'Reinaldo Ribeiro', 'Brasileiro', 'Solteiro', 'Auxiliar de ServiÃ§os Gerais', '7926714', '0010', '007.495.447-40', '09.297.196-9', '123.9625.588-8', 'Rua PG, nÂº 261, Nova EsperanÃ§a - Volta Redonda - RJ. CEP 27278-515', '(09) 9885-8554', '(24) 99939-6887', ''),
(63, 'Fabio Luiz Emiliano Trajano', 'Brasileiro', 'Divorciado', 'Eletricista', '84006', '0123RJ', '055.026.477-90', '12.397.794-4', '127.3789.458-3', 'Rua Maria Estetolina, nÂº 514, Palmeiras - Pinheiral - RJ. CEP 27197-000', '', '(24) 99841-1244', ''),
(64, 'Eder Jofre Leal', 'Brasileiro', 'Casado', 'Motorista', '97184', '0157RJ', '098.138.987-20', '12.645.656-8', '190.2437.696-6', 'Avenida GetÃºlio Vargas, nÂº 865, Apt. 203, Centro - Volta Redonda - RJ. CEP 27253-410', '', '(24) 99858-4709', ''),
(65, 'Hyndrews dos Reis Dias Nogueira', 'Brasileiro', 'Solteiro', 'Repositor FarmacÃªutico LÃ­der', '17981', '0091RJ', '046.395.137-08', '10.386.784-2', '124.4980.265-9', 'Rua Francisco de Souza Guedes, nÂº 35, Centro - Rio Claro - RJ. CEP 27460-000', '', '(24) 99828-3445', ''),
(66, 'Bianca de Brito Oliveira', 'Brasileira', 'Casada', 'TÃ©cnica de enfermagem', '77959', '0138RJ', '143.668.387-45', '', '203.7829.069-4', 'Rua Juvenal Xavier Botelho, nÂº 754, VarjÃ£o - Pinheiral - RJ. CEP 27297-000', '', '(24) 99814-8987', ''),
(67, 'Simone da Silva', 'Brasileira', 'Solteira', 'Do Lar', '0', '0', '115.559.667-64', '21.421.305-0', '', 'Alameda 03, nÂº 990, Casa 01, SÃ£o SebastiÃ£o - Barra Mansa - RJ. CEP 27337-050', '', '(24) 99961-2548', ''),
(68, 'Maximo Viana', 'Brasileiro', 'Casado', '', '0', '0', '397.737.626-04', '', '', 'ServidÃ£o Dois IrmÃ£os, nÂº 60, Vila Rica - Volta redonda - RJ. CEP 27240-040', '(24) 3340-0397', '(24) 98804-7956', ''),
(69, 'Jorge Vitorino da Silva', 'Brasileiro', 'Casado', 'Supervisor', '65501', '0024RJ', '570.308.397-49', '04.218.668-4', '107.9624.136-5', 'Travessa A, Bloco E, s/nÂº, Bairro Parque Mambucaba - Angra dos Reis - RJ. CEP 23955-562', '', '', ''),
(70, 'Paulo Roberto de Sousa', 'Brasileiro', 'Casado', 'Motorista', '6436', '0106RJ', '000.221.087-85', '08.542.763-1', '123.3522.915-1', 'Rua Severino Campos de Oliveira, nÂº 489, Fazenda da Grama - Rio Claro - RJ. CEP 27470-000', '', '(24) 99862-2957', ''),
(71, 'Ernando Vieira da Silva', 'Brasileiro', 'Casado', 'MecÃ¢nico de ManutenÃ§Ã£o', '46248', '0004RJ', '841.606.247-15', '07.134.770-2', '120.5497.801-0', 'Alameda 34, nÂº 49, Mariana Torres - Volta Redonda - RJ. CEP 27275-790', '', '(24) 99816-4123', ''),
(72, 'Helcio Luiz Moura Alvez', 'Brasileiro', 'Casado', 'Gerente de Loja', '81028', '0025RJ', '347.734.957-15', '50.256.17', '103.2365.677-0', 'Rua CaetÃ©s, nÂº 124, Apt. 101, Retiro - Volta Redonda - RJ. CEP 27275-520', '', '(24) 98135-5506', ''),
(73, 'Viviane de Lima', 'Brasileira', 'Solteira', 'Balconista', '9209240', '0010RJ', '130.358.147-75', '23.578.118-6', '206.1050.666-2', 'Rua das Cravinas, nÂº 25, Ãgua Limpa - Volta Redonda - RJ. CEP 27250-000', '', '(24) 99994-4299', ''),
(74, 'Andreia Marcia Vidal', 'Brasileira', 'Solteira', 'Auxiliar Administrativa', '9214298', '0010RJ', '128.914.277-77', '24.664.763-0', '131.1685.360-5', 'Rua Padre Carlos Muller, nÂº 158, Retiro - Volta Redonda - RJ. CEP 27277-280', '(24) 3341-4581', '(24) 99828-2948', ''),
(75, 'Rosangela Viana Vicente', 'Brasileira', 'Divorciada', '', '50536', '0098RJ', '021.176.417-50', '10.240.709-5', '124.5652.028-0', 'ServidÃ£o Margaridas, nÂº 070, TrÃªs PoÃ§os - Volta Redonda - RJ. CEP 27292-000', '(24) 3340-0268', '(24) 99918-3180', ''),
(76, 'Luiz Jose Teixeira', 'Brasileiro', 'Casado', 'Coletor', '23460', '0102RJ', '682.578.216-91', '10.386.280-1', '', 'Rua S, nÂº 21, Nova Primavera - Volta Redonda - RJ. CEP 27230-130', '', '(24) 99949-7856', ''),
(77, 'Adriana Nunes da Silva', 'Brasileira', 'Solteira', 'Coletora', '23372', '0114RJ', '110.252.867-66', '20.492.058-1', '', 'Rua Miguel Pereira, nÂº 143, Retiro - Volta Redonda - RJ. CEP 27275-550', '', '(24) 99938-0833', ''),
(78, 'Gilvan dos Santos Silva', 'Brasileiro', 'Casado', 'Pedreiro', '7327320', '0050RJ', '147.492.737-83', '27.532.734-4', '200.3806.337-3', 'Rua Jaime PantaleÃ£o de Moraes, nÂº 62, Santo Agostinho - Volta Redonda - RJ. CEP 27215-762', '(09) 9822-8682', '(24) 99917-5513', ''),
(79, 'JoÃ£o Batista dos Reis', 'Brasileiro', 'Casado', 'Pedreiro', '1126592', '0020RJ', '498.667.537-00', '30.711.623-6', '107.5402.366-1', 'Rua Isalino Gomes da Silva, nÂº 57, ParaÃ­so - Barra Mansa - RJ. CEP 27333-050', '(09) 9974-6858', '(24) 99911-8296', ''),
(80, 'Nelsy Elias Pereira', 'Brasileiro', 'Casado', 'Contador e Normalizador de rede elÃ©trica', '28369', '0079RS', '963.692.287-68', '07.823.261-8', '121.5082.039-2', 'Avenida Brasilia, nÂº 524, Vila Brasilia - Volta Redonda - RJ. CEP 27280-000\r\ncelular: (24) 99237-5506', '(24) 3346-2413', '(24) 99203-4136', ''),
(81, 'Marco AurÃ©lio Gomes da Silva', 'Brasileiro', 'Solteiro', 'Ajudante', '40489', '0023RJ', '594.201.036-68', '09.019.191-7', '106.0980.292-2', 'Rua Henrique Crispim de Almeida, nÂº 111, Boa Sorte - Barra Mansa - RJ. CEP 27331-060', '(09) 9822-0888', '(24) 98836-9099', ''),
(82, 'Fernando Santos Amaraes', 'Brasileiro', 'Solteiro', '', '57408', '0148RJ', '124.137.237-67', '21.524.167-0', '', 'Rua Carlos Gomes, nÂº 15, Santa InÃªs - Barra Mansa - RJ. CEP 27335-020', '', '(24) 99868-2176', ''),
(83, 'Lucas Lima Teixeira', 'Brasileiro', 'Solteiro', 'Pedagogo', '0', '0', '128.230.277-93', '24.066.559-6', '', 'Avenida NestÃ³rio, nÂº 977, Belo Horizonte - Volta Redonda - RJ. CEP 27278-180', '(24) 3338-7294', '(24) 99912-4225', ''),
(84, 'Ana Paula de Castro', 'Brasileira', 'Casada', '', '0', '0', '109.868.237-83', '21.356.910-6', '', 'Rua J, nÂº 101, Casa 010 - Boa Vista - Barra Mansa - RJ. CEP 27336-550', '(24) 3340-9403', '(24) 99983-7747', ''),
(85, 'Suelen Ribeiro Oliveira', 'Brasileira', 'Casada', '', '61203', '0145RJ', '117.394.167-32', '', '210.2793.929-7', 'Rua IngÃ¡, nÂº 78, SÃ£o Jorge - Pinheiral - RJ. CEP 27197-000', '', '', ''),
(86, 'Maria Aparecida de Jesus da ConceiÃ§Ã£o', 'Brasileira', 'Solteira', 'DomÃ©stica', '05079', '0168RJ', '134.934.747-76', '23.596.406-1', '', 'Avenida Brasilia, nÂº 24, ParaÃ­so - Pinheiral - RJ. CEP 27197-000', '', '(24) 99946-8933', ''),
(87, 'Juliana rebeca Francisco', 'Brasileira', 'Solteira', 'Operadora de Caixa', '0', '0', '170.332.067-04', '29.863.541-8', '146.8905.037-2', 'Rua Nilton Penna Botelho, nÂº 4328, Centro - Pinheiral - RJ. CEP 27197-000', '', '(24) 98170-2038', ''),
(88, 'Patricia de Araujo', 'Brasileira', 'Solteira', '', '0', '0', '053.737.757-38', '08.352.710-9', '', 'Rua JoÃ£o Benicio Ribeiro, nÂº 401, Chalet - Pinheiral - RJ. CEP 27197-000', '', '', ''),
(89, 'Reginaldo Motta de Oliveira', 'Brasileiro', 'Casado', 'Soldador', '5594669', '0010RJ', '789.490.507-06', '06.673.903-8', '121.1850.432-4', 'Rua NatÃ¡lia Cristina, nÂº 01, Parque SÃ£o Jorge - Santo Agostinho - Volta Redonda - RJ. CEP 27211-125 ', '(09) 9283-8788', '(24) 99975-2753', ''),
(90, 'Antonio Eduardo', 'Brasileiro', 'Divorciado', '', '0', '0', '415.260.907-91', '04.329.949-4', '', 'Rua Um, nÂº 500, Vila Rica - 03 PoÃ§os - Volta Redonda - RJ. CEP 27292-630', '(24) 3340-0330', '(24) 03340-0487', ''),
(91, 'Jose Gualberto Siqueira', 'Brasileiro', 'Casado', 'MecÃ¢nico Montador', '15992', '0026RJ', '831.964.127-68', '85.846.90', '', 'ServidÃ£o Elias Duarte da Silva, nÂº 29, Vila Elmira - Barra Mansa - RJ. CEP 27350-820', '(24) 3349-0601', '(24) 99847-6758', ''),
(92, 'Sergio Rogerio Barros Potengy', 'Brasileiro', 'Divorciado', 'Motorista', '25477', '0041RJ', '865.516.637-53', '07.261.984-4', '120.3735.433-5', 'Avenida Pinheiral, nÂº 744, SÃ£o Jorge - Pinheiral - RJ. CEP 27197-000.', '', '(24) 99263-4420', ''),
(93, 'Alexandre Wagner de Matos Silva', 'Brasileiro', 'Casado', '', '9188269', '0050RJ', '025.873.307-18', '09.297.155-5', '170.4496.407-7', 'Rua Madame Curie, nÂº 129, Vila Mury - Volta Redonda- RJ. CEP 27281-040.', '', '', ''),
(94, 'Grazielly Carneiro Castro', 'Brasileira', 'Solteira', 'Operadora de Caixa', '06132', '0168RJ', '116.099.517-60', '21.046.909-4', '162.7954.244-1', 'Rua AndrelÃ¢ndia, nÂº 62, Casa 01 - MinerlÃ¢ndia - Volta Redonda - RJ. CEP 27264-200', '', '(24) 99832-1834', ''),
(95, 'Maria Jose Neves Neto', 'Brasileira', 'Casada', '', '0', '0', '118.951.967-44', '11.805.736-3', '', 'Rua Bela Vista, nÂº 91, Santo Agostinho - Volta Redonda - RJ. CEP 27214-615', '', '(24) 99829-1589', ''),
(96, 'Cleidenete do Nascimento', 'Brasileira', 'Divorciada', 'Fiscal de PrevenÃ§Ã£o', '8417374', '0010RJ', '124.934.997-43', '21.359.028', '203.1012.345-8', 'Rua 31, nÂº 528, Vila Rica - Jardim Tiradentes - Volta Redonda - RJ. CEP 27259-330', '(24) 3349-6761', '(24) 99395-4548', ''),
(97, 'Carlos Antonio de Almeida', 'Brasileiro', 'Casado', 'Soldador Industrial', '07516', '0026RJ', '977.747.827-53', '07.877.987-3', '123.3964.440-4', 'Rua Santos Dumont, nÂº 43, Apt. 201, Barra Mansa - RJ. CEP 27310-150', '', '(24) 99252-9402', ''),
(98, 'Queit Aparecida Neves dos Santos', 'Brasileira', 'Casada', '', '0', '0', '128.175.567-20', '12.008.146-8', '', 'Rua BulhÃµes de Carvalho, nÂº 178, Centro - Pinheiral - RJ. CEP 27197-000', '', '', ''),
(99, 'Jose Theodoro', 'Brasileiro', 'Casado', 'Soldador Industrial', '7963', '0004RJ', '867.470.457-34', '07.411.847-2', '120.0131.473-8', 'Wilson Rodrigues do Carmo, nÂº 168, SÃ£o SebastiÃ£o - Barra Mansa - RJ. CEP 27332-440.', '(09) 8154-9667', '(24) 99924-1500', ''),
(100, 'Jose Moreira da Silva ', 'Brasileiro', 'Casado', 'Soldador Industrial', '76616', '0485RJ', '233.905.497-49', '06.404.805-1', '103.2055.792-5', 'Rua Leonda, nÂº 173, Casa 02 - Retiro - Volta Redonda - RJ. CEP 27281-280', '', '(24) 99999-2241', ''),
(101, 'Roseli Oliveira de Almeida', 'Brasileira', 'Casada', 'Costureira', '0', '0', '003.788.477-83', '26.377.268-3', '', 'Rua Helena Correia de Miranda, nÂº 134, 03 PoÃ§os - Pinheiral - RJ. CEP 27197-000', '', '', ''),
(102, 'Vera Lucia de Oliveira Silva', 'Brasileira', 'Casada', 'Auxiliar de ServiÃ§os Gerais', '69653', '0060RJ', '021.159.897-67', '10.646.138-7', '', 'Rua Narcisio, nÂº 42, Ãgua Limpa - Volta Redonda - RJ. CEP 27250-440', '', '(24) 99992-6061', ''),
(103, 'Darcise Souza de Carvalho', 'Brasileiro', 'Casado', 'Inspetor de Solda', '0', '0', '106.407.147-30', '20.872.845-1', '', 'Rua Alvorada, nÂº 91, Santo Agostinho - Volta Redonda - RJ. CEP 27214-010', '', '(24) 99937-7283', ''),
(104, 'Matheus da Costa Santos', 'Brasileiro', 'Solteiro', 'Promotor', '0', '0', '154.077.787-18', '28.218.237-2', '', 'Rua 43, nÂº 56, Jardim Vila Rica - Volta Redonda - RJ. CEP 27259-450', '', '(24) 99274-7781', ''),
(105, 'Antonio Carlos dos Santos', 'Brasileiro', 'Solteiro', 'Pintor', '20602', '0079RJ', '728.496.227-53', '08.867.098-9', '', 'Rua Waldomiro Peres GonÃ§alves, nÂº 2146, ParaÃ­so - Barra Mansa - RJ. CEP 27333-002', '(24) 3339-1581', '(24) 98105-6463', ''),
(106, 'Carlos Eduardo de Oliveira', 'Brasileiro', 'Casado', '', '37357', '0128RJ', '087.048.447-85', '10.884.318-6', '128.0306.777-5', 'Rua A, nÂº 421, Padre Josimo - Volta Redonda - RJ. CEP 27273-240', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `numeroproc` varchar(25) NOT NULL,
  `documento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`id`, `numeroproc`, `documento`) VALUES
(1, '0100231-03.2018.5.01.0341', 'f9cac7784c17b4fca72f1abaf80ff17co.jpg'),
(1, '0100232-85.2018.5.01.0341', '72291059bb4d0b647c8a1403b3423d931.jpg'),
(1, '0100406-94.2018.5.01.0341', 'ca8d5247c14adb06d61e507cd353cf09o.jpg'),
(2, '0100232-85.2018.5.01.0341', '86087fe97a27f5e3c748139124c07f882.jpg'),
(3, '0100232-85.2018.5.01.0341', '463650c3c136253e6a4a3f262c0f113d3.jpg'),
(4, '0100232-85.2018.5.01.0341', 'b0d403b5ec62b7b92e3b75cfbccef4da4.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `idemp` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `endereco` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`idemp`, `nome`, `endereco`) VALUES
(1, 'MIP Engenharia', '0'),
(2, 'JMA Gaspar ME', 'Rua Domingos Mariano, nÂº 21, centro, CEP 27197-000 - Pinheiral - RJ'),
(4, 'Multiambiental Coletas e Transportes', 'Rua Julio Ribeiro, nÂº 260 e 280, Bonsucesso - Rio de Janeiro - RJ, CEP 21040-330'),
(5, 'Chicken in House', 'Rua treze, nÂº 104, Volta Redonda - RJ. CEP 27259-160'),
(6, 'Wagner Luiz de Souza Peres ME', 'Av. Nilton Pena Botelho, nÂº 739 - Centro, Pinheiral - RJ. CEP 27297-000'),
(7, 'EBD Empresa brasileira de DistrivbuiÃ§Ã£o', 'Rua de Agrongolo, nÂº 362, Penha - Rio de Janeiro. CEP 21020-190.'),
(8, 'Mantec ManutenÃ§Ã£o Industrial LTDA ME', 'Av. Savio Cota de Almeida Gama, nÂº 2214, sala 311, retiro - Volta Redonda - RJ. CEP 27281-422'),
(9, 'Cimento TUPI S/A', 'Rod. BR 040, s/nÂº, KM655, Bairro Pedra do Sino, CarandaÃ­ - MG. CEP 36280-000'),
(10, 'Ana Clara Moveis', 'Av. SÃ¡vio Cota de Almeida Gama, nÂº 2127, Volta Redonda, retiro, CEP 27281-421'),
(11, 'Giovany Campos Mercearia ME', 'Av. Francisco Torres, nÂº 519/520 - SÃ£o Luiz, Volta Redonda - RJ. CEP 27286-440'),
(12, 'ALTM S/A. Teconologia e ServiÃ§os de ManutenÃ§Ã£o', 'Rua Bergamo - Parte - Triagem, nÂº 320, Rio de Janeiro - RJ'),
(13, 'Zurich Minas Brasil Seguros S/A', 'Av. Getpulio Vargas, 1420, 5 andar, Belo Horizonte, Bairro: Savassi CEP. 30112-021'),
(14, 'Enfil S/A Controle Ambiental', 'Av. Dr. Cardoso de Melo, 4Âº e 5Âº andar, Conjunto 51, 52 e 41, Vila OlÃ­mpia - SÃ£o Paulo - SP. CEP 04548-005'),
(15, 'Arcom S/A ', 'Rodovia Anel Viario Ayrton Senna, nÂº 2001, Distrito Industrial - UberlÃ¢ndia - MG. CEP 38402-329'),
(16, 'AEX Alimenta Comercio de RefeiÃ§Ãµes e ServiÃ§os LTDA', 'Rua Almirante Adalberto de Barros Nunes, nÂº 3928, Retiro - Volta Redonda - RJ. CEP 27301-130'),
(17, 'Transfuturo Transportes LTDA', 'Rodovia Presidente Dutra, 01, KM 273,5 - CEP 27347-000 - Barra Mansa - RJ'),
(18, 'MBS ConstruÃ§Ãµes LTDA A/C Sra. Luciana', 'Rua Madressilvas, nÂº 149, Bairro Ãgua Limpa, Volta Redonda - RJ. CEP. 27265-060'),
(19, 'Municipio de Volta Redonda', 'PraÃ§a SÃ¡vio Gama, nÂº 53, Aterrado, CEP 27291-570, Volta Redonda, RJ.'),
(20, 'Instituto Corpore para o Desenvolvimento da Qualidade de Vida', 'Rua Dr. Roque Vernalha, nÂº 220, Sala 1, Centro - Matinhos - PR. CEP 83260-000'),
(21, 'Top Master Serv Inset Consultoria LocaÃ§Ã£o Equipamentos Industriais LTDA', 'Avenida Roberto Godon, nÂº 171, Taperinha, CEP 09990-090, SÃ£o Paulo, SP.'),
(22, 'Carvalho e Thebaldi DiversÃ£o Infantil LTDA', 'Avenida Rio Branco, nÂº 1645 - Praia do Canto, Vitoria - ES. CEP 29055-643'),
(23, 'CSN', 'Rodovia BR 393 - Lucio Meira, KM 5, 001, s/n, Santa Cecilia, Volta Redonda, RJ, CEP 27260-390'),
(24, 'CAM Ribeiro ConstruÃ§Ãµes e Reformas ME', 'Rua JosuÃ© Fernandes, nÂº 1085, Casa 01, Boa Vista II - Barra Mansa - RJ. CEP 27336-570'),
(25, 'Pedro Arbex', 'Avenida Embaixador Assis Chateaubriand, nÂº 28/30, Aterrado - Volta Redonda - RJ.'),
(26, 'Empresa Brasileira de Engenharia S/A', 'Estrada dos Palmares, nÂº 641, PaciÃªncia - Rio de Janeiro - RJ, 23065-490'),
(27, 'Sky ServiÃ§os de Banda Larga S/A', 'Avenida das NaÃ§Ãµes Unidas, nÂº 12901, Broklin - SÃ£o Paulo - SP. CEP 04578-910'),
(28, 'Banco Bradesco S/A', 'NÃºcleo Cidade de Deus, PrÃ©dio Vermelho - 4Âº Andar, Vila Yara - SP. CEP 6029900'),
(29, 'Companhia Brasileira de DistribuiÃ§Ã£o S/A', 'Rua Vinte e TrÃªs-B, nÂº 32 - Vila Santa Cecilia, Volta Redonda - RJ. CEP 27260-130'),
(30, 'MBS Construtora e Transportes LTDA - ME', 'Rua Zilma Maria Costa de Augusto, nÂº 438, Boa Vista - Barra Mansa - RJ. CEP. 27336-380'),
(31, 'Transvip Transporte de Valores e VigilÃ¢ncia Patrimonial LTDA', 'Rua Drake de Matos, nÂº 28, HigienÃ³polis - RJ. CEP 21051-170'),
(32, 'Hospital Vita Volta Redonda S/A', 'Rua Lions Club, nÂº 160, Vila Santa Cecilia - Volta Redonda - RJ. CEP 27255-430'),
(33, 'Indalecio Alves de Oliveira', 'Rua Dona Alexandrina, nÂº 398, SÃ£o Carlos, Bairro: Centro. CEP 13560-290'),
(34, 'TelefÃ´nica Brasil S.A. (Matriz)', 'Avenida Ayrton Senna, 2200, 1Âº andar - Bloco 2, Rio de Janeiro, Bairro: Barra da Tijuca. CEP 22775-003'),
(35, 'Comau do Brasil Industria e Comercio LTDA', 'Avenida Contorno, nÂº 3455, gp-57, Distrito Industrial Paulo Camilo Sul - Betim, MG - CEP 32669-185'),
(36, 'Realiza Prestadora de ServiÃ§os e ManutenÃ§Ã£o Geral Eireli LTDA', 'Rua Vereador Luiz da Fonseca GuimarÃ£es, nÂº 199, Sala 201, Aterrado, Volta Redonda - RJ. CEP 27291-570'),
(37, 'ASVR LocaÃ§Ã£o de Maquinas e Equipamentos Limpeza LTDA', 'Rua Nelson GonÃ§alves, nÂº 612, Laranjal - Volta Redonda - RJ. CEP 27255-320'),
(38, 'Caio C. de Jesus ME', 'Avenida SÃ£o Lucas, nÂº 245, SÃ£o Lucas - Volta Redonda - RJ. CEP 27264-140'),
(39, 'FundaÃ§Ã£o CSN', 'Rua 33, nÂº 10, Bairro Vila Santa Cecilia - Volta Redonda - RJ. CEP 27260-010'),
(40, 'Light ServiÃ§os de Eletricidade S.A.', 'Avenida Marechal Floriano, nÂº 168, BI A1, 1Âº and, Cor D, Rio de Janeiro, Bairro: Centro, CEP 20080-002'),
(41, 'Royal Comercio e Distribuidora LTDA', 'Avenida Amaral Peixoto, nÂº 348, Centro - Volta Redonda - RJ. CEP 27253-220'),
(42, 'Loop Control ManutenÃ§Ã£o Industrial LTDA ME', 'Rua Sessenta, nÂº 1617, Sessenta - Volta Redonda - RJ. CEP 27261-130'),
(43, 'Banco ItauCard S/A', 'Alameda Pedro Calil, nÂº 43, PoÃ¡ - SP. CEP 08557-105'),
(44, 'Via Result Comercio e AplicaÃ§Ã£o de SanitizaÃ§Ã£o LTDA ME', 'Avenida Almirante Adalberto de Barros Nunes, nÂº 354, Niteroi - Volta Redonda - RJ. CEP 27283-775'),
(45, 'CondomÃ­nio do EdifÃ­cio Varandas do Laranjal ', 'Rua 154, nÂº 2001, Laranjal - Volta Redonda - RJ. CEP 27255-085'),
(46, 'JBL Construtora LTDA', 'Rua Tirol, nÂº 308, Freguesia - Rio de Janeiro - RJ. CEP 22750-008'),
(47, 'Drogarias Pacheco S/A', 'Avenida Paulo de Frontin, nÂº 219, Aterrado - Volta Redonda - RJ. CEP 27215-580'),
(48, 'Centro de FormaÃ§Ã£o de Condutores Exodo LTDA ME', 'Rua Jayme PantaleÃ£o de Moraes, nÂº 53, Aterrado - Volta Redonda - RJ. CEP 27215-561'),
(49, 'Construtora Brito e Cabett LTDA', 'Rua Jose Fulgencio C. Neto, nÂº 181 - Aterrado - Volta Redonda - RJ. CEP 27213-340'),
(50, 'Embratel Empresa Brasileira de TelecomunicaÃ§Ãµes S/A', 'Avenida Presidente Vargas, nÂº 1012, CEP 20071-910 - Rio de Janeiro - RJ.'),
(51, 'Ah F Santos NÃ³brega ComÃ©rcio de Materiais de ConstruÃ§Ã£o', 'Rua L, nÂº 76, Nova Primavera - Volta Redonda - RJ.'),
(52, 'Votorantim Cimentos S/A', 'Fazenda TrÃªs PoÃ§os, s/nÂº, Industrial - Volta Redonda - RJ. CEP 27211-130'),
(53, 'MMC Material de ConstruÃ§Ã£o LTDA', 'Rua das Palmeiras, nÂº 3300, Palmeiras - Pinheiral - RJ. CEP 27197-000'),
(54, 'Ana Lucia Costa Mamede', 'Rua BarÃ£o de MauÃ¡, nÂº 155, Jardim Belmonte - Volta Redonda - RJ. CEP 27211-015'),
(55, 'Bem Te Vi Transporte e Turismo LTDA', 'Rua Arnaldo Selvani, nÂº 60, Bela Vista, CEP. 27197-000 '),
(56, 'CRD Engenharia e Comercio LTDA', 'Rua IguaÃ§u, nÂº 41, Santo AndrÃ© - SP. CEP 09071-190'),
(57, 'ViaÃ§Ã£o Pinheiral LTDA', 'Rua SÃ£o Paulo, nÂº 48, Centro - Pinheiral - RJ. CEP 27297-000'),
(58, 'OSESP Comercial e Administradora LTDA', 'Rua Arapari, nÂº 132, Vila Formosa - SÃ£o Paulo - SP. CEP 03415-020'),
(59, 'Prumo Engenharia LTDA', 'Pto da EstaÃ§Ã£o FerroviÃ¡ria, nÂº 15, Sede, Centro - Formiga - MG. CEP 35570-000'),
(60, 'Eagle Distribuidora de Bebidas S/A', 'Rodovia. Lucio Meira (BR 393), nÂº 13550, Dom Bosco - Volta Redonda - RJ. CEP 27286-740 '),
(61, 'Viva Rio', 'Rua Roberto Silveira, nÂº 491, Sala 12, ChÃ¡cara Saudade - Parati - RJ. CEP 23970-000'),
(62, 'Carvalho & Fortes Comercio de VeÃ­culos LTDA. (Ale VeÃ­culos)', 'Rua Santa Terezinha, nÂº 360, NiterÃ³i - Volta Redonda - RJ. CEP 27284-450'),
(63, 'Personal Service Recursos Humanos e Assessoria Empresarial LTDA', '0'),
(64, 'Eletrobras Termonuclear S.A Eletronuclear', '0'),
(65, 'Ademir Com. de VeÃ­culos e Transportes LTDA', 'Rua Alziro Zarur, nÂº 820, AraÃ§atuba - SP. CEP 16026-000'),
(66, 'Petrobras Distribuidora S/A', 'Avenida IntegraÃ§Ã£o, nÂº 1829, Vila Americana - Volta Redonda - RJ. CEP 27290-600'),
(67, 'Padaria IrmÃ£os Martins LTDA ME', 'Rua Rio Negro, nÂº 270, Ãgua Limpa - Volta Redonda - RJ. CEP 27250-150'),
(68, 'VitÃ³ria EspaÃ§o Gourmet Restaurante LTDA ME', 'Avenida Ministro Salgado Filho, nÂº 425, Aero Clube - Volta Redonda - RJ. CEP 27283-130'),
(69, 'Sankyu S/A', 'Avenida Almirante Adalberto de B. Nunes, nÂº 3804, Retiro - Volta Redonda - RJ. CEP 27274-200'),
(70, 'Green Life ExecuÃ§Ã£o de Projetos Ambientais LTDA', 'Rua SÃ£o JoÃ£o, nÂº 239, Sala 102, Centro - Volta Redonda - RJ. CEP 27253-360'),
(71, 'Geraldo Repoles Teixeira ConstruÃ§Ãµes Eireli', 'Avenida Brasilia, nÂº 151, Vila Brasilia - Volta Redonda - RJ. CEP 27280-000'),
(72, 'Ezentis S/A', 'Avenida Francisco CrisÃ³stomos Torres, nÂº 3774, Bairro SÃ£o Luiz - Volta Redonda - RJ. CEP 27286-440'),
(73, 'Reframec ManutenÃ§Ã£o e Montagens de RefratÃ³rios S/A', 'Rua Fernando Pezzini, nÂº 1137, Bairro Nossa Senhora de FÃ¡tima - Cidade Matozinhos - MG. CEP 35720-000'),
(74, 'Telemar Norte Leste S/A', 'Rua General Polidoro, nÂº 99, Rio de Janeiro, Bairro: Botafogo, CEP 22280-001'),
(75, 'Maria Helena de Souza Melquiades', 'Rua Venezuela, nÂº 366, Oriente - Pinheiral - RJ. CEP 27197-000'),
(76, 'LIG InformaÃ§Ãµes de Credito LTDA', 'Rua Visconde de Inhomerim, nÂº 748, SÃ£o Paulo - SP. CEP 03120-001'),
(77, 'Banco Celetem S/A', 'Alameda Rio Negro, nÂº 161, Alphaville Industrial - Barueri - SP. CEP 06454-000.'),
(78, 'Imec ServiÃ§os Industriais LTDA', 'Rua JoÃ£o BonifÃ¡cio, nÂº 100, Bairro SÃ£o Luiz - Barra Mansa - RJ. CEP 27338-600'),
(79, 'WNT Transportes e LocaÃ§Ã£o Eirelli', 'Rua Cirne Maia, nÂº 143, Cachambi - Rio de Janeiro - RJ. CEP 20771-410'),
(80, 'Empresa Brasileira de Correios e TelÃ©grafos', 'Avenida Paulo de Frontin, nÂº 897, Aterrado - Volta Redonda - RJ. CEP 27215-971'),
(81, 'TelevisÃ£o Cidade S/A', 'Rua Princesa Isabel, nÂº 55, SÃ£o JoÃ£o - Volta Redonda - RJ. CEP 27253-350.'),
(82, 'TelevisÃ£o Bandeirantes LTDA', 'Rua Radiantes, nÂº 92, nÂº 13, Morumbi - SÃ£o Paulo - SP. CEP 05614-130.'),
(83, 'Paiva Supermercado LTDA', 'Rua NapoleÃ£o Laureano, nÂº 25, SÃ£o Lucas - Volta Redonda - RJ. CEP 27262-610'),
(84, 'Siemens Vai Metals Services LTDA', 'Rua Nossa Senhora da ConceiÃ§Ã£o, nÂº 20, Conforto - Volta Redonda - RJ. CEP 27262-012'),
(85, 'CEDAE', 'Avenida Presidente Vargas, nÂº 2655 - 6Â° andar, Cidade Nova - Rio de Janeiro - RJ. CEP 20210-031'),
(86, 'Via Varejo S/A', 'Avenida Amaral Peixoto, nÂº 264, Centro - Volta Redonda - RJ. CEP 27253-220'),
(87, 'Comporte Materiais de ProteÃ§Ã£o e ServiÃ§os LTDA', 'Rua SÃ¡vio Gama, nÂº 1732, Sala 207, Retiro - Volta Redonda - RJ. CEP 27281-422'),
(88, 'Itau Unibanco S/A', 'PraÃ§a Alfredo Egydio de Souza Aranha, nÂº 100, Torre Itausa - SÃ£o Paulo - SP. CEP 04344-902'),
(89, 'AÃ§Ã£o Contact Center LTDA', 'Avenida Afonso Penna, nÂº 578, 22Â° andar - Centro - Belo Horizonte - MG. CEP 30130-001'),
(90, 'Hipercard Banco Multiplo S/A', 'Rua Ernesto de Paula Santos, nÂº 187, Loja 001 Emp. Excelsior, Boa Viagem - Recife - PE. CEP 51021-230'),
(91, 'Engebras Engenharia e Montagens LTDA', 'Rua Lucio Bittencourt, 109/803 - Vila Santa CecÃ­lia - Volta Redonda - RJ. CEP 27260-110.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(16) DEFAULT NULL,
  `passenha` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `passenha`) VALUES
(1, 'admin', 'admin'),
(2, 'advjus', 'anterods'),
(3, 'ads', 'ads2'),
(4, 'adv', '12345678');

-- --------------------------------------------------------

--
-- Estrutura da tabela `processo`
--

CREATE TABLE `processo` (
  `numeroproc` varchar(25) NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `dataaud` varchar(10) DEFAULT NULL,
  `horaaud` varchar(5) DEFAULT NULL,
  `horastrab` int(11) DEFAULT NULL,
  `horalmoco` int(11) DEFAULT NULL,
  `dataadm` varchar(10) DEFAULT NULL,
  `datadm` varchar(10) DEFAULT NULL,
  `pedidosproc` varchar(250) DEFAULT NULL,
  `numeropasta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `processo`
--

INSERT INTO `processo` (`numeroproc`, `cliente`, `empresa`, `dataaud`, `horaaud`, `horastrab`, `horalmoco`, `dataadm`, `datadm`, `pedidosproc`, `numeropasta`) VALUES
('0000244-08.2019.8.19.0082', 1, 65, '2019-02-28', '16:35', 0, 0, '', '', '', 11384),
('0000245-90.2019.8.19.0082', 101, 86, '2019-02-28', '16:40', 0, 0, '', '', '', 11327),
('0000714-73.2018.8.19', 88, 76, '2018-07-19', '14:35', 0, 0, '', '', '', 11260),
('0000958-95.2011.5.01.0341', 1, 1, '2011-12-01', '09:00', 0, 0, '', '', '', 8994),
('0001164-16.2018.8.19.0082', 59, 28, '2018-07-19', '14:40', 0, 0, '', '', '', 11293),
('0001251-60.2014.5.01.0341', 3, 12, '2015-01-20', '09:30', 0, 0, '2001-12-03', '', 'FÃ©rias somente uma, RecisÃ£o contratual, Danos Morais.', 10128),
('0001289-81.2018.8.19.0082', 53, 50, '2018-08-15', '10:10', 0, 0, '', '', '', 11303),
('0002166-21.2018.8.19.0082', 11, 13, '2018-11-22', '16:55', 0, 0, '', '', '', 11361),
('0006286-58.2018.8.19.0066', 104, 89, '2018-04-19', '14:00', 0, 0, '', '', '', 11244),
('0007527-67.2018.8.19.0066', 103, 88, '2018-04-20', '10:00', 0, 0, '', '', '', 11246),
('0008267-25.2018.8.19.0066', 95, 34, '2018-07-31', '10:30', 0, 0, '', '', '', 11252),
('0009147-97.2018.8.19.0007', 84, 40, '2018-06-18', '16:20', 0, 0, '', '', '', 11265),
('0009435-62.2018.8.19.0066', 90, 77, '2018-05-15', '16:00', 0, 0, '', '', '', 11257),
('0010412-37.2018.8.19.0007', 67, 40, '2018-07-09', '16:40', 0, 0, '', '', '', 11284),
('0011127-96.2018.8.19.0066', 1, 65, '2018-07-03', '10:40', 0, 0, '', '', '', 11266),
('0012505-87.2018.8.19.0066', 68, 62, '2019-09-04', '11:50', 0, 0, '', '', '', 11283),
('0020516-08.2018.8.19.0066', 45, 43, '2018-08-20', '10:40', 0, 0, '', '', '', 11312),
('0021868-98.2018.8.19.0066', 40, 40, '2018-09-10', '13:30', 0, 0, '', '', '', 11318),
('0024084-32.2018.8.19.0066', 32, 33, '2019-03-12', '13:10', 0, 0, '', '', '', 11329),
('0024086-02.2018.8.19.0066', 33, 34, '2018-09-25', '13:15', 0, 0, '', '', '', 11328),
('0025774-96.2018.8.19.0066', 27, 28, '2018-10-22', '16:00', 0, 0, '', '', '', 11339),
('0026030-39.2018.8.19.0066', 26, 27, '2018-11-22', '16:00', 0, 0, '', '', '', 11340),
('0030050-73.2018.8.19.0066', 9, 10, '2018-11-26', '15:45', 0, 0, '', '', '', 11365),
('0066200-03.2008.5.01.0342', 2, 2, '2008-08-09', '10:00', 0, 0, '', '', '', 8116),
('0100038-45.2019.5.01.0343', 76, 70, '2019-06-12', '09:01', 0, 0, '', '', '', 11274),
('0100060-12.2019.5.01.0341', 70, 65, '2019-03-27', '09:50', 0, 0, '', '', '', 11378),
('0100073-25.2019.5.01.0401', 69, 63, '2019-05-21', '12:40', 0, 0, '', '', '', 11379),
('0100088-71.2019.5.01.0343', 100, 84, '', '', 8, 1, '', '', '', 11338),
('0100089-56.2019.5.01.0343', 99, 84, '', '', 8, 1, '', '', '', 11343),
('0100095-66.2019.5.01.0342', 97, 84, '2019-04-01', '08:55', 8, 1, '2008-06-09', '2017-06-08', '', 11385),
('0100183-44.2018.5.01.0341', 105, 91, '2018-05-09', '09:10', 0, 0, '', '', '', 11241),
('0100198-10.2018.5.01.0342', 106, 35, '2018-05-03', '09:25', 0, 0, '', '', '', 11240),
('0100231-03.2018.5.01.0341', 94, 83, '2018-05-23', '09:00', 0, 0, '', '', '', 11253),
('0100232-85.2018.5.01.0341', 92, 79, '2018-05-23', '09:10', 0, 0, '', '', '', 11251),
('0100239-71.2018.5.01.0343', 102, 87, '2018-06-19', '10:30', 6, 0, '2017-02-14', '2017-03-20', '', 11249),
('0100245-78.2018.5.01.0343', 93, 81, '2018-06-19', '09:40', 0, 0, '', '', '', 11254),
('0100260-50.2018.5.01.0342', 91, 78, '2018-05-15', '10:00', 0, 0, '', '', '', 11256),
('0100278-68.2018.5.01.0343', 89, 35, '', '', 0, 0, '', '', '', 11259),
('0100292-52.2018.5.01.0343', 48, 29, '2018-04-26', '10:30', 8, 1, '2015-12-17', '2016-12-17', '', 11262),
('0100294-28.2018.5.01.0341', 86, 75, '2018-06-18', '09:50', 8, 0, '2015-01-23', '2018-03-06', '', 11263),
('0100317-65.2018.5.01.0343', 82, 73, '2018-07-04', '10:31', 0, 0, '', '', '', 11267),
('0100320-26.2018.5.01.0341', 80, 72, '2018-06-25', '10:10', 0, 0, '', '', '', 11269),
('0100324-57.2018.5.01.0343', 81, 24, '2018-09-12', '10:50', 0, 0, '', '', '', 11268),
('0100333-25.2018.5.01.0341', 79, 71, '2018-06-28', '09:30', 0, 0, '', '', '', 11270),
('0100342-78.2018.5.01.0343', 78, 71, '2018-07-05', '09:40', 8, 1, '2017-06-15', '2018-02-08', '', 11271),
('0100345-36.2018.5.01.0342', 77, 70, '2018-06-20', '09:10', 0, 0, '', '', '', 11272),
('0100368-76.2018.5.01.0343', 73, 67, '2018-09-12', '09:00', 0, 0, '', '', '', 11278),
('0100374-89.2018.5.01.0341', 72, 29, '', '', 0, 0, '', '', 'julgamento dia 03/09/2018 as 16 horas', 11279),
('0100375-74.2018.5.01.0341', 72, 29, '2018-12-12', '10:10', 0, 0, '', '', '', 11280),
('0100377-38.2018.5.01.0343', 75, 69, '2018-07-19', '10:20', 0, 0, '', '', '', 11275),
('0100383-48.2018.5.01.0342', 74, 68, '2018-06-19', '09:40', 8, 1, '', '', '', 11276),
('0100395-62.2018.5.01.0342', 71, 35, '2018-06-26', '09:20', 0, 0, '', '', '', 11282),
('0100406-94.2018.5.01.0341', 96, 29, '2018-08-08', '10:10', 0, 0, '', '', '', 11251),
('0100409-46.2018.5.01.0342', 65, 29, '2019-03-13', '09:30', 0, 0, '', '', '', 11287),
('0100415-50.2018.5.01.0343', 62, 58, '2018-08-01', '09:30', 8, 1, '2013-01-11', '', 'Horas Extras, FÃ©rias, Adicional de Periculosidade.', 11290),
('0100418-08.2018.5.01.0342', 63, 59, '2018-07-04', '09:20', 0, 0, '', '', '', 11289),
('0100426-79.2018.5.01.0343', 64, 60, '2018-08-07', '09:10', 8, 0, '2014-04-14', '', '', 11288),
('0100431-10.2018.5.01.0341', 1, 65, '2018-08-02', '09:20', 0, 0, '', '', '', 11264),
('0100433-77.2018.5.01.0341', 58, 55, '2018-08-02', '09:40', 0, 0, '', '', '', 11294),
('0100440-66.2018.5.01.0342', 61, 57, '2018-07-18', '09:25', 0, 0, '', '', '', 11291),
('0100449-28.2018.5.01.0342', 60, 56, '2018-06-21', '09:10', 0, 0, '', '', '', 11292),
('0100465-79.2018.5.01.0342', 57, 54, '2018-10-04', '09:15', 8, 0, '2016-10-24', '2017-08-05', '', 11295),
('0100472-68.2018.5.01.0343', 56, 29, '2018-08-01', '10:20', 0, 0, '', '', '', 11298),
('0100473-59.2018.5.01.0341', 54, 51, '2018-08-16', '09:00', 0, 0, '', '', '', 11301),
('0100477-93.2018.5.01.0342', 55, 53, '2018-08-15', '09:05', 10, 1, '', '', '', 11300),
('0100487-43.2018.5.01.0341', 52, 21, '2018-08-21', '09:40', 0, 0, '', '', '', 11304),
('0100489-13.2018.5.01.0341', 51, 49, '2018-08-22', '09:00', 0, 0, '', '', '', 11305),
('0100507-31.2018.5.01.0342', 50, 21, '2018-08-28', '09:20', 0, 0, '', '', '', 11306),
('0100514-23.2018.5.01.0342', 49, 48, '2018-08-28', '09:45', 10, 1, '', '', '', 11307),
('0100523-82.2018.5.01.0342', 48, 47, '2018-09-04', '08:55', 7, 1, '', '', '', 11308),
('0100531-62.2018.5.01.0341', 46, 44, '2018-09-11', '14:00', 0, 0, '', '', '', 11311),
('0100532-78.2017.5.01.0342', 4, 4, '2017-08-09', '09:10', 0, 0, '', '', '', 10791),
('0100534-11.2018.5.01.0343', 47, 46, '2018-10-05', '09:10', 0, 0, '', '', '', 11309),
('0100547-13.2018.5.01.0342', 43, 42, '2018-09-11', '09:00', 8, 1, '', '', '', 11315),
('0100550-62.2018.5.01.0343', 44, 21, '2018-09-19', '09:30', 0, 0, '', '', '', 11314),
('0100554-02.2018.5.01.0343', 42, 41, '2018-09-19', '10:10', 7, 1, '2014-04-02', '', '', 11316),
('0100555-84.2018.5.01.0343', 66, 61, '2018-10-16', '09:58', 0, 0, '', '', '', 11285),
('0100571-38.2018.5.01.0343', 41, 35, '2018-10-01', '09:40', 0, 0, '', '', '', 11317),
('0100605-13.2018.5.01.0343', 36, 23, '2018-10-16', '10:40', 6, 0, '', '', '', 11321),
('0100617-27.2018.5.01.0343', 38, 38, '2018-10-18', '10:00', 8, 1, '2017-05-10', '2017-07-28', '', 11322),
('0100619-94.2018.5.01.0343', 37, 37, '2019-10-18', '10:20', 0, 0, '', '', '', 11323),
('0100637-18.2018.0.34.3', 35, 36, '2019-02-07', '09:00', 0, 0, '2014-03-20', '2017-10-07', '', 11325),
('0100675-30.2018.5.01.0343', 31, 32, '2019-02-20', '13:30', 0, 0, '', '', '', 11330),
('0100686-59.2018.5.01.0343', 30, 31, '2018-11-14', '10:10', 0, 0, '2009-11-03', '2016-10-03', '', 11331),
('0100691-84.2018.5.01.0342', 29, 30, '2019-01-23', '09:35', 0, 0, '', '', '', 11334),
('0100696-09.2018.5.01.0342', 28, 29, '2018-11-08', '09:00', 0, 0, '', '', '', 11336),
('0100716-94.2018.5.01.0343', 38, 38, '2018-12-04', '10:50', 8, 1, '2017-05-10', '2017-07-28', '', 11322),
('0100736-91.2018.5.01.0341', 20, 21, '2018-11-27', '09:00', 0, 0, '', '', '', 11347),
('0100737', 19, 21, '2018-11-27', '09:10', 0, 0, '', '', '', 11348),
('0100737-73.2018.5.01.0342', 24, 25, '2018-11-22', '09:40', 0, 0, '', '', '', 11342),
('0100738-61.2018.5.01.0341', 23, 24, '2018-11-27', '09:20', 0, 0, '', '', '', 11344),
('0100747-20.2018.5.01.0342', 21, 22, '2019-02-12', '09:55', 0, 0, '', '', '', 11346),
('0100764-53.2018.5.01.0343', 22, 23, '2019-01-23', '09:00', 0, 0, '', '', '', 11345),
('0100790-54.2018.5.01.0342', 17, 19, '2019-01-23', '09:15', 0, 0, '', '', '', 11351),
('0100852-97.2018.5.01.0341', 12, 14, '2019-04-01', '09:10', 0, 0, '', '', '', 11360),
('0100853-82.2018.5.01.0341', 13, 15, '2019-01-21', '09:10', 0, 0, '', '', '', 11359),
('0100858-07.2018.5.01.0341', 16, 18, '2019-01-21', '10:40', 0, 0, '2016-06-10', '2016-11-07', '', 11356),
('0100866-79.2018.5.01.0342', 1, 1, '2019-01-21', '09:50', 0, 0, '2018-06-23', '2018-10-03', '', 11363),
('0100874-52.2018.5.01.0343', 14, 16, '2019-01-31', '10:20', 0, 0, '', '', '', 11358),
('0100887-85.2018.5.01.0461', 25, 26, '2018-10-25', '09:56', 0, 0, '', '', '', 11341),
('0100904-87.2018.5.01.0343', 8, 8, '2019-02-06', '10:30', 0, 1, '', '', '', 11368),
('0100947-24.2018.5.01.0343', 34, 35, '2019-02-26', '09:40', 0, 0, '', '', '', 11326),
('0100947-27.2018.5.01.0342', 6, 6, '2019-02-05', '08:55', 0, 0, '2017-03-22', '', '', 11372),
('0100958-56.2018.5.01.0342', 5, 5, '2019-02-11', '09:15', 0, 1, '2017-10-02', '2018-11-02', '', 11371),
('0100986-27.2018.5.01.0341', 18, 20, '', '', 0, 0, '', '', '', 11350),
('0101118-36.2018.5.01.0551', 15, 17, '2019-02-07', '09:10', 0, 0, '', '', '', 11357),
('0101860-63.2018.5.01.0421', 7, 7, '2019-02-13', '09:20', 0, 0, '2017-01-20', '2017-03-20', '', 11369);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `andamento`
--
ALTER TABLE `andamento`
  ADD PRIMARY KEY (`numeroand`,`numeroproc`),
  ADD KEY `numeroproc` (`numeroproc`),
  ADD KEY `cliente` (`cliente`),
  ADD KEY `empresa` (`empresa`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcli`);

--
-- Indexes for table `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`,`numeroproc`),
  ADD KEY `numeroproc` (`numeroproc`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idemp`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processo`
--
ALTER TABLE `processo`
  ADD PRIMARY KEY (`numeroproc`),
  ADD KEY `cliente` (`cliente`),
  ADD KEY `empresa` (`empresa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `andamento`
--
ALTER TABLE `andamento`
  ADD CONSTRAINT `andamento_ibfk_3` FOREIGN KEY (`numeroproc`) REFERENCES `processo` (`numeroproc`),
  ADD CONSTRAINT `andamento_ibfk_4` FOREIGN KEY (`cliente`) REFERENCES `processo` (`cliente`),
  ADD CONSTRAINT `andamento_ibfk_5` FOREIGN KEY (`empresa`) REFERENCES `processo` (`empresa`);

--
-- Limitadores para a tabela `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`numeroproc`) REFERENCES `processo` (`numeroproc`);

--
-- Limitadores para a tabela `processo`
--
ALTER TABLE `processo`
  ADD CONSTRAINT `processo_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`idcli`),
  ADD CONSTRAINT `processo_ibfk_2` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`idemp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
