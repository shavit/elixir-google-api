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

defmodule GoogleApi.Testing.V1.Model.Orientation do
  @moduledoc """
  Screen orientation of the device.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - The id for this orientation.
      Example: "portrait".
  *   `name` (*type:* `String.t`, *default:* `nil`) - A human-friendly name for this orientation.
      Example: "portrait".
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Tags for this dimension.
      Example: "default".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :name => String.t(),
          :tags => list(String.t())
        }

  field(:id)
  field(:name)
  field(:tags, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.Orientation do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.Orientation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.Orientation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
