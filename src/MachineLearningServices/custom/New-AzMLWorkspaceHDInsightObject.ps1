
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for HDInsight.
.Description
Create an in-memory object for HDInsight.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.HDInsight
.Link
https://learn.microsoft.com/powershell/module/az.MLWorkspace/new-AzMLWorkspaceHDInsightObject
#>
function New-AzMLWorkspaceHDInsightObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.HDInsight')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="The description of the Machine Learning compute.")]
        [string]
        $Description,
        [Parameter(HelpMessage="Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.")]
        [bool]
        $DisableLocalAuth,
        [Parameter(HelpMessage="ARM resource id of the underlying compute.")]
        [string]
        $ResourceId,
        [Parameter(HelpMessage="Public IP address of the master node of the cluster.")]
        [string]
        $Address,
        [Parameter(HelpMessage="Password of admin account.")]
        [string]
        $AdministratorAccountPassword,
        [Parameter(HelpMessage="Private key data.")]
        [string]
        $AdministratorAccountPrivateKeyData,
        [Parameter(HelpMessage="Public key data.")]
        [string]
        $AdministratorAccountPublicKeyData,
        [Parameter(HelpMessage="Username of admin account.")]
        [string]
        $AdministratorAccountUsername,
        [Parameter(HelpMessage="Port open for ssh connections on the master node of the cluster.")]
        [int]
        $SshPort
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.HDInsight]::New()
        $Object.Type = 'HDInsight'

        if ($PSBoundParameters.ContainsKey('Description')) {
            $Object.Description = $Description
        }
        if ($PSBoundParameters.ContainsKey('DisableLocalAuth')) {
            $Object.DisableLocalAuth = $DisableLocalAuth
        }
        if ($PSBoundParameters.ContainsKey('ResourceId')) {
            $Object.ResourceId = $ResourceId
        }
        if ($PSBoundParameters.ContainsKey('Address')) {
            $Object.Address = $Address
        }
        if ($PSBoundParameters.ContainsKey('AdministratorAccountPassword')) {
            $Object.AdministratorAccountPassword = $AdministratorAccountPassword
        }
        if ($PSBoundParameters.ContainsKey('AdministratorAccountPrivateKeyData')) {
            $Object.AdministratorAccountPrivateKeyData = $AdministratorAccountPrivateKeyData
        }
        if ($PSBoundParameters.ContainsKey('AdministratorAccountPublicKeyData')) {
            $Object.AdministratorAccountPublicKeyData = $AdministratorAccountPublicKeyData
        }
        if ($PSBoundParameters.ContainsKey('AdministratorAccountUsername')) {
            $Object.AdministratorAccountUsername = $AdministratorAccountUsername
        }
        if ($PSBoundParameters.ContainsKey('SshPort')) {
            $Object.SshPort = $SshPort
        }
        return $Object
    }
}

