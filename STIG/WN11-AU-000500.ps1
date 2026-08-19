<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Krystal Fang
    LinkedIn        : https://www.linkedin.com/in/krystal-f-304b1817b/
    GitHub          : https://github.com/krystalfang1
    Date Created    : 2026-08-19
    Last Modified   : 2026-08-19
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-AU-000500/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>

# YOUR CODE GOES HERE

$path = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application'

New-Item -Path $path -Force | Out-Null
New-ItemProperty -Path $path -Name 'MaxSize' -PropertyType DWord -Value 0x8000 -Force | Out-Null

Get-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application' -Name MaxSize
