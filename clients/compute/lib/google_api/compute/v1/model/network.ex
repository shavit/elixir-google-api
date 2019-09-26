# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Compute.V1.Model.Network do
  @moduledoc """
  Represents a VPC Network resource.

  Networks connect resources to each other and to the internet. For more information, read Virtual Private Cloud (VPC) Network. (== resource_for v1.networks ==) (== resource_for beta.networks ==)

  ## Attributes

  *   `IPv4Range` (*type:* `String.t`, *default:* `nil`) - Deprecated in favor of subnet mode networks. The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created.
  *   `autoCreateSubnetworks` (*type:* `boolean()`, *default:* `nil`) - When set to true, the VPC network is created in "auto" mode. When set to false, the VPC network is created in "custom" mode.

      An auto mode VPC network starts with one subnet per region. Each subnet has a predetermined range as described in Auto mode VPC network IP ranges.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this field when you create the resource.
  *   `gatewayIPv4` (*type:* `String.t`, *default:* `nil`) - [Output Only] The gateway address for default routing out of the network, selected by GCP.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#network`) - [Output Only] Type of the resource. Always compute#network for networks.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  *   `peerings` (*type:* `list(GoogleApi.Compute.V1.Model.NetworkPeering.t)`, *default:* `nil`) - [Output Only] A list of network peerings for the resource.
  *   `routingConfig` (*type:* `GoogleApi.Compute.V1.Model.NetworkRoutingConfig.t`, *default:* `nil`) - The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `subnetworks` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] Server-defined fully-qualified URLs for all subnetworks in this VPC network.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :IPv4Range => String.t(),
          :autoCreateSubnetworks => boolean(),
          :creationTimestamp => String.t(),
          :description => String.t(),
          :gatewayIPv4 => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :peerings => list(GoogleApi.Compute.V1.Model.NetworkPeering.t()),
          :routingConfig => GoogleApi.Compute.V1.Model.NetworkRoutingConfig.t(),
          :selfLink => String.t(),
          :subnetworks => list(String.t())
        }

  field(:IPv4Range)
  field(:autoCreateSubnetworks)
  field(:creationTimestamp)
  field(:description)
  field(:gatewayIPv4)
  field(:id)
  field(:kind)
  field(:name)
  field(:peerings, as: GoogleApi.Compute.V1.Model.NetworkPeering, type: :list)
  field(:routingConfig, as: GoogleApi.Compute.V1.Model.NetworkRoutingConfig)
  field(:selfLink)
  field(:subnetworks, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Network do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Network.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Network do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
