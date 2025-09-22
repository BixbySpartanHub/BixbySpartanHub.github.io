@echo off
REM Navigate to repo folder (already in root, so optional)
cd /d "%~dp0"

REM Pull latest changes
git pull origin main

REM Stage all changes
git add .

REM Prompt for commit message
set /p COMMIT_MSG=Enter commit message (leave blank for auto timestamp): 
if "%COMMIT_MSG%"=="" (
  set COMMIT_MSG=Auto update on %date% at %time%
)

git commit -m "%COMMIT_MSG%"

REM Push to GitHub
git push origin main

echo Done!
pause
