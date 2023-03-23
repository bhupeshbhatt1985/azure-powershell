
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
Updates 'tags' and 'enabled' fields in an existing Alert rule.
This method is used to update the Alert rule tags, and to enable or disable the Alert rule.
To update other fields use CreateOrUpdate operation.
.Description
Updates 'tags' and 'enabled' fields in an existing Alert rule.
This method is used to update the Alert rule tags, and to enable or disable the Alert rule.
To update other fields use CreateOrUpdate operation.
.Example
{{ Add code here }}
.Example
{{ Add code here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Models.IActivityLogAlertIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Models.IActivityLogAlertResource
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMonitorIdentity>: Identity Parameter
  [ActivityLogAlertName <String>]: The name of the Activity Log Alert rule.
  [Id <String>]: Resource identity path
  [ResourceGroupName <String>]: The name of the resource group. The name is case insensitive.
  [SubscriptionId <String>]: The ID of the target subscription.
.Link
https://learn.microsoft.com/powershell/module/az.monitor/update-azactivitylogalert
#>
function Update-AzActivityLogAlert {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Models.IActivityLogAlertResource])]
    [CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
        [Alias('ActivityLogAlertName')]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Path')]
        [System.String]
        # The name of the Activity Log Alert rule.
        ${Name},
    
        [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},
    
        [Parameter(ParameterSetName='UpdateExpanded')]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},
    
        [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Models.IActivityLogAlertIdentity]
        # Identity Parameter
        # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
        ${InputObject},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Body')]
        [System.Boolean]
        # Indicates whether this Activity Log Alert rule is enabled.
        # If an Activity Log Alert rule is not enabled, then none of its actions will be activated.
        ${Enabled},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Models.IAlertRulePatchObjectTags]))]
        [System.Collections.Hashtable]
        # The resource tags
        ${Tag},
    
        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.ActivityLogAlert.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )

    process {
        # changed type of parameter "-Enabled" from switch parameter to boolean
        . Az.ActivityLogAlert.internal\Update-AzActivityLogAlert @PSBoundParameters
    }

}