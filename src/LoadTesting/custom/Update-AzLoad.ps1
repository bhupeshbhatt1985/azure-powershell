
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
Update an Azure Load Testing resource.
.Description
Updates an Azure Load Testing resource in a given resource group.
.Example
{{ Add code here }}
.Example
{{ Add code here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Models.ILoadTestResource
.Link
https://learn.microsoft.com/powershell/module/az.loadtesting/update-azload
#>
function Update-AzLoad {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Models.ILoadTestResource])]
    [CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(Mandatory)]
        [Alias('LoadTestName')]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Path')]
        [System.String]
        # Name of the Azure Load Testing resource.
        ${Name},
    
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Path')]
        [System.String]
        # Name of the resource group.
        ${ResourceGroupName},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the subscription.
        ${SubscriptionId},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Body')]
        [System.String]
        # The managed identity for Customer-managed key settings defining which identity should be used to authenticate to Key Vault. 
        # Ex: 'SystemAssigned' uses system-assigned managed identity, whereas '/subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId' uses the given user-assigned managed identity.
        ${EncryptionIdentity},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Body')]
        [System.String]
        # Encryption key URL, versioned.
        # Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78.
        ${EncryptionKey},
    
        [Parameter()]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Support.ManagedServiceIdentityType])]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Support.ManagedServiceIdentityType]
        # Type of managed identity.
        ${IdentityType},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Models.IUserAssignedIdentities]))]
        [System.Collections.Hashtable]
        # The list of user assigned identities associated with the resource. The user identity will be ARM resource ids.
        # The User Assigned Identity is a hashtable with keys in the form of an ARM resource id '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}.
        # The values of the keys can be empty objects ({}) to assign an identity and $null to remove an existing identity.
        ${IdentityUserAssigned},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Models.ILoadTestResourcePatchRequestBodyTags]))]
        [System.Collections.Hashtable]
        # Key-value pairs in the form of a hash table set as tags on the server. For example: @{key0="value0";key1=$null;key2="value2"}. 
        ${Tag},
    
        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.LoadTesting.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )
    
    process {
        try {
            # if encyyption identity has a value, populate the encryption identity type and encryption identity resource id
            # if encryption identity has value SystemAssigned, populate the encryption identity type as SystemAssigned and encryption identity resource id as null
            # else populate the encryption identity type as UserAssigned and encryption identity resource id as the value of encryption identity
            if ($PSBoundParameters.ContainsKey('EncryptionIdentity')) {
                if($PSBoundParameters['EncryptionIdentity'].ToLower() -eq 'systemassigned') {
                    $null = $PSBoundParameters.Add("EncryptionIdentityType", 'SystemAssigned')
                    if($PSBoundParameters.ContainsKey('EncryptionIdentityResourceId')) {
                        $PSBoundParameters['EncryptionIdentityResourceId'] = $null
                    }
                    else {
                        $PSBoundParameters.Add('EncryptionIdentityResourceId', $null)
                    }

                    # Update the identity type only if the input does not contain the encryption identity type
                    if($PSBoundParameters.ContainsKey('IdentityType')) {
                        if($PSBoundParameters['IdentityType'].ToString().ToLower() -eq 'none') {
                            $PSBoundParameters['IdentityType'] = 'SystemAssigned'
                        }
                        elseif($PSBoundParameters['IdentityType'].ToString().ToLower() -eq 'userassigned') {
                            $PSBoundParameters['IdentityType'] = 'SystemAssigned,UserAssigned'
                        }
                    }
                }
                else {
                    $null = $PSBoundParameters.Add("EncryptionIdentityResourceId", $PSBoundParameters['EncryptionIdentity'])
                    $null = $PSBoundParameters.Add("EncryptionIdentityType", 'UserAssigned')  

                    # Update the identity type only if the input does not contain the encryption identity type
                    if($PSBoundParameters.ContainsKey('IdentityType')) {
                        if($PSBoundParameters['IdentityType'].ToString().ToLower() -eq 'none') {
                            $PSBoundParameters['IdentityType'] = 'UserAssigned'
                        }
                        if($PSBoundParameters['IdentityType'].ToString().ToLower() -eq 'systemassigned') {
                            $PSBoundParameters['IdentityType'] = 'SystemAssigned,UserAssigned'
                        }

                        if ($PSBoundParameters.ContainsKey('IdentityUserAssigned')) {
                            if ($null -eq $PSBoundParameters['IdentityUserAssigned']) {
                                $PSBoundParameters['IdentityUserAssigned'] = @{}
                            }
                            $PSBoundParameters['IdentityUserAssigned'][$PSBoundParameters['EncryptionIdentityResourceId']] = @{}
                        }
                        else {
                            $null = $PSBoundParameters.Add("IdentityUserAssigned", @{ $PSBoundParameters['EncryptionIdentityResourceId'] = @{} })
                        }
                    }
                }
                $null = $PSBoundParameters.Remove('EncryptionIdentity')
            }
            Az.LoadTesting.internal\Update-AzLoad @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
    