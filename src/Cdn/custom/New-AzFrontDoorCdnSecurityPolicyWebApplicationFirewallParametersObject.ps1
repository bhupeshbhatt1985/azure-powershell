
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
Create an in-memory object for SecurityPolicyWebApplicationFirewallParameters.
.Description
Create an in-memory object for SecurityPolicyWebApplicationFirewallParameters.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.SecurityPolicyWebApplicationFirewallParameters
.Link
https://learn.microsoft.com/powershell/module/az.Cdn/new-AzCdnFrontDoorSecurityPolicyWebApplicationFirewallParametersObject
#>
function New-AzFrontDoorCdnSecurityPolicyWebApplicationFirewallParametersObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.SecurityPolicyWebApplicationFirewallParameters')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Waf associations.")]
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.ISecurityPolicyWebApplicationFirewallAssociation[]]
        $Association,
        [Parameter(HelpMessage="Resource ID.")]
        [string]
        $WafPolicyId
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.SecurityPolicyWebApplicationFirewallParameters]::New()

        if ($PSBoundParameters.ContainsKey('Association')) {
            $Object.Association = $Association
        }
        if ($PSBoundParameters.ContainsKey('WafPolicyId')) {
            $Object.WafPolicyId = $WafPolicyId
        }
        return $Object
    }
}

