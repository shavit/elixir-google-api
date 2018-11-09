# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.Method do
  @moduledoc """
  Method represents a method of an API interface.

  ## Attributes

  - name (String.t): The simple name of this method. Defaults to: `null`.
  - options ([Option]): Any metadata attached to the method. Defaults to: `null`.
  - requestStreaming (boolean()): If true, the request is streamed. Defaults to: `null`.
  - requestTypeUrl (String.t): A URL of the input message type. Defaults to: `null`.
  - responseStreaming (boolean()): If true, the response is streamed. Defaults to: `null`.
  - responseTypeUrl (String.t): The URL of the output message type. Defaults to: `null`.
  - syntax (String.t): The source syntax of this method. Defaults to: `null`.
    - Enum - one of [SYNTAX_PROTO2, SYNTAX_PROTO3]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => any(),
          :options => list(GoogleApi.ServiceConsumerManagement.V1.Model.Option.t()),
          :requestStreaming => any(),
          :requestTypeUrl => any(),
          :responseStreaming => any(),
          :responseTypeUrl => any(),
          :syntax => any()
        }

  field(:name)
  field(:options, as: GoogleApi.ServiceConsumerManagement.V1.Model.Option, type: :list)
  field(:requestStreaming)
  field(:requestTypeUrl)
  field(:responseStreaming)
  field(:responseTypeUrl)
  field(:syntax)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Method do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.Method.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Method do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end