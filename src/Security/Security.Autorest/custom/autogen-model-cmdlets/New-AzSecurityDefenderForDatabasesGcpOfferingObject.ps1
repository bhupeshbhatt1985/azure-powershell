
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
Create an in-memory object for DefenderForDatabasesGcpOffering.
.Description
Create an in-memory object for DefenderForDatabasesGcpOffering.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Security.Models.DefenderForDatabasesGcpOffering
.Link
https://learn.microsoft.com/powershell/module/Az.Security/new-azsecuritydefenderfordatabasesgcpofferingobject
#>
function New-AzSecurityDefenderForDatabasesGcpOfferingObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Security.Models.DefenderForDatabasesGcpOffering')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Is arc auto provisioning enabled.")]
        [bool]
        $ArcAutoProvisioningEnabled,
        [Parameter(HelpMessage="Optional Arc private link scope resource id to link the Arc agent.")]
        [string]
        $ConfigurationPrivateLinkScope,
        [Parameter(HelpMessage="Optional http proxy endpoint to use for the Arc agent.")]
        [string]
        $ConfigurationProxy,
        [Parameter(HelpMessage="The service account email address in GCP for this offering.")]
        [string]
        $DefenderForDatabaseArcAutoProvisioningServiceAccountEmailAddress,
        [Parameter(HelpMessage="The GCP workload identity provider id for this offering.")]
        [string]
        $DefenderForDatabaseArcAutoProvisioningWorkloadIdentityProviderId
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Security.Models.DefenderForDatabasesGcpOffering]::New()

        if ($PSBoundParameters.ContainsKey('ArcAutoProvisioningEnabled')) {
            $Object.ArcAutoProvisioningEnabled = $ArcAutoProvisioningEnabled
        }
        if ($PSBoundParameters.ContainsKey('ConfigurationPrivateLinkScope')) {
            $Object.ConfigurationPrivateLinkScope = $ConfigurationPrivateLinkScope
        }
        if ($PSBoundParameters.ContainsKey('ConfigurationProxy')) {
            $Object.ConfigurationProxy = $ConfigurationProxy
        }
        if ($PSBoundParameters.ContainsKey('DefenderForDatabaseArcAutoProvisioningServiceAccountEmailAddress')) {
            $Object.DefenderForDatabaseArcAutoProvisioningServiceAccountEmailAddress = $DefenderForDatabaseArcAutoProvisioningServiceAccountEmailAddress
        }
        if ($PSBoundParameters.ContainsKey('DefenderForDatabaseArcAutoProvisioningWorkloadIdentityProviderId')) {
            $Object.DefenderForDatabaseArcAutoProvisioningWorkloadIdentityProviderId = $DefenderForDatabaseArcAutoProvisioningWorkloadIdentityProviderId
        }
        return $Object
    }
}

