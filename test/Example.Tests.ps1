Describe 'Example Tests' {
  It 'Should pass' {
    $true | Should -Be $true
  }

  It 'Should fail' {
    $true | Should -Be $false
  }
}
