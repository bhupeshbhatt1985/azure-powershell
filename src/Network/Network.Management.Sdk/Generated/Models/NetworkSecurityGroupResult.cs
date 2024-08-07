// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.Management.Network.Models
{
    using System.Linq;

    /// <summary>
    /// Network configuration diagnostic result corresponded provided traffic
    /// query.
    /// </summary>
    public partial class NetworkSecurityGroupResult
    {
        /// <summary>
        /// Initializes a new instance of the NetworkSecurityGroupResult class.
        /// </summary>
        public NetworkSecurityGroupResult()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the NetworkSecurityGroupResult class.
        /// </summary>

        /// <param name="securityRuleAccessResult">The network traffic is allowed or denied.
        /// Possible values include: &#39;Allow&#39;, &#39;Deny&#39;</param>

        /// <param name="evaluatedNetworkSecurityGroups">List of results network security groups diagnostic.
        /// </param>
        public NetworkSecurityGroupResult(string securityRuleAccessResult = default(string), System.Collections.Generic.IList<EvaluatedNetworkSecurityGroup> evaluatedNetworkSecurityGroups = default(System.Collections.Generic.IList<EvaluatedNetworkSecurityGroup>))

        {
            this.SecurityRuleAccessResult = securityRuleAccessResult;
            this.EvaluatedNetworkSecurityGroups = evaluatedNetworkSecurityGroups;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();


        /// <summary>
        /// Gets or sets the network traffic is allowed or denied. Possible values include: &#39;Allow&#39;, &#39;Deny&#39;
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "securityRuleAccessResult")]
        public string SecurityRuleAccessResult {get; set; }

        /// <summary>
        /// Gets list of results network security groups diagnostic.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "evaluatedNetworkSecurityGroups")]
        public System.Collections.Generic.IList<EvaluatedNetworkSecurityGroup> EvaluatedNetworkSecurityGroups {get; private set; }
    }
}