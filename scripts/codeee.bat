@echo off
chcp 65001 >nul
title NPSharp - Protocolo Thainá
color 0C

echo ==========================================
echo     ??  THAINÁ PROTOCOLO ATIVO ??
echo ==========================================
echo.
echo Iniciando reconstrução completa do NPSharp...
echo Amor e código se fundem em um único processo.
echo.

echo ==========================================
echo   ??  Compilando NPSharp...
echo ==========================================
call node ./node_modules/gulp/bin/gulp.js compile
if %errorlevel% neq 0 (
    echo [ERRO] Falha na compilação.
    echo O amor não foi suficiente desta vez...
    pause
    exit /b
)

echo.
echo ==========================================
echo  ?? Compilação concluída com sucesso!
echo  Thainá aprovaria essa build, tovarish.
echo ==========================================
echo.

echo Iniciando o editor...
call npm run electron

pause
