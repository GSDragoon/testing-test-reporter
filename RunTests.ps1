#Write-Output 'Installing Pester...'
#Install-PackageProvider -Name 'NuGet' -RequiredVersion '2.8.5.201' -Force | Out-Null
#Install-Module -Name 'Pester' -MinimumVersion '5.7.1' -MaximumVersion '5.999.999.999' -Force -SkipPublisherCheck
Get-Module -Name 'Pester' -ListAvailable

$pesterConfig = New-PesterConfiguration @{
  Run = @{
    Path = '.\test'
    Exit = $false
    Throw = $false
  }
  TestResult = @{
    Enabled = $true
    OutputFormat = 'JUnitXml'
  }
  Output = @{
    Verbosity = 'Detailed'
  }
}

Write-Output 'Running Pester tests...'
Invoke-Pester -Configuration $pesterConfig
Write-Output 'Pester tests complete.'