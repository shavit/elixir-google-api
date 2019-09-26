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

defmodule GoogleApi.Analytics.V3.Model.HashClientIdResponse do
  @moduledoc """
  JSON template for a hash Client Id response resource.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - 
  *   `hashedClientId` (*type:* `String.t`, *default:* `nil`) - 
  *   `kind` (*type:* `String.t`, *default:* `analytics#hashClientIdResponse`) - 
  *   `webPropertyId` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t(),
          :hashedClientId => String.t(),
          :kind => String.t(),
          :webPropertyId => String.t()
        }

  field(:clientId)
  field(:hashedClientId)
  field(:kind)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.HashClientIdResponse do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.HashClientIdResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.HashClientIdResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
