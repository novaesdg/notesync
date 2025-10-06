# NoteSync - Sistema de Gerenciamento de Tarefas

Sistema completo de gerenciamento de tarefas com autenticação de usuários, desenvolvido com Node.js, Express, Sequelize e PostgreSQL.

## 🚀 Funcionalidades

- **Autenticação de Usuários**: Registro e login com JWT
- **Gerenciamento de Tarefas**: Criar, editar, excluir e marcar tarefas como concluídas
- **Interface Responsiva**: Design moderno e intuitivo
- **Banco de Dados**: PostgreSQL com Neon Database
- **API RESTful**: Backend completo com autenticação

## 📋 Pré-requisitos

- Node.js (versão 14 ou superior)
- npm ou yarn
- Conta no Neon Database (ou PostgreSQL local)

## 🛠️ Instalação e Configuração

### 1. Clone o repositório
```bash
git clone <url-do-repositorio>
cd notesync
```

### 2. Configure o banco de dados
1. Crie uma conta no [Neon Database](https://neon.tech)
2. Crie um novo projeto
3. Copie a string de conexão

### 3. Configure as variáveis de ambiente
Crie um arquivo `.env` na pasta `backend/` com:
```env
DATABASE_URL=sua_string_de_conexao_do_neon
JWT_SECRET=seu_jwt_secret_aqui
PORT=3000
```

### 4. Instale as dependências

**Backend:**
```bash
cd backend
npm install
```

**Frontend:**
```bash
cd ..
npm install
```

## 🚀 Como Executar

### 1. Inicie o Backend
```bash
cd backend
npm start
```
O servidor backend estará rodando em `http://localhost:3000`

### 2. Inicie o Frontend
```bash
cd ..
node server-frontend.js
```
O servidor frontend estará rodando em `http://localhost:8080`

### 3. Acesse a aplicação
Abra seu navegador e acesse: `http://localhost:8080`

## 📱 Como Usar

### Registro de Usuário
1. Acesse `http://localhost:8080/registerPage.html`
2. Preencha os dados: nome, email e senha
3. Clique em "Register"
4. Você será redirecionado para a página de tarefas

### Login
1. Acesse `http://localhost:8080/loginPage.html`
2. Digite seu email e senha
3. Clique em "Login"
4. Você será redirecionado para a página de tarefas

### Gerenciar Tarefas
- **Criar Tarefa**: Clique no botão "➕ Criar" na navegação
- **Editar Tarefa**: Clique no ícone de lápis (✏️) na tarefa
- **Marcar como Concluída**: Clique no ícone de check (✅) na tarefa
- **Marcar como A Fazer**: Clique no ícone de caixa (📦) na tarefa concluída
- **Excluir Tarefa**: Clique no ícone de lixeira (🗑️) na tarefa

## 🏗️ Estrutura do Projeto

```
notesync/
├── backend/                 # Servidor Node.js
│   ├── config/             # Configurações do banco
│   ├── controllers/        # Controladores da API
│   ├── models/            # Modelos do Sequelize
│   ├── routes/            # Rotas da API
│   ├── middlewares/       # Middlewares
│   └── server.js          # Servidor principal
├── js/                    # Scripts JavaScript do frontend
│   ├── auth.js           # Autenticação
│   └── tasks.js          # Gerenciamento de tarefas
├── styles/               # Arquivos CSS
├── assets/               # Imagens e ícones
├── *.html               # Páginas HTML
└── server-frontend.js   # Servidor para frontend
```

## 🔧 API Endpoints

### Autenticação
- `POST /api/auth/register` - Registrar usuário
- `POST /api/auth/login` - Fazer login

### Tarefas
- `GET /api/tasks` - Listar tarefas do usuário
- `POST /api/tasks` - Criar nova tarefa
- `PUT /api/tasks/:id` - Atualizar tarefa
- `DELETE /api/tasks/:id` - Excluir tarefa

## 🛡️ Segurança

- Senhas são hashadas com bcrypt
- Autenticação JWT com expiração
- Validação de dados no frontend e backend
- CORS configurado para segurança

## 🐛 Solução de Problemas

### Erro "Failed to fetch"
- Certifique-se de que o backend está rodando na porta 3000
- Verifique se o CORS está configurado corretamente
- Use o servidor frontend em vez de abrir os arquivos HTML diretamente

### Erro de conexão com banco
- Verifique se a string de conexão no `.env` está correta
- Certifique-se de que o banco Neon está ativo

### Problemas de autenticação
- Verifique se o JWT_SECRET está definido no `.env`
- Limpe o localStorage do navegador se necessário

## 📝 Tecnologias Utilizadas

- **Backend**: Node.js, Express, Sequelize, PostgreSQL
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Banco de Dados**: Neon Database (PostgreSQL)
- **Autenticação**: JWT (JSON Web Tokens)
- **Segurança**: bcrypt para hash de senhas

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença ISC. Veja o arquivo `LICENSE` para mais detalhes.
