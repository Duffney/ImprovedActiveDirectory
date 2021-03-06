try {
 Import-Module ActiveDirectory   
}
catch [System.Management.Automation.ParameterBindingException] {
    Write-Error -Message 'ActiveDirectory Module not found' -ErrorAction Stop
}


. $PSScriptRoot\Classes\IADGroup.ps1
. $PSScriptRoot\Functions\Get-IADGroupMember.ps1
. $PSScriptRoot\Functions\Disable-IADComputer.ps1
. $PSScriptRoot\Functions\Disable-IADUser.ps1
. $PSScriptRoot\Functions\ConvertTo-IADDomain.ps1
. $PSScriptRoot\Functions\Move-IADDisabledUsers.ps1
. $PSScriptRoot\Functions\Move-IADDisabledComputers.ps1
. $PSScriptRoot\Functions\Move-IADEnabledComputers.ps1
. $PSScriptRoot\Functions\Move-IADEnabledUsers.ps1
. $PSScriptRoot\Functions\Empty-IADComputersContainer.ps1
. $PSScriptRoot\Functions\Disable-IADInactiveComputers.ps1
. $PSScriptRoot\Functions\Add-IADOUUsersToGroups.ps1

Export-ModuleMember ConvertTo-IADDomain
Export-ModuleMember Get-IADGroupMember
Export-ModuleMember Disable-ADComputer
Export-ModuleMember Disable-ADUser
Export-ModuleMember Move-IADDisabledUsers
Export-ModuleMember Move-IADDisabledComputers
Export-ModuleMember Move-IADEnabledComputers
Export-ModuleMember Move-IADEnabledUsers
Export-ModuleMember Empty-IADComputersContainer
Export-ModuleMember Disable-IADInactiveComputers
Export-ModuleMember Add-IADOUUsersToGroups