@echo off
CHCP 65001 > nul
setlocal

:: Налаштування шляхів
set PROJECT_PATH=C:\Users\ProVis3D\Desktop\SKLA3D
cd /d "%PROJECT_PATH%"

echo === Запуск оновлення репозиторію SKLA3D ===

:: Перевірка статусу Git
echo 1. Перевірка змін...
git add .

:: Створення повідомлення з поточною датою та часом
set CURRENT_TIME=%date% %time%
echo 2. Створення комміту...
git commit -m "Auto-update models: %CURRENT_TIME%"

:: Відправка в репозиторій
echo 3. Відправка на GitHub (main)...
git push origin main

echo === Готово! Зміни опубліковано ===
pause