@echo off
setlocal
where java >nul 2>nul || (echo Java 25 JDK is required. Install Java 25, then reopen this window.& exit /b 1)
for /f tokens^=2^ delims^=\" %%v in ('java -version 2^>^&1 ^| findstr /i "version"') do set JAVA_VERSION=%%v
 echo Detected Java: %JAVA_VERSION%
java -version 2>&1 | findstr /c:"25." >nul
if errorlevel 1 (
  echo This project targets Minecraft 26.3 and requires Java 25.
  echo Install a Java 25 JDK, set JAVA_HOME to it, and try again.
  exit /b 1
)
where gradle >nul 2>nul || (echo Gradle is not installed or not on PATH. Open this folder in IntelliJ IDEA and run the Gradle build task.& exit /b 1)
gradle build
if errorlevel 1 exit /b 1
echo.
echo Build complete. Check build\libs for the remapped mod JAR.
endlocal
