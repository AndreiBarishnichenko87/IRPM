@echo "Rmbuild IRPM..."

call "%~dp0build_settings.bat"

if exist ".\%build_dir%\" (
    rmdir /S /Q %build_dir%
)

