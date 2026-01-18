param (
  [string]$Identifier
)

if (-not $Identifier) {
  Write-Host "Usage: bootstrap.ps1 <identifier>"
  exit 1
}

$ProjectRoot = Resolve-Path "$PSScriptRoot\.."

winget configure `
  --file "$ProjectRoot\winget-$Identifier.yaml" `
  --accept-configuration-agreements `
  --accept-source-agreements
