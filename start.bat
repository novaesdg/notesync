@echo off
echo Iniciando NoteSync...
echo.

echo Iniciando Backend...
start "Backend" cmd /k "cd backend && npm start"

echo Aguardando 3 segundos...
timeout /t 3 /nobreak > nul

echo Iniciando Frontend...
start "Frontend" cmd /k "node server-frontend.js"

echo.
echo ✅ NoteSync iniciado com sucesso!
echo 🌐 Frontend: http://localhost:8080
echo 🔧 Backend: http://localhost:3000
echo.
echo Pressione qualquer tecla para fechar...
pause > nul
