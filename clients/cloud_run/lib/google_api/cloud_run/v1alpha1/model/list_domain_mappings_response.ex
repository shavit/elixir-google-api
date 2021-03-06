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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ListDomainMappingsResponse do
  @moduledoc """
  ListDomainMappingsResponse is a list of DomainMapping resources.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version for this call such as "domains.cloudrun.com/v1alpha1".
  *   `items` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.DomainMapping.t)`, *default:* `nil`) - List of DomainMappings.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this resource, in this case "DomainMappingList".
  *   `metadata` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ListMeta.t`, *default:* `nil`) - Metadata associated with this DomainMapping list.
  *   `regionDetails` (*type:* `%{optional(String.t) => GoogleApi.CloudRun.V1alpha1.Model.RegionDetails.t}`, *default:* `nil`) - Details for the regions used during a global call including any failures.
      This is not populated when targeting a specific region.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :items => list(GoogleApi.CloudRun.V1alpha1.Model.DomainMapping.t()),
          :kind => String.t(),
          :metadata => GoogleApi.CloudRun.V1alpha1.Model.ListMeta.t(),
          :regionDetails => %{
            optional(String.t()) => GoogleApi.CloudRun.V1alpha1.Model.RegionDetails.t()
          },
          :unreachable => list(String.t())
        }

  field(:apiVersion)
  field(:items, as: GoogleApi.CloudRun.V1alpha1.Model.DomainMapping, type: :list)
  field(:kind)
  field(:metadata, as: GoogleApi.CloudRun.V1alpha1.Model.ListMeta)
  field(:regionDetails, as: GoogleApi.CloudRun.V1alpha1.Model.RegionDetails, type: :map)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListDomainMappingsResponse do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ListDomainMappingsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListDomainMappingsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
