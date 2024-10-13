@echo off
:: Definiere Variablen für das Repository und die Branch
set REPO_PATH=D:\DevLibrary\Phanex
set BRANCH=develop

:: Navigiere zum Repository-Verzeichnis
cd /d %REPO_PATH%

:: Füge alle Änderungen hinzu und pushe sie in die Develop-Branch
git add .
git commit -m "Automated commit"
git push origin %BRANCH%

:: Führe Docker Compose aus
docker compose -f "%REPO_PATH%\docker-compose.yml" up -d --build

:: Überprüfe Logs auf Fehler
docker-compose logs
pause