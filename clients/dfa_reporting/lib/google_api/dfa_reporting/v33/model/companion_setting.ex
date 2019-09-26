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

defmodule GoogleApi.DFAReporting.V33.Model.CompanionSetting do
  @moduledoc """
  Companion Settings

  ## Attributes

  *   `companionsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether companions are disabled for this placement.
  *   `enabledSizes` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Size.t)`, *default:* `nil`) - Whitelist of companion sizes to be served to this placement. Set this list to null or empty to serve all companion sizes.
  *   `imageOnly` (*type:* `boolean()`, *default:* `nil`) - Whether to serve only static images as companions.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#companionSetting`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#companionSetting".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :companionsDisabled => boolean(),
          :enabledSizes => list(GoogleApi.DFAReporting.V33.Model.Size.t()),
          :imageOnly => boolean(),
          :kind => String.t()
        }

  field(:companionsDisabled)
  field(:enabledSizes, as: GoogleApi.DFAReporting.V33.Model.Size, type: :list)
  field(:imageOnly)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.CompanionSetting do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.CompanionSetting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.CompanionSetting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
