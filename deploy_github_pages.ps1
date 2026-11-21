# One-command deployment helper for GitHub Pages (DaoHuuTrong2404/mekongair-citizen-pulse)
# Run only when user explicitly authorizes remote push.
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
if (-not (Test-Path ".git")) {
    git init -b main
}
git add .
git commit -m "feat: MekongAir Citizen Pulse MVP for UNDP YDCC 2026" --allow-empty
gh repo create DaoHuuTrong2404/mekongair-citizen-pulse --public --source=. --remote=origin --push
Write-Output "Deployed repository to https://github.com/DaoHuuTrong2404/mekongair-citizen-pulse"
