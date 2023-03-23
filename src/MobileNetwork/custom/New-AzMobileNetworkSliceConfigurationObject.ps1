
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
Create an in-memory object for SliceConfiguration.
.Description
Create an in-memory object for SliceConfiguration.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.SliceConfiguration
.Link
https://learn.microsoft.com/powershell/module/az.MobileNetwork/new-AzMobileNetworkSliceConfigurationObject
#>
function New-AzMobileNetworkSliceConfigurationObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.SliceConfiguration')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(Mandatory, HelpMessage="The allowed data networks and the settings to use for them. The list must not contain duplicate items and must contain at least one item.")]
        [Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.IDataNetworkConfiguration[]]
        $DataNetworkConfiguration,
        [Parameter(Mandatory, HelpMessage="Data network resource ID.")]
        [string]
        $DefaultDataNetworkId,
        [Parameter(Mandatory, HelpMessage="Slice resource ID.")]
        [string]
        $SliceId
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.MobileNetwork.Models.SliceConfiguration]::New()

        if ($PSBoundParameters.ContainsKey('DataNetworkConfiguration')) {
            $Object.DataNetworkConfiguration = $DataNetworkConfiguration
        }
        if ($PSBoundParameters.ContainsKey('DefaultDataNetworkId')) {
            $Object.DefaultDataNetworkId = $DefaultDataNetworkId
        }
        if ($PSBoundParameters.ContainsKey('SliceId')) {
            $Object.SlouseId = $SliceId
        }
        return $Object
    }
}

