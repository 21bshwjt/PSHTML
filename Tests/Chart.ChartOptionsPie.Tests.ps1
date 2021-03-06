$TestsPath = Split-Path $MyInvocation.MyCommand.Path

#$FunctionsPath = join-Path -Path (get-item $TestsPath).Parent -ChildPath "Functions"

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Write-Verbose "Importing module"

import-module .\PSHTML -Force

InModuleScope PSHTML {

    Context "Testing Charts"{
 
        Describe "PieChartOptions"{
            it "[Constructor][Parameterless] Should not throw"{
                {[PieChartOptions]::New()} | should not throw
            }

            it "[Constructor][Parameterless] Should have default values"{
                $co = [PieChartOptions]::New()
                $co.title | should not benullOrEmpty
                $co.scales | should not benullOrEmpty
            }
        }

    }
}