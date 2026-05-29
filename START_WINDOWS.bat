@echo off
setlocal
cd /d "%~dp0"
if not exist .env copy .env.example .env >nul
where python >nul 2>nul || (echo Install Python 3.11+ first.& pause & exit /b 1)
where node >nul 2>nul || (echo Install Node.js LTS first.& pause & exit /b 1)
cd backend
if not exist .venv python -m venv .venv
call .venv\Scripts\activate.bat
python -m pip install --upgrade pip
pip install -r requirements.txt
start "StratifyAI Backend" cmd /k "cd /d %~dp0backend && call .venv\Scripts\activate.bat && python -m uvicorn app.main:app --reload --port 8000"
cd ..\frontend
call npm install
start "StratifyAI Frontend" cmd /k "cd /d %~dp0frontend && npm run dev"
cd ..
echo Open http://localhost:5173
pause
