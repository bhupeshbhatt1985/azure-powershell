// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20231201
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.Extensions;

    /// <summary>The configuration settings of the Azure Active Directory allowed principals.</summary>
    public partial class AllowedPrincipals :
        Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20231201.IAllowedPrincipals,
        Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20231201.IAllowedPrincipalsInternal
    {

        /// <summary>Backing field for <see cref="Group" /> property.</summary>
        private string[] _group;

        /// <summary>The list of the allowed groups.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Origin(Microsoft.Azure.PowerShell.Cmdlets.Functions.PropertyOrigin.Owned)]
        public string[] Group { get => this._group; set => this._group = value; }

        /// <summary>Backing field for <see cref="Identity" /> property.</summary>
        private string[] _identity;

        /// <summary>The list of the allowed identities.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Origin(Microsoft.Azure.PowerShell.Cmdlets.Functions.PropertyOrigin.Owned)]
        public string[] Identity { get => this._identity; set => this._identity = value; }

        /// <summary>Creates an new <see cref="AllowedPrincipals" /> instance.</summary>
        public AllowedPrincipals()
        {

        }
    }
    /// The configuration settings of the Azure Active Directory allowed principals.
    public partial interface IAllowedPrincipals :
        Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.IJsonSerializable
    {
        /// <summary>The list of the allowed groups.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The list of the allowed groups.",
        SerializedName = @"groups",
        PossibleTypes = new [] { typeof(string) })]
        string[] Group { get; set; }
        /// <summary>The list of the allowed identities.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The list of the allowed identities.",
        SerializedName = @"identities",
        PossibleTypes = new [] { typeof(string) })]
        string[] Identity { get; set; }

    }
    /// The configuration settings of the Azure Active Directory allowed principals.
    internal partial interface IAllowedPrincipalsInternal

    {
        /// <summary>The list of the allowed groups.</summary>
        string[] Group { get; set; }
        /// <summary>The list of the allowed identities.</summary>
        string[] Identity { get; set; }

    }
}