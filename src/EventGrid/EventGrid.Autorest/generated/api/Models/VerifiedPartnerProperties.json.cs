// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Extensions;

    /// <summary>Properties of the verified partner.</summary>
    public partial class VerifiedPartnerProperties
    {

        /// <summary>
        /// <c>AfterFromJson</c> will be called after the json deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>

        partial void AfterFromJson(Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject json);

        /// <summary>
        /// <c>AfterToJson</c> will be called after the json serialization has finished, allowing customization of the <see cref="Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject"
        /// /> before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>

        partial void AfterToJson(ref Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject container);

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

        partial void BeforeFromJson(Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject json, ref bool returnNow);

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

        partial void BeforeToJson(ref Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject container, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode"/> into an instance of Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Models.IVerifiedPartnerProperties.
        /// </summary>
        /// <param name="node">a <see cref="Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode" /> to deserialize from.</param>
        /// <returns>
        /// an instance of Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Models.IVerifiedPartnerProperties.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Models.IVerifiedPartnerProperties FromJson(Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode node)
        {
            return node is Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject json ? new VerifiedPartnerProperties(json) : null;
        }

        /// <summary>
        /// Serializes this instance of <see cref="VerifiedPartnerProperties" /> into a <see cref="Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode" />.
        /// </summary>
        /// <param name="container">The <see cref="Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject"/> container to serialize this object into. If the caller
        /// passes in <c>null</c>, a new instance will be created and returned to the caller.</param>
        /// <param name="serializationMode">Allows the caller to choose the depth of the serialization. See <see cref="Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.SerializationMode"/>.</param>
        /// <returns>
        /// a serialized instance of <see cref="VerifiedPartnerProperties" /> as a <see cref="Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode" />.
        /// </returns>
        public Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode ToJson(Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject container, Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.SerializationMode serializationMode)
        {
            container = container ?? new Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject();

            bool returnNow = false;
            BeforeToJson(ref container, ref returnNow);
            if (returnNow)
            {
                return container;
            }
            AddIf( null != this._partnerTopicDetail ? (Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode) this._partnerTopicDetail.ToJson(null,serializationMode) : null, "partnerTopicDetails" ,container.Add );
            AddIf( null != this._partnerDestinationDetail ? (Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode) this._partnerDestinationDetail.ToJson(null,serializationMode) : null, "partnerDestinationDetails" ,container.Add );
            AddIf( null != (((object)this._partnerRegistrationImmutableId)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonString(this._partnerRegistrationImmutableId.ToString()) : null, "partnerRegistrationImmutableId" ,container.Add );
            AddIf( null != (((object)this._organizationName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonString(this._organizationName.ToString()) : null, "organizationName" ,container.Add );
            AddIf( null != (((object)this._partnerDisplayName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonString(this._partnerDisplayName.ToString()) : null, "partnerDisplayName" ,container.Add );
            AddIf( null != (((object)this._provisioningState)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonString(this._provisioningState.ToString()) : null, "provisioningState" ,container.Add );
            AfterToJson(ref container);
            return container;
        }

        /// <summary>
        /// Deserializes a Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject into a new instance of <see cref="VerifiedPartnerProperties" />.
        /// </summary>
        /// <param name="json">A Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject instance to deserialize from.</param>
        internal VerifiedPartnerProperties(Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject json)
        {
            bool returnNow = false;
            BeforeFromJson(json, ref returnNow);
            if (returnNow)
            {
                return;
            }
            {_partnerTopicDetail = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject>("partnerTopicDetails"), out var __jsonPartnerTopicDetails) ? Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Models.PartnerDetails.FromJson(__jsonPartnerTopicDetails) : _partnerTopicDetail;}
            {_partnerDestinationDetail = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonObject>("partnerDestinationDetails"), out var __jsonPartnerDestinationDetails) ? Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Models.PartnerDetails.FromJson(__jsonPartnerDestinationDetails) : _partnerDestinationDetail;}
            {_partnerRegistrationImmutableId = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonString>("partnerRegistrationImmutableId"), out var __jsonPartnerRegistrationImmutableId) ? (string)__jsonPartnerRegistrationImmutableId : (string)_partnerRegistrationImmutableId;}
            {_organizationName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonString>("organizationName"), out var __jsonOrganizationName) ? (string)__jsonOrganizationName : (string)_organizationName;}
            {_partnerDisplayName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonString>("partnerDisplayName"), out var __jsonPartnerDisplayName) ? (string)__jsonPartnerDisplayName : (string)_partnerDisplayName;}
            {_provisioningState = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.EventGrid.Runtime.Json.JsonString>("provisioningState"), out var __jsonProvisioningState) ? (string)__jsonProvisioningState : (string)_provisioningState;}
            AfterFromJson(json);
        }
    }
}