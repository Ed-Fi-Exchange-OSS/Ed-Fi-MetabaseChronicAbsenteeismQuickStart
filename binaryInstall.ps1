# SPDX-License-Identifier: Apache-2.0
# Licensed to the Ed-Fi Alliance under one or more agreements.
# The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
# See the LICENSE and NOTICES files in the project root for more information.

############################################################
 
# Author: Douglas Loyo, Sr. Solutions Architect @ MSDF
 
# Description: Downloads Ed-Fi binaries from the published MyGet feed and installs them.
#              After install it does appropriate configuration to have applications running.

# Note: This powershell has to be ran with Elevated Permissions (As Administrator) and in a x64 environment.

############################################################

Import-Module "$PSScriptRoot\Modules\Software" -Force #-Verbose #-Force
Import-Module "$PSScriptRoot\Modules\BinaryInstall" -Force #-Verbose #-Force
Import-Module "$PSScriptRoot\Modules\CHRABQuickStart" -Force #-Verbose #-Force

#Clear all errors before starting.
$error.clear()

# Base path to download files and store Logs and so.
$global:tempPathForBinaries = "C:\Ed-Fi\BinaryInstaller\"

Write-HostInfo "Ed-Fi Chronic Absenteeism Quick Start Install Menu"
# Write-HostStep "To install Ed-Fi and the Chronic Absenteeism Started Kit run the following command:" 
# Write-Host "    Install-EdFiV34AndCHRAB" 
Write-Host "" 
Write-HostStep "To install the Ed-Fi ODS\API run the following command:"
Write-Host "    Install-EdFiProductionV34" 
# Write-Host "    Install-EdFiSandboxV34"
# Write-HostStep " Ed-Fi ODS\API v3.3.0"
# Write-Host "    Install-EdFiProductionV33" 
# Write-Host "    Install-EdFiSandboxV33"
# Write-HostStep " Ed-Fi ODS\API v3.2.0"
# Write-Host "    Install-EdFiProductionV32" 
# Write-Host "    Install-EdFiSandboxV32"
# Write-HostStep " Ed-Fi ODS\API v2.6.0"
# Write-Host "    Install-EdFiProductionV26" 
# Write-Host "    Install-EdFiSandboxV26"
Write-Host ""
Write-HostStep "To install the Chronic Absenteeism Started Kit run the following command:"
Write-Host "    Install-CHRAB"
Write-Host " "
Write-HostStep "To run the Chronic Absenteeism Started Kit after install run the following command:"
Write-Host "    Open-CHRAB"
Write-Host " "