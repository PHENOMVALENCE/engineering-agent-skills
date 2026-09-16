$ErrorActionPreference = "Stop"

$RootDir = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$TargetDir = Join-Path $HOME ".cursor\skills"

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
Copy-Item -Path (Join-Path $RootDir "skills\*") -Destination $TargetDir -Recurse -Force

Write-Host "Installed PHENOMVALENCE engineering skills to: $TargetDir"
Write-Host "Restart/reload Cursor if the skills are not discovered immediately."
