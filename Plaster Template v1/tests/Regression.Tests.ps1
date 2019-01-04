Param(
    [Parameter()]
    [String]$ScriptPath
)

If (-not $Scriptpath) {

    $ModuleName = '<%= $PLASTER_PARAM_ModuleName %>'
    $here = Split-Path -Parent $MyInvocation.MyCommand.Path 
    $ModulePath = (Split-Path -parent $here) + "\$ModuleName"
    $sut = $modulepath + "\$ModuleName.psm1"
    . $sut
}

Else {

    . $ScriptPath
}


Describe "<%= $PLASTER_PARAM_ModuleName %> : REGRESSION TESTS" {
    It "does something useful" {
        $true | Should -Be $true
    }
}