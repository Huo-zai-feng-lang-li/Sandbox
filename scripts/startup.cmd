@echo off
echo 正在启动应用...

@REM 已禁用：启动 Chrome（如需启用，请删除本段每行前的 @REM）
@REM echo 正在启动 Chrome...
@REM set CHROME_PATH=C:\Chrome\chrome.exe
@REM if exist "%CHROME_PATH%" (
@REM     echo 已找到 Chrome：%CHROME_PATH%
@REM     start "" "%CHROME_PATH%"
@REM     echo Chrome 已启动
@REM ) else (
@REM     echo 错误：未找到 Chrome：%CHROME_PATH%
@REM )
@REM timeout /t 3 /nobreak >nul

@REM 已禁用：启动 VS Code（如需启用，请删除本段每行前的 @REM）
@REM echo 正在启动 VS Code...
@REM set VSCODE_PATH1=C:\VSCode\Code.exe
@REM set VSCODE_PATH2=E:\Microsoft VS Code\Code.exe
@REM set VSCODE_PATH3=C:\Program Files\Microsoft VS Code\Code.exe
@REM set VSCODE_PATH4=%LOCALAPPDATA%\Programs\Microsoft VS Code\Code.exe
@REM if exist "%VSCODE_PATH1%" (
@REM     echo 已找到 VS Code：%VSCODE_PATH1%
@REM     start "" "%VSCODE_PATH1%"
@REM     echo VS Code 已启动
@REM     goto vscode_started
@REM )
@REM if exist "%VSCODE_PATH2%" (
@REM     echo 已找到 VS Code：%VSCODE_PATH2%
@REM     start "" "%VSCODE_PATH2%"
@REM     echo VS Code 已启动
@REM     goto vscode_started
@REM )
@REM if exist "%VSCODE_PATH3%" (
@REM     echo 已找到 VS Code：%VSCODE_PATH3%
@REM     start "" "%VSCODE_PATH3%"
@REM     echo VS Code 已启动
@REM     goto vscode_started
@REM )
@REM if exist "%VSCODE_PATH4%" (
@REM     echo 已找到 VS Code：%VSCODE_PATH4%
@REM     start "" "%VSCODE_PATH4%"
@REM     echo VS Code 已启动
@REM     goto vscode_started
@REM )
@REM echo 错误：未在以下路径找到 VS Code：
@REM echo   %VSCODE_PATH1%
@REM echo   %VSCODE_PATH2%
@REM echo   %VSCODE_PATH3%
@REM echo   %VSCODE_PATH4%
@REM :vscode_started
@REM timeout /t 3 /nobreak >nul

@REM 启动 Warp （映射自 D:\Warp 到 C:\Warp）
echo 正在启动 Warp...
set WARP_PATH=C:\Warp\warp.exe

if exist "%WARP_PATH%" (
    echo 已找到 Warp：%WARP_PATH%
    start "" "%WARP_PATH%"
    echo Warp 已启动
) else (
    echo 错误：未找到 Warp：%WARP_PATH%
)

@REM 等待 2 秒再启动下一个程序
timeout /t 2 /nobreak >nul

@REM 启动 dotsvpn（仅使用沙盒内 tools_exe 版本）
@REM  echo 正在启动 dotsvpn...
@REM  set DOTSVPN_DIR=%USERPROFILE%\Desktop\Sandbox\tools_exe\dotsvpn
@REM  set DOTSVPN_PATH=%DOTSVPN_DIR%\dotsvpn.exe
@REM  if exist "%DOTSVPN_PATH%" (
@REM      pushd "%DOTSVPN_DIR%"
@REM      start "" "%DOTSVPN_PATH%"
@REM      echo dotsvpn 已启动（tools_exe）
@REM      popd
@REM  ) else (
@REM      echo 错误：未找到 %DOTSVPN_PATH%
@REM  )
@REM echo 启动流程已完成!
