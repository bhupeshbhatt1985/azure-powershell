﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using System;
using Microsoft.Azure.Commands.Profile.Models;
using Microsoft.Azure.Commands.ResourceManager.Common;
using Microsoft.WindowsAzure.Commands.Common;
using System.Management.Automation;
using Microsoft.Azure.Commands.Common.Authentication.Abstractions;
using Microsoft.Azure.Commands.Common.Authentication.Models;
using Microsoft.Azure.Commands.Common.Authentication.ResourceManager;
using Microsoft.Azure.Commands.Common.Authentication;
using Microsoft.Azure.Commands.Profile.Common;

namespace Microsoft.Azure.Commands.Profile
{
    /// <summary>
    /// Cmdlet to remove Azure Environment from Profile.
    /// </summary>
    [Cmdlet("Remove", ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "Environment", SupportsShouldProcess=true)]
    [OutputType(typeof(PSAzureEnvironment))]
    public class RemoveAzureRMEnvironmentCommand : AzureContextModificationCmdlet
    {
        [Parameter(Position = 0, Mandatory = true, ValueFromPipelineByPropertyName = true,
            HelpMessage = "The environment name")]
        [EnvironmentCompleter()]
        public string Name { get; set; }

        protected override bool RequireDefaultContext()
        {
            return false;
        }
        public override void ExecuteCmdlet()
        {

                ConfirmAction(
                "removing environment",
                Name,
                () => ModifyContext((profile, profileClient) => WriteObject(new PSAzureEnvironment(profileClient.RemoveEnvironment(Name)))));
        }
    }
}
