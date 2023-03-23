
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
Create an in-memory object for ImageTemplateSource.
.Description
Create an in-memory object for ImageTemplateSource.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.ImageTemplateManagedImageSource
.Link
https://learn.microsoft.com/powershell/module/az.ImageBuilder/new-azimagebuildertemplatesourceobject
#>
function New-AzImageBuilderTemplateSourceObject_ManagedImageSource {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.ImageTemplateManagedImageSource')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(Mandatory, HelpMessage="ARM resource id of the managed image in customer subscription.")]
        [string]
        $ImageId,
        # Change it to switch parameter
        # [Parameter(Mandatory, HelpMessage="Specifies the type of source image you want to start with.")]
        # [string]
        # $Type
        [Parameter(Mandatory, HelpMessage="Describes an image source that is a managed image in customer subscription. This image must reside in the same subscription and region as the Image Builder template.")]
        [Switch]
        $ManagedImageSource
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.ImageTemplateManagedImageSource]::New()

        if ($PSBoundParameters.ContainsKey('ImageId')) {
            $Object.ImageId = $ImageId
        }
        if ($ManagedImageSource.IsPresent) {
            $Object.Type = "ManagedImage"
        }
        return $Object
    }
}

