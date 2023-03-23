
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
Create an in-memory object for JarUploadedUserSourceInfo.
.Description
Create an in-memory object for JarUploadedUserSourceInfo.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.SpringCloud.Models.JarUploadedUserSourceInfo
.Link
https://learn.microsoft.com/powershell/module/az.SpringCloud/new-AzSpringCloudAppDeploymentJarUploadedObject
#>
function New-AzSpringCloudAppDeploymentJarUploadedObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.SpringCloud.Models.JarUploadedUserSourceInfo')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="JVM parameter.")]
        [string]
        $JvmOption,
        [Parameter(HelpMessage="Runtime version of the Jar file.")]
        [string]
        $RuntimeVersion,
        [Parameter(HelpMessage="Version of the source.")]
        [string]
        $Version
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.SpringCloud.Models.JarUploadedUserSourceInfo]::New()
        $Object.Type = 'Jar'
        $Object.RelativePath = '<default>'

        if ($PSBoundParameters.ContainsKey('JvmOption')) {
            $Object.JvmOption = $JvmOption
        }
        if ($PSBoundParameters.ContainsKey('RuntimeVersion')) {
            $Object.RuntimeVersion = $RuntimeVersion
        }
        if ($PSBoundParameters.ContainsKey('Version')) {
            $Object.Version = $Version
        }
        return $Object
    }
}

