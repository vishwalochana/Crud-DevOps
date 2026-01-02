@echo off
echo Creating Project Structure with Config Outside Public...
echo.

REM Create config.php in root (outside public)
echo. > config.php

REM Create public directory
mkdir public
cd public

REM Create main PHP files in public
echo. > index.php
echo. > about.php
echo. > solution.php
echo. > contact.php
echo. > login.php
echo. > logout.php

REM Create admin directory and files
mkdir admin
cd admin
echo. > index.php
echo. > users.php
echo. > content.php
echo. > messages.php

REM Create admin includes
mkdir includes
cd includes
echo. > header.php
echo. > sidebar.php
echo. > footer.php
cd ..\..

REM Create main includes directory
mkdir includes
cd includes
echo. > header.php
echo. > footer.php
echo. > navbar.php
echo. > functions.php
cd ..

REM Create css directory
mkdir css
cd css
echo. > style.css
echo. > admin.css
echo. > responsive.css
cd ..

REM Create js directory
mkdir js
cd js
echo. > main.js
echo. > form-validation.js
echo. > admin.js
cd ..

REM Create images directory
mkdir images
mkdir images\uploads

REM Create assets directory
mkdir assets
mkdir assets\documents

REM Create database directory
mkdir database
cd database
echo. > db_with_inserts.sql
echo. > db_schema_only.sql
cd ..

cd ..

echo.
echo ========================================
echo Project structure created successfully!
echo ========================================
echo.
echo Structure:
echo   config.php (secured outside public)
echo   public/ (web accessible folder)
echo.
echo Location: %CD%
echo.

REM Auto close
exit