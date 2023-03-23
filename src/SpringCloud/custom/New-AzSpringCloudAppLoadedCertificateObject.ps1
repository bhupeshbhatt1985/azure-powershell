
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
Create an in-memory object for LoadedCertificate.
.Description
Create an in-memory object for LoadedCertificate.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.SpringCloud.Models.LoadedCertificate
.Link
https://learn.microsoft.com/powershell/module/az.SpringCloud/new-AzSpringCloudAppLoadedCertificateObject
#>
function New-AzSpringCloudAppLoadedCertificateObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.SpringCloud.Models.LoadedCertificate')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Indicate whether the certificate will be loaded into default trust store, only work for Java runtime.")]
        [bool]
        $LoadTrustStore,
        [Parameter(Mandatory, HelpMessage="Resource Id of loaded certificate.")]
        [string]
        $ResourceId
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.SpringCloud.Models.LoadedCertificate]::New()

        if ($PSBoundParameters.ContainsKey('LoadTrustStore')) {
            $Object.LoadTrustStore = $LoadTrustStore
        }
        if ($PSBoundParameters.ContainsKey('ResourceId')) {
            $Object.ResourceId = $ResourceId
        }
        return $Object
    }
}

