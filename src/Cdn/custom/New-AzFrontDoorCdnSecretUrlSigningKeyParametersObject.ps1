
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
Create an in-memory object for UrlSigningKeyParameters.
.Description
Create an in-memory object for UrlSigningKeyParameters.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.UrlSigningKeyParameters
.Link
https://learn.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnSecretUrlSigningKeyParametersObject
#>
function New-AzFrontDoorCdnSecretUrlSigningKeyParametersObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.UrlSigningKeyParameters')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(Mandatory, HelpMessage="Defines the customer defined key Id. This id will exist in the incoming request to indicate the key used to form the hash.")]
        [string]
        $KeyId,
        [Parameter(HelpMessage="Resource ID.")]
        [string]
        $SecretSourceId,
        [Parameter(HelpMessage="Version of the secret to be used.")]
        [string]
        $SecretVersion,
        [Parameter(Mandatory, HelpMessage="The type of the secret resource.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.SecretType])]
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.SecretType]
        $Type
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.UrlSigningKeyParameters]::New()

        if ($PSBoundParameters.ContainsKey('KeyId')) {
            $Object.KeyId = $KeyId
        }
        if ($PSBoundParameters.ContainsKey('SecretSourceId')) {
            $Object.SecretSourceId = $SecretSourceId
        }
        if ($PSBoundParameters.ContainsKey('SecretVersion')) {
            $Object.SecretVersion = $SecretVersion
        }
        if ($PSBoundParameters.ContainsKey('Type')) {
            $Object.Type = $Type
        }
        return $Object
    }
}

