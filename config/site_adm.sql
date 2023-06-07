-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/06/2023 às 18:45
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `site_adm`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_agenda_adv`
--

CREATE TABLE `site_agenda_adv` (
  `id` int(11) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` int(20) NOT NULL,
  `data` date NOT NULL,
  `descricao` text NOT NULL,
  `usuario_id_on` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_banners`
--

CREATE TABLE `site_banners` (
  `id` int(11) NOT NULL,
  `arquivo` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `tamanho` varchar(255) NOT NULL,
  `caminho` varchar(255) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_blog`
--

CREATE TABLE `site_blog` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `conteudo` longtext NOT NULL,
  `slug` text NOT NULL,
  `site_blog_categoria_id` int(11) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_blog_categoria`
--

CREATE TABLE `site_blog_categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_blog_msg`
--

CREATE TABLE `site_blog_msg` (
  `id` int(11) NOT NULL,
  `author` varchar(220) NOT NULL,
  `email` varchar(220) DEFAULT NULL,
  `assunto` varchar(220) DEFAULT NULL,
  `msg` text NOT NULL,
  `usuario_id_on` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_blog_pg`
--

CREATE TABLE `site_blog_pg` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `subtitulo` int(220) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_blog_views`
--

CREATE TABLE `site_blog_views` (
  `id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `site_blog_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_empresa_emails`
--

CREATE TABLE `site_empresa_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(220) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_empresa_endereco`
--

