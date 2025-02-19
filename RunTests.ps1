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
Invoke-Pester -Configuration $pesterConfig -ErrorAction Continue
Write-Output 'Pester tests complete.'

return 0
