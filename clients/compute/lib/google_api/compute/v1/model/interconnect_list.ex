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

defmodule GoogleApi.Compute.V1.Model.InterconnectList do
  @moduledoc """
  Response to the list request, and contains a list of interconnects.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] Unique identifier for the resource; defined by the server.
  *   `items` (*type:* `list(GoogleApi.Compute.V1.Model.Interconnect.t)`, *default:* `nil`) - A list of Interconnect resources.
  *   `kind` (*type:* `String.t`, *default:* `compute#interconnectList`) - [Output Only] Type of resource. Always compute#interconnectList for lists of interconnects.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - [Output Only] This token allows you to get the next page of results for list requests. If the number of results is larger than maxResults, use the nextPageToken as a value for the query parameter pageToken in the next list request. Subsequent list requests will have their own nextPageToken to continue paging through the results.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for this resource.
  *   `warning` (*type:* `GoogleApi.Compute.V1.Model.InterconnectListWarning.t`, *default:* `nil`) - [Output Only] Informational warning message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :items => list(GoogleApi.Compute.V1.Model.Interconnect.t()),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :selfLink => String.t(),
          :warning => GoogleApi.Compute.V1.Model.InterconnectListWarning.t()
        }

  field(:id)
  field(:items, as: GoogleApi.Compute.V1.Model.Interconnect, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:selfLink)
  field(:warning, as: GoogleApi.Compute.V1.Model.InterconnectListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
