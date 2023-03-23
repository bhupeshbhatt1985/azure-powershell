
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
Create an in-memory object for EventHubEndpoint.
.Description
Create an in-memory object for EventHubEndpoint.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.EventHubEndpoint
.Link
https://learn.microsoft.com/powershell/module/az./new-AzWebPubSubEventHubEndpointObject
#>
function New-AzWebPubSubEventHubEndpointObject
{
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.EventHubEndpoint')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(Mandatory, HelpMessage="The name of the Event Hub.")]
        [string]
        $EventHubName,
        [Parameter(Mandatory, HelpMessage="The fully qualified namespace name of the Event Hub resource. For example, `"example.servicebus.windows.net`".")]
        [string]
        $FullyQualifiedNamespace
    )

    process
    {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.WebPubSub.Models.EventHubEndpoint]::New()

        if ($PSBoundParameters.ContainsKey('EventHubName'))
        {
            $Object.EventHubName = $EventHubName
        }
        if ($PSBoundParameters.ContainsKey('FullyQualifiedNamespace'))
        {
            $Object.FullyQualifiedNamespace = $FullyQualifiedNamespace
        }
        return $Object
    }
}

