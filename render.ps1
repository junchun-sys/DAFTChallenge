# Render index.qmd using the project's .venv Python (so DAFT and deps are found).
$venvPython = Join-Path $PSScriptRoot ".venv\Scripts\python.exe"
if (-not (Test-Path $venvPython)) {
    Write-Error "Not found: $venvPython. Create the venv and install deps first."
    exit 1
}
$env:QUARTO_PYTHON = $venvPython
quarto render index.qmd
exit $LASTEXITCODE
