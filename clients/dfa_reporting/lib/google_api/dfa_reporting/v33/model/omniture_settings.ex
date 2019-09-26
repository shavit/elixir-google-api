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

defmodule GoogleApi.DFAReporting.V33.Model.OmnitureSettings do
  @moduledoc """
  Omniture Integration Settings.

  ## Attributes

  *   `omnitureCostDataEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether placement cost data will be sent to Omniture. This property can be enabled only if omnitureIntegrationEnabled is true.
  *   `omnitureIntegrationEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether Omniture integration is enabled. This property can be enabled only when the "Advanced Ad Serving" account setting is enabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :omnitureCostDataEnabled => boolean(),
          :omnitureIntegrationEnabled => boolean()
        }

  field(:omnitureCostDataEnabled)
  field(:omnitureIntegrationEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.OmnitureSettings do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.OmnitureSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.OmnitureSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
