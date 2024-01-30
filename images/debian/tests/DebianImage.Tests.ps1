Import-Module -Name Pester -Force
Import-Module -Name "$PSScriptRoot/../helpers/Common.Helpers.psm1" -Force

Describe "Debian Image Tests" {
    It "Docker is installed" {
        Mock Get-Command { return @{ 'Version' = '20.10.5' } }
        $dockerVersion = (Get-Command docker).Version
        $dockerVersion | Should -Be '20.10.5'
    }

    It "Docker Compose is installed" {
        Mock Get-Command { return @{ 'Version' = '1.25.5' } }
        $dockerComposeVersion = (Get-Command docker-compose).Version
        $dockerComposeVersion | Should -Be '1.25.5'
    }

    It "Python3 is installed" {
        Mock python3 { return 'Python 3.9.2' }
        $pythonVersion = python3 --version
        $pythonVersion | Should -Be 'Python 3.9.2'
    }

    It "Ruby is installed" {
        Mock ruby { return 'ruby 3.0.0p0' }
        $rubyVersion = ruby --version
        $rubyVersion | Should -Be 'ruby 3.0.0p0'
    }

    It "Node.js is installed" {
        Mock node { return 'v14.16.0' }
        $nodeVersion = node --version
        $nodeVersion | Should -Be 'v14.16.0'
    }

    It "Java is installed" {
        Mock javac { return 'javac 11' }
        $javaVersion = javac -version
        $javaVersion | Should -Be 'javac 11'
    }
}
