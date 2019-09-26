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

defmodule GoogleApi.Redis.V1beta1.Model.Location do
  @moduledoc """
  A resource that represents Google Cloud Platform location.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The friendly name for this location, typically a nearby city name.
      For example, "Tokyo".
  *   `labels` (*type:* `map()`, *default:* `nil`) - Cross-service attributes for the location. For example

          {"cloud.googleapis.com/region": "us-east1"}
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Resource ID for the region. For example: "us-east1".
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by Compute Engine. These keys can be specified in `location_id` or `alternative_location_id` fields when creating a Redis instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Full resource name for the region. For example: "projects/example-project/locations/us-east1".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :labels => map(),
          :locationId => String.t(),
          :metadata => map(),
          :name => String.t()
        }

  field(:displayName)
  field(:labels, type: :map)
  field(:locationId)
  field(:metadata, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.Location do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.Location.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.Location do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
