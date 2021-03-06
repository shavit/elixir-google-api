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

defmodule GoogleApi.People.V1.Model.ListConnectionsResponse do
  @moduledoc """


  ## Attributes

  *   `connections` (*type:* `list(GoogleApi.People.V1.Model.Person.t)`, *default:* `nil`) - The list of people that the requestor is connected to.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token that can be used to retrieve the next page of results.
  *   `nextSyncToken` (*type:* `String.t`, *default:* `nil`) - The token that can be used to retrieve changes since the last request.
  *   `totalItems` (*type:* `integer()`, *default:* `nil`) - The total number of items in the list without pagination.
  *   `totalPeople` (*type:* `integer()`, *default:* `nil`) - **DEPRECATED** (Please use totalItems)
      The total number of people in the list without pagination.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connections => list(GoogleApi.People.V1.Model.Person.t()),
          :nextPageToken => String.t(),
          :nextSyncToken => String.t(),
          :totalItems => integer(),
          :totalPeople => integer()
        }

  field(:connections, as: GoogleApi.People.V1.Model.Person, type: :list)
  field(:nextPageToken)
  field(:nextSyncToken)
  field(:totalItems)
  field(:totalPeople)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.ListConnectionsResponse do
  def decode(value, options) do
    GoogleApi.People.V1.Model.ListConnectionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.ListConnectionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
