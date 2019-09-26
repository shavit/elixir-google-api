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

defmodule GoogleApi.Compute.V1.Model.TCPHealthCheck do
  @moduledoc """


  ## Attributes

  *   `port` (*type:* `integer()`, *default:* `nil`) - The TCP port number for the health check request. The default value is 80. Valid values are 1 through 65535.
  *   `portName` (*type:* `String.t`, *default:* `nil`) - Port name as defined in InstanceGroup#NamedPort#name. If both port and port_name are defined, port takes precedence.
  *   `portSpecification` (*type:* `String.t`, *default:* `nil`) - Specifies how port is selected for health checking, can be one of following values:
      USE_FIXED_PORT: The port number in
      port
      is used for health checking.
      USE_NAMED_PORT: The
      portName
      is used for health checking.
      USE_SERVING_PORT: For NetworkEndpointGroup, the port specified for each network endpoint is used for health checking. For other backends, the port or named port specified in the Backend Service is used for health checking.


      If not specified, TCP health check follows behavior specified in
      port
      and
      portName
      fields.
  *   `proxyHeader` (*type:* `String.t`, *default:* `nil`) - Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  *   `request` (*type:* `String.t`, *default:* `nil`) - The application data to send once the TCP connection has been established (default value is empty). If both request and response are empty, the connection establishment alone will indicate health. The request data can only be ASCII.
  *   `response` (*type:* `String.t`, *default:* `nil`) - The bytes to match against the beginning of the response data. If left empty (the default value), any response will indicate health. The response data can only be ASCII.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :port => integer(),
          :portName => String.t(),
          :portSpecification => String.t(),
          :proxyHeader => String.t(),
          :request => String.t(),
          :response => String.t()
        }

  field(:port)
  field(:portName)
  field(:portSpecification)
  field(:proxyHeader)
  field(:request)
  field(:response)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TCPHealthCheck do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TCPHealthCheck.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TCPHealthCheck do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
