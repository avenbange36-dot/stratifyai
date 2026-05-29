#!/bin/bash
set -e
cd "$(dirname "$0")"
[ -f .env ] || cp .env.example .env
command -v python3 >/dev/null || { echo "Install Python 3.11+ first."; read; exit 1; }
command -v node >/dev/null || { echo "Install Node.js LTS first."; read; exit 1; }
cd backend
[ -d .venv ] || python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
osascript -e 'tell app "Terminal" to do script "cd '"$(pwd)"' && source .venv/bin/activate && python -m uvicorn app.main:app --reload --port 8000"'
cd ../frontend
npm install
osascript -e 'tell app "Terminal" to do script "cd '"$(pwd)"' && npm run dev"'
echo "Open http://localhost:5173"
read -p "Press Enter to exit this starter..."
