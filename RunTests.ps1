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

Exit 0
