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

defmodule GoogleApi.Books.V1.Model.FamilyInfoMembership do
  @moduledoc """
  Family membership info of the user that made the request.

  ## Attributes

  *   `acquirePermission` (*type:* `String.t`, *default:* `nil`) - Restrictions on user buying and acquiring content.
  *   `ageGroup` (*type:* `String.t`, *default:* `nil`) - The age group of the user.
  *   `allowedMaturityRating` (*type:* `String.t`, *default:* `nil`) - The maximum allowed maturity rating for the user.
  *   `isInFamily` (*type:* `boolean()`, *default:* `nil`) - 
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role of the user in the family.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acquirePermission => String.t(),
          :ageGroup => String.t(),
          :allowedMaturityRating => String.t(),
          :isInFamily => boolean(),
          :role => String.t()
        }

  field(:acquirePermission)
  field(:ageGroup)
  field(:allowedMaturityRating)
  field(:isInFamily)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.FamilyInfoMembership do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.FamilyInfoMembership.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.FamilyInfoMembership do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
