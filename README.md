#  🛒 Projeto E-commerce – Modelagem e Consultas SQL

##  📌 Descrição do Projeto
Este projeto tem como objetivo replicar a **modelagem do projeto lógico de banco de dados** para um cenário de e-commerce, aplicando conceitos de **chaves primárias, chaves estrangeiras, constraints e relacionamentos** presentes em modelos EER. A modelagem foi refinada para atender aos requisitos do cenário, conforme apresentado durante o desafio.

O projeto inclui:
-  📝 Criação do **Script SQL** para a construção do esquema do banco de dados.
-  💾 Persistência de dados para **testes**.
-  🔍 Desenvolvimento de **queries SQL complexas**, explorando diferentes cláusulas e funções de SQL.

---

##  🗂 Contexto do Esquema Lógico

O esquema do banco de dados foi estruturado considerando os seguintes pontos:

### Entidades Principais
- **Cliente**: Pode ser Pessoa Física (PF) ou Pessoa Jurídica (PJ).
- **Produto**: Informações sobre produtos disponíveis no estoque e fornecedores.
- **Pedido**: Contém os pedidos realizados pelos clientes.
- **Pagamento**: Um cliente pode ter múltiplas formas de pagamento.
- **Entrega**: Possui **status** e **código de rastreio**.
- **Fornecedor**: Relacionamento com produtos fornecidos.

### Relacionamentos e Restrições
- Um cliente pode realizar **vários pedidos**.
- Cada pedido pode conter **múltiplos produtos** (relacionamento N:N com itens de pedido).
- Cada produto pode ser fornecido por **mais de um fornecedor**.
- As constraints garantem integridade referencial, evitando inconsistências de dados.

---

## 🗄 Estrutura do Banco de Dados

O banco de dados foi criado no MySQL/PostgreSQL com as seguintes tabelas principais:
- `clientes`
- `produtos`
- `pedidos`
- `itens_pedido`
- `pagamentos`
- `entregas`
- `fornecedores`

Cada tabela possui **chave primária** (`PRIMARY KEY`) e **chaves estrangeiras** (`FOREIGN KEY`) para manter a integridade referencial.

---
### 🚀Como Executar
1. Clone o repositório:
git clone https://github.com/seu-usuario/projeto-ecommerce.git

2. Acesse a pasta do projeto:
cd projeto-ecommerce

3. Execute o script SQL para criar o banco de dados e tabelas:
source script_ecommerce.sql;

4. Execute as queries de teste no seu SGBD.

## 🎯 Objetivo do Projeto

O projeto permite praticar e demonstrar habilidades em:

- 📐 **Modelagem conceitual e lógica de banco de dados**
- 📝 **Criação de scripts SQL robustos**
- 📊 **Desenvolvimento de queries complexas para análise de dados**
- 🔒 **Aplicação de boas práticas de integridade e normalização**
