@echo "Build IRPM..."

call "%~dp0build_settings.bat"

if not exist ".\%build_dir%\" (
  mkdir %build_dir%
) else (
    echo Directory has already exist
)

cmake -G %compiler_generator% -A %compiler_architecture% -S . -B %build_dir%
cmake --build %build_dir%
