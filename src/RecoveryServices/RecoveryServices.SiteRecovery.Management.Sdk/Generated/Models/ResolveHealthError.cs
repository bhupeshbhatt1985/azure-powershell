// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.Management.RecoveryServices.SiteRecovery.Models
{
    using System.Linq;

    /// <summary>
    /// Resolve health errors input properties.
    /// </summary>
    public partial class ResolveHealthError
    {
        /// <summary>
        /// Initializes a new instance of the ResolveHealthError class.
        /// </summary>
        public ResolveHealthError()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the ResolveHealthError class.
        /// </summary>

        /// <param name="healthErrorId">Health error id.
        /// </param>
        public ResolveHealthError(string healthErrorId = default(string))

        {
            this.HealthErrorId = healthErrorId;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();


        /// <summary>
        /// Gets or sets health error id.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "healthErrorId")]
        public string HealthErrorId {get; set; }
    }
}