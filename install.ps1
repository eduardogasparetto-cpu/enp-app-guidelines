$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillDir = Join-Path $ScriptDir "skill"

$SkillDest = Join-Path $env:USERPROFILE ".cursor\skills\enp-app-guidelines"

Write-Host ""
Write-Host "=== EnP App Guidelines - Instalador Cursor ===" -ForegroundColor Cyan
Write-Host ""

if (-not (Test-Path (Join-Path $SkillDir "SKILL.md"))) {
    Write-Host "Erro: skill\SKILL.md nao encontrado em $ScriptDir" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $SkillDest)) { New-Item -ItemType Directory -Path $SkillDest -Force | Out-Null }

Get-ChildItem -Path $SkillDir -Filter "*.md" | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination (Join-Path $SkillDest $_.Name) -Force
    Write-Host "  Skill copiada: $($_.Name)" -ForegroundColor Green
}

Write-Host ""
Write-Host "Instalacao concluida. Reinicie o Cursor para ativar." -ForegroundColor Cyan
Write-Host ""
Write-Host "IMPORTANTE: esta skill requer o enp-design-system para funcionar." -ForegroundColor Yellow
Write-Host "Se ainda nao instalou: https://github.com/eduardogasparetto-cpu/enp-design-system" -ForegroundColor Yellow
Write-Host ""
