const express = require('express');
const path = require('path');

const app = express();
const PORT = 8080;

// Servir arquivos estáticos
app.use(express.static('.'));

// Rota para a página inicial (redirecionar para login)
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'loginPage.html'));
});

app.listen(PORT, () => {
  console.log(`🌐 Servidor frontend rodando em http://localhost:${PORT}`);
  console.log(`📱 Acesse: http://localhost:${PORT}/loginPage.html`);
});
