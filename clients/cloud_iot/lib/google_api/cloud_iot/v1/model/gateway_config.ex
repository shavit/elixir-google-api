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

defmodule GoogleApi.CloudIot.V1.Model.GatewayConfig do
  @moduledoc """
  Gateway-related configuration and state.

  ## Attributes

  *   `gatewayAuthMethod` (*type:* `String.t`, *default:* `nil`) - Indicates how to authorize and/or authenticate devices to access the
      gateway.
  *   `gatewayType` (*type:* `String.t`, *default:* `nil`) - Indicates whether the device is a gateway.
  *   `lastAccessedGatewayId` (*type:* `String.t`, *default:* `nil`) - [Output only] The ID of the gateway the device accessed most recently.
  *   `lastAccessedGatewayTime` (*type:* `DateTime.t`, *default:* `nil`) - [Output only] The most recent time at which the device accessed the gateway
      specified in `last_accessed_gateway`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gatewayAuthMethod => String.t(),
          :gatewayType => String.t(),
          :lastAccessedGatewayId => String.t(),
          :lastAccessedGatewayTime => DateTime.t()
        }

  field(:gatewayAuthMethod)
  field(:gatewayType)
  field(:lastAccessedGatewayId)
  field(:lastAccessedGatewayTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.GatewayConfig do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.GatewayConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.GatewayConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
