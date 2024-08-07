// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Security.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Extensions;

    /// <summary>Azure DevOps Repository properties.</summary>
    public partial class AzureDevOpsRepositoryProperties
    {

        /// <summary>
        /// <c>AfterFromJson</c> will be called after the json deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>

        partial void AfterFromJson(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject json);

        /// <summary>
        /// <c>AfterToJson</c> will be called after the json serialization has finished, allowing customization of the <see cref="Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject"
        /// /> before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>

        partial void AfterToJson(ref Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject container);

        /// <summary>
        /// <c>BeforeFromJson</c> will be called before the json deserialization has commenced, allowing complete customization of
        /// the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name= "returnNow" />
        /// output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>
        /// <param name="returnNow">Determines if the rest of the deserialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeFromJson(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject json, ref bool returnNow);

        /// <summary>
        /// <c>BeforeToJson</c> will be called before the json serialization has commenced, allowing complete customization of the
        /// object before it is serialized.
        /// If you wish to disable the default serialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeToJson(ref Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject container, ref bool returnNow);

        /// <summary>
        /// Deserializes a Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject into a new instance of <see cref="AzureDevOpsRepositoryProperties" />.
        /// </summary>
        /// <param name="json">A Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject instance to deserialize from.</param>
        internal AzureDevOpsRepositoryProperties(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject json)
        {
            bool returnNow = false;
            BeforeFromJson(json, ref returnNow);
            if (returnNow)
            {
                return;
            }
            {_provisioningStatusMessage = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("provisioningStatusMessage"), out var __jsonProvisioningStatusMessage) ? (string)__jsonProvisioningStatusMessage : (string)_provisioningStatusMessage;}
            {_provisioningStatusUpdateTimeUtc = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("provisioningStatusUpdateTimeUtc"), out var __jsonProvisioningStatusUpdateTimeUtc) ? global::System.DateTime.TryParse((string)__jsonProvisioningStatusUpdateTimeUtc, global::System.Globalization.CultureInfo.InvariantCulture, global::System.Globalization.DateTimeStyles.AdjustToUniversal, out var __jsonProvisioningStatusUpdateTimeUtcValue) ? __jsonProvisioningStatusUpdateTimeUtcValue : _provisioningStatusUpdateTimeUtc : _provisioningStatusUpdateTimeUtc;}
            {_provisioningState = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("provisioningState"), out var __jsonProvisioningState) ? (string)__jsonProvisioningState : (string)_provisioningState;}
            {_parentOrgName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("parentOrgName"), out var __jsonParentOrgName) ? (string)__jsonParentOrgName : (string)_parentOrgName;}
            {_parentProjectName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("parentProjectName"), out var __jsonParentProjectName) ? (string)__jsonParentProjectName : (string)_parentProjectName;}
            {_repoId = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("repoId"), out var __jsonRepoId) ? (string)__jsonRepoId : (string)_repoId;}
            {_repoUrl = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("repoUrl"), out var __jsonRepoUrl) ? (string)__jsonRepoUrl : (string)_repoUrl;}
            {_visibility = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("visibility"), out var __jsonVisibility) ? (string)__jsonVisibility : (string)_visibility;}
            {_onboardingState = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString>("onboardingState"), out var __jsonOnboardingState) ? (string)__jsonOnboardingState : (string)_onboardingState;}
            {_actionableRemediation = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject>("actionableRemediation"), out var __jsonActionableRemediation) ? Microsoft.Azure.PowerShell.Cmdlets.Security.Models.ActionableRemediation.FromJson(__jsonActionableRemediation) : _actionableRemediation;}
            AfterFromJson(json);
        }

        /// <summary>
        /// Deserializes a <see cref="Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode"/> into an instance of Microsoft.Azure.PowerShell.Cmdlets.Security.Models.IAzureDevOpsRepositoryProperties.
        /// </summary>
        /// <param name="node">a <see cref="Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode" /> to deserialize from.</param>
        /// <returns>
        /// an instance of Microsoft.Azure.PowerShell.Cmdlets.Security.Models.IAzureDevOpsRepositoryProperties.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.Security.Models.IAzureDevOpsRepositoryProperties FromJson(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode node)
        {
            return node is Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject json ? new AzureDevOpsRepositoryProperties(json) : null;
        }

        /// <summary>
        /// Serializes this instance of <see cref="AzureDevOpsRepositoryProperties" /> into a <see cref="Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode" />.
        /// </summary>
        /// <param name="container">The <see cref="Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject"/> container to serialize this object into. If the caller
        /// passes in <c>null</c>, a new instance will be created and returned to the caller.</param>
        /// <param name="serializationMode">Allows the caller to choose the depth of the serialization. See <see cref="Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.SerializationMode"/>.</param>
        /// <returns>
        /// a serialized instance of <see cref="AzureDevOpsRepositoryProperties" /> as a <see cref="Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode" />.
        /// </returns>
        public Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode ToJson(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject container, Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.SerializationMode serializationMode)
        {
            container = container ?? new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonObject();

            bool returnNow = false;
            BeforeToJson(ref container, ref returnNow);
            if (returnNow)
            {
                return container;
            }
            if (serializationMode.HasFlag(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.SerializationMode.IncludeRead))
            {
                AddIf( null != (((object)this._provisioningStatusMessage)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._provisioningStatusMessage.ToString()) : null, "provisioningStatusMessage" ,container.Add );
            }
            if (serializationMode.HasFlag(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.SerializationMode.IncludeRead))
            {
                AddIf( null != this._provisioningStatusUpdateTimeUtc ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._provisioningStatusUpdateTimeUtc?.ToString(@"yyyy'-'MM'-'dd'T'HH':'mm':'ss.fffffffK",global::System.Globalization.CultureInfo.InvariantCulture)) : null, "provisioningStatusUpdateTimeUtc" ,container.Add );
            }
            AddIf( null != (((object)this._provisioningState)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._provisioningState.ToString()) : null, "provisioningState" ,container.Add );
            AddIf( null != (((object)this._parentOrgName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._parentOrgName.ToString()) : null, "parentOrgName" ,container.Add );
            AddIf( null != (((object)this._parentProjectName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._parentProjectName.ToString()) : null, "parentProjectName" ,container.Add );
            if (serializationMode.HasFlag(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.SerializationMode.IncludeRead))
            {
                AddIf( null != (((object)this._repoId)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._repoId.ToString()) : null, "repoId" ,container.Add );
            }
            if (serializationMode.HasFlag(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.SerializationMode.IncludeRead))
            {
                AddIf( null != (((object)this._repoUrl)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._repoUrl.ToString()) : null, "repoUrl" ,container.Add );
            }
            if (serializationMode.HasFlag(Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.SerializationMode.IncludeRead))
            {
                AddIf( null != (((object)this._visibility)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._visibility.ToString()) : null, "visibility" ,container.Add );
            }
            AddIf( null != (((object)this._onboardingState)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonString(this._onboardingState.ToString()) : null, "onboardingState" ,container.Add );
            AddIf( null != this._actionableRemediation ? (Microsoft.Azure.PowerShell.Cmdlets.Security.Runtime.Json.JsonNode) this._actionableRemediation.ToJson(null,serializationMode) : null, "actionableRemediation" ,container.Add );
            AfterToJson(ref container);
            return container;
        }
    }
}