
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
Create an in-memory object for ImageTemplateCustomizer.
.Description
Create an in-memory object for ImageTemplateCustomizer.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.ImageTemplateFileCustomizer
.Link
https://learn.microsoft.com/powershell/module/az.ImageBuilder/new-azimagebuildertemplatecustomizerobject
#>
function New-AzImageBuilderTemplateCustomizerObject_FileCustomizer {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.ImageTemplateFileCustomizer')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="The absolute path to a file (with nested directory structures already created) where the file (from sourceUri) will be uploaded to in the VM.")]
        [string]
        $Destination,
        [Parameter(HelpMessage="SHA256 checksum of the file provided in the sourceUri field above.")]
        [string]
        $Sha256Checksum,
        [Parameter(HelpMessage="The URI of the file to be uploaded for customizing the VM. It can be a github link, SAS URI for Azure Storage, etc.")]
        [string]
        $SourceUri,
        [Parameter(HelpMessage="Friendly Name to provide context on what this customization step does.")]
        [string]
        $Name,
        # Change it to switch parameter
        # [Parameter(Mandatory, HelpMessage="The type of customization tool you want to use on the Image. For example, `"Shell`" can be shell customizer.")]
        # [string]
        # $Type
        [Parameter(Mandatory, HelpMessage="Uploads files to VMs (Linux, Windows). Corresponds to Packer file provisioner.")]
        [Switch]
        $FileCustomizer
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.ImageTemplateFileCustomizer]::New()

        if ($PSBoundParameters.ContainsKey('Destination')) {
            $Object.Destination = $Destination
        }
        if ($PSBoundParameters.ContainsKey('Sha256Checksum')) {
            $Object.Sha256Checksum = $Sha256Checksum
        }
        if ($PSBoundParameters.ContainsKey('SourceUri')) {
            $Object.SourceUri = $SourceUri
        }
        if ($PSBoundParameters.ContainsKey('Name')) {
            $Object.Name = $Name
        }
        if ($FileCustomizer.IsPresent) {            
            $Object.Type = "File"
        }        
        return $Object
    }
}

