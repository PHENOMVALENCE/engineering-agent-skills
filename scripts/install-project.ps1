param(
    [Parameter(Mandatory = $true)]
    [ValidateSet("laravel", "nextjs", "laravel-nextjs", "nextjs-supabase")]
    [string]$Stack,

    [string]$ProjectPath = (Get-Location).Path
)

$ErrorActionPreference = "Stop"
$RootDir = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$ProjectDir = (Resolve-Path $ProjectPath).Path
$StackFile = Join-Path $RootDir "stacks\$Stack\AGENTS.md"

if (-not (Test-Path $StackFile)) {
    throw "Unknown stack: $Stack"
}

$CursorSkills = Join-Path $ProjectDir ".cursor\skills"
$CursorRules = Join-Path $ProjectDir ".cursor\rules"
$GithubDir = Join-Path $ProjectDir ".github"
New-Item -ItemType Directory -Force -Path $CursorSkills, $CursorRules, $GithubDir | Out-Null

Copy-Item -Path (Join-Path $RootDir "skills\*") -Destination $CursorSkills -Recurse -Force
Copy-Item -Path (Join-Path $RootDir ".cursor\rules\*") -Destination $CursorRules -Recurse -Force

$RootAgents = Get-Content (Join-Path $RootDir "AGENTS.md") -Raw
$StackAgents = Get-Content $StackFile -Raw
$CombinedAgents = $RootAgents + "`r`n`r`n---`r`n`r`n" + $StackAgents
$AgentsPath = Join-Path $ProjectDir "AGENTS.md"

if (Test-Path $AgentsPath) {
    Set-Content -Path (Join-Path $ProjectDir "AGENTS.toolkit.md") -Value $CombinedAgents -Encoding UTF8
    Write-Host "Existing AGENTS.md preserved; generated AGENTS.toolkit.md for manual merge."
} else {
    Set-Content -Path $AgentsPath -Value $CombinedAgents -Encoding UTF8
}

function Copy-IfMissing([string]$Source, [string]$Target) {
    if (-not (Test-Path $Target)) {
        Copy-Item -Path $Source -Destination $Target
    }
}

Copy-IfMissing (Join-Path $RootDir "templates\PROJECT.md") (Join-Path $ProjectDir "PROJECT.md")
Copy-IfMissing (Join-Path $RootDir "templates\ARCHITECTURE.md") (Join-Path $ProjectDir "ARCHITECTURE.md")
Copy-IfMissing (Join-Path $RootDir "templates\CONTRIBUTING.md") (Join-Path $ProjectDir "CONTRIBUTING.md")
Copy-IfMissing (Join-Path $RootDir "templates\SECURITY.md") (Join-Path $ProjectDir "SECURITY.md")
Copy-IfMissing (Join-Path $RootDir "templates\PULL_REQUEST_TEMPLATE.md") (Join-Path $GithubDir "pull_request_template.md")

Write-Host "Installed $Stack agent toolkit into: $ProjectDir"
Write-Host "Review generated files before committing them to the project."
