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

defmodule GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedString do
  @moduledoc """
  This is a JSON template for a localized string resource.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `gamesConfiguration#localizedString`) - Uniquely identifies the type of this resource. Value is always the fixed string gamesConfiguration#localizedString.
  *   `locale` (*type:* `String.t`, *default:* `nil`) - The locale string.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The string value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :locale => String.t(),
          :value => String.t()
        }

  field(:kind)
  field(:locale)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedString do
  def decode(value, options) do
    GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedString.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedString do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
