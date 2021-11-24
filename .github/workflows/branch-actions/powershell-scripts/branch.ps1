[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]$Ref = $(throw "-github ref is required."),

    [Parameter()]
    [string]$BaseRef = $(throw "-base ref is required."),

    [Parameter()]
    [string]$HeadRef = $(throw "-head ref is required.")
)

if ($Ref.StartsWith("refs/tags/")) {
  $BaseRef
}