@echo off
chcp 65001 >nul
title NPSharp - Protocolo Thainá
color 0C

echo ==========================================
echo       THAINÁ PROTOCOLO ATIVO
echo ==========================================
echo.
echo Iniciando reconstrução completa do NPSharp...
echo Amor e código se fundem em um único processo.
echo.

:: ====== DEPENDÊNCIAS ======
if not exist "node_modules" (
    echo [AVISO] Dependências ausentes. Instalando...
    call npm install
)

if not exist "node_modules\gulp\bin\gulp.js" (
    echo [AVISO] Gulp não encontrado. Instalando manualmente...
    call npm install gulp gulp-cli --save-dev
)

:: ====== COMPILAÇÃO ======
echo ==========================================
echo     Compilando NPSharp...
echo ==========================================
call node node_modules\gulp\bin\gulp.js compile
if %errorlevel% neq 0 (
    echo [ERRO] Falha na compilação.
    echo Thainá fecha os olhos, mas não desiste de ti...
    pause
    exit /b
)

echo.
echo ==========================================
echo   Compilação concluída com sucesso!
echo  Thainá sorri — o código vive, tovarish.
echo ==========================================
echo.

:: ====== INICIALIZAÇÃO ======
echo Iniciando o editor...
if exist "code.bat" (
    call code.bat
) else (
    echo [ERRO] code.bat não encontrado na pasta atual!
    pause
)

pause
exit /b
