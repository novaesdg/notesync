# 🚀 Guia de Deploy - NoteSync

Este guia explica como fazer o deploy do NoteSync com backend no Render e frontend no Firebase.

## 📋 Pré-requisitos

- Conta no [Render](https://render.com)
- Conta no [Firebase](https://firebase.google.com)
- Conta no [Neon Database](https://neon.tech) (ou outro PostgreSQL)
- Node.js instalado localmente
- Firebase CLI instalado

## 🔧 1. Deploy do Backend (Render)

### 1.1 Preparar o Backend

1. **Criar repositório no GitHub** com o código do backend
2. **Configurar variáveis de ambiente** no Render:
   - `DATABASE_URL`: URL do seu banco PostgreSQL
   - `JWT_SECRET`: Chave secreta para JWT (ex: `sua_chave_super_secreta_123`)
   - `FRONTEND_URL`: URL do seu frontend no Firebase
   - `NODE_ENV`: `production`

### 1.2 Deploy no Render

1. Acesse [Render Dashboard](https://dashboard.render.com)
2. Clique em **"New +"** → **"Web Service"**
3. Conecte seu repositório GitHub
4. Configure:
   - **Name**: `notesync-backend`
   - **Environment**: `Node`
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
   - **Root Directory**: `backend`

5. Adicione as variáveis de ambiente
6. Clique em **"Create Web Service"**

### 1.3 Obter URL do Backend

Após o deploy, você receberá uma URL como:
```
https://notesync-backend-xyz.onrender.com
```

## 🔥 2. Deploy do Frontend (Firebase)

### 2.1 Configurar Firebase

1. **Instalar Firebase CLI**:
   ```bash
   npm install -g firebase-tools
   ```

2. **Fazer login**:
   ```bash
   firebase login
   ```

3. **Inicializar projeto**:
   ```bash
   firebase init hosting
   ```

4. **Configurar**:
   - Selecione seu projeto Firebase
   - Public directory: `.` (ponto)
   - Single-page app: `Yes`
   - Overwrite index.html: `No`

### 2.2 Atualizar Configuração

1. **Editar `js/config.js`**:
   ```javascript
   // Substitua pela URL do seu backend no Render
   return 'https://seu-backend.onrender.com';
   ```

2. **Editar `.firebaserc`**:
   ```json
   {
     "projects": {
       "default": "seu-projeto-id"
     }
   }
   ```

### 2.3 Deploy

```bash
firebase deploy
```

## 🔄 3. Configuração Final

### 3.1 Atualizar CORS no Backend

No Render Dashboard, adicione a variável:
```
FRONTEND_URL=https://seu-projeto.firebaseapp.com
```

### 3.2 Testar a Aplicação

1. Acesse sua URL do Firebase
2. Teste registro e login
3. Teste criação de tarefas
4. Verifique se tudo funciona

## 📝 4. URLs de Exemplo

### Backend (Render)
```
https://notesync-backend-abc123.onrender.com
```

### Frontend (Firebase)
```
https://notesync-app.firebaseapp.com
```

## 🛠️ 5. Comandos Úteis

### Desenvolvimento Local
```bash
# Backend
cd backend
npm install
npm run dev

# Frontend
firebase serve
```

### Deploy
```bash
# Backend (automático via Render)
git push origin main

# Frontend
firebase deploy
```

## 🔍 6. Troubleshooting

### Problemas Comuns

1. **CORS Error**:
   - Verifique se `FRONTEND_URL` está correto no Render
   - Confirme se a URL do Firebase está na lista de origens permitidas

2. **Database Connection**:
   - Verifique se `DATABASE_URL` está correto
   - Confirme se o banco está acessível

3. **Build Errors**:
   - Verifique se todas as dependências estão no `package.json`
   - Confirme se o Node.js version está correto

### Logs

- **Render**: Dashboard → Seu serviço → Logs
- **Firebase**: Console → Hosting → Logs

## 📚 7. Recursos Adicionais

- [Render Documentation](https://render.com/docs)
- [Firebase Hosting](https://firebase.google.com/docs/hosting)
- [Neon Database](https://neon.tech/docs)

---

**🎉 Parabéns! Seu NoteSync está online!**