CREATE TABLE `site_empresa_endereco` (
  `id` int(11) NOT NULL,
  `logradouro` varchar(255) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_empresa_pag`
--

CREATE TABLE `site_empresa_pag` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `subtitulo` varchar(220) DEFAULT NULL,
  `path_img` varchar(220) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `tamanho` varchar(50) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_empresa_tel`
--

CREATE TABLE `site_empresa_tel` (
  `id` int(11) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_equipe`
--

CREATE TABLE `site_equipe` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `descricao` text DEFAULT NULL,
  `path_img` varchar(220) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `tamanho` varchar(50) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_equipe_pg`
--

CREATE TABLE `site_equipe_pg` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `subtitulo` varchar(220) DEFAULT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_equipe_redes_sociais`
--

CREATE TABLE `site_equipe_redes_sociais` (
  `id` int(11) NOT NULL,
  `link` varchar(220) NOT NULL,
  `icone` varchar(50) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_faq`
--

CREATE TABLE `site_faq` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(220) NOT NULL,
  `resposta` text NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_faq_pag`
--

CREATE TABLE `site_faq_pag` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `subtitulo` varchar(220) DEFAULT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_logos`
--

CREATE TABLE `site_logos` (
  `id` int(11) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `tamanho` varchar(50) NOT NULL,
  `caminho` varchar(220) NOT NULL,
  `exibicao` varchar(50) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_mensagens`
--

CREATE TABLE `site_mensagens` (
  `id` int(11) NOT NULL,
  `site_servico_id` int(11) NOT NULL,
  `nome_completo` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `descricao` text NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_mensagens_pag`
--

CREATE TABLE `site_mensagens_pag` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `subtitulo` varchar(220) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_parceiros`
--

CREATE TABLE `site_parceiros` (
  `id` int(11) NOT NULL,
  `nome_parceiro` varchar(100) NOT NULL,
  `path_img` varchar(220) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `tamanho` varchar(100) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_planos`
--

CREATE TABLE `site_planos` (
  `id` int(11) NOT NULL,
  `plano` varchar(100) NOT NULL,
  `valor` double DEFAULT NULL,
  `tipo_pagamento` varchar(20) DEFAULT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_planos_itens`
--

CREATE TABLE `site_planos_itens` (
  `id` int(11) NOT NULL,
  `site_plano_id` int(11) NOT NULL,
  `item` varchar(220) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_redes_sociais`
--

CREATE TABLE `site_redes_sociais` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icone` varchar(50) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_servicos`
--

CREATE TABLE `site_servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `subtitulo` varchar(220) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `icone` varchar(20) NOT NULL,
  `path_img` varchar(220) DEFAULT NULL,
  `slug` varchar(220) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_servicos_destaque`
--

CREATE TABLE `site_servicos_destaque` (
  `id` int(11) NOT NULL,
  `icone` varchar(50) DEFAULT NULL,
  `titulo` varchar(220) NOT NULL,
  `descricao` text NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_servicos_pag`
--

CREATE TABLE `site_servicos_pag` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `subtitulo` varchar(220) NOT NULL,
  `titulo_destaque` varchar(220) DEFAULT NULL,
  `subtitulo_destaque` varchar(220) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `path_img` varchar(220) DEFAULT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_sobre`
--

CREATE TABLE `site_sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `subtitulo` varchar(220) DEFAULT NULL,
  `msg` text NOT NULL,
  `path_img` varchar(220) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `autor_desc` varchar(100) DEFAULT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_videos`
--

CREATE TABLE `site_videos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `caminho` varchar(255) NOT NULL,
  `usuario_id_on` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `usuario_id_at` int(11) DEFAULT NULL,
  `modifield_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `site_agenda_adv`
--
ALTER TABLE `site_agenda_adv`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_banners`
--
ALTER TABLE `site_banners`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_blog`
--
ALTER TABLE `site_blog`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_blog_categoria`
--
ALTER TABLE `site_blog_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_blog_msg`
--
ALTER TABLE `site_blog_msg`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_blog_pg`
--
ALTER TABLE `site_blog_pg`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_blog_views`
--
ALTER TABLE `site_blog_views`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_empresa_emails`
--
ALTER TABLE `site_empresa_emails`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_empresa_endereco`
--
ALTER TABLE `site_empresa_endereco`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_empresa_pag`
--
ALTER TABLE `site_empresa_pag`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_empresa_tel`
--
ALTER TABLE `site_empresa_tel`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_equipe`
--
ALTER TABLE `site_equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_faq`
--
ALTER TABLE `site_faq`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_logos`
--
ALTER TABLE `site_logos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_mensagens`
--
ALTER TABLE `site_mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_mensagens_pag`
--
ALTER TABLE `site_mensagens_pag`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_parceiros`
--
ALTER TABLE `site_parceiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_planos`
--
ALTER TABLE `site_planos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_planos_itens`
--
ALTER TABLE `site_planos_itens`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_redes_sociais`
--
ALTER TABLE `site_redes_sociais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_servicos`
--
ALTER TABLE `site_servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_servicos_destaque`
--
ALTER TABLE `site_servicos_destaque`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_servicos_pag`
--
ALTER TABLE `site_servicos_pag`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_sobre`
--
ALTER TABLE `site_sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `site_videos`
--
ALTER TABLE `site_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `site_agenda_adv`
--
ALTER TABLE `site_agenda_adv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_banners`
--
ALTER TABLE `site_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_blog`
--
ALTER TABLE `site_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_blog_categoria`
--
ALTER TABLE `site_blog_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_blog_msg`
--
ALTER TABLE `site_blog_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_blog_pg`
--
ALTER TABLE `site_blog_pg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_blog_views`
--
ALTER TABLE `site_blog_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_empresa_emails`
--
ALTER TABLE `site_empresa_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_empresa_endereco`
--
ALTER TABLE `site_empresa_endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_empresa_pag`
--
ALTER TABLE `site_empresa_pag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_empresa_tel`
--
ALTER TABLE `site_empresa_tel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_equipe`
--
ALTER TABLE `site_equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_faq`
--
ALTER TABLE `site_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_logos`
--
ALTER TABLE `site_logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_mensagens`
--
ALTER TABLE `site_mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_mensagens_pag`
--
ALTER TABLE `site_mensagens_pag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_parceiros`
--
ALTER TABLE `site_parceiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_planos`
--
ALTER TABLE `site_planos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_planos_itens`
--
ALTER TABLE `site_planos_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_redes_sociais`
--
ALTER TABLE `site_redes_sociais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_servicos`
--
ALTER TABLE `site_servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_servicos_destaque`
--
ALTER TABLE `site_servicos_destaque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_servicos_pag`
--
ALTER TABLE `site_servicos_pag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_sobre`
--
ALTER TABLE `site_sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `site_videos`
--
ALTER TABLE `site_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
