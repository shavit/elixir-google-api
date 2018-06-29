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

defmodule GoogleApi.People.V1.Model.SipAddress do
  @moduledoc """
  A person&#39;s SIP address. Session Initial Protocol addresses are used for VoIP communications to make voice or video calls over the internet.

  ## Attributes

  - formattedType (String.t): The read-only type of the SIP address translated and formatted in the viewer&#39;s account locale or the &#x60;Accept-Language&#x60; HTTP header locale. Defaults to: `null`.
  - metadata (FieldMetadata): Metadata about the SIP address. Defaults to: `null`.
  - type (String.t): The type of the SIP address. The type can be custom or or one of these predefined values:  * &#x60;home&#x60; * &#x60;work&#x60; * &#x60;mobile&#x60; * &#x60;other&#x60; Defaults to: `null`.
  - value (String.t): The SIP address in the [RFC 3261 19.1](https://tools.ietf.org/html/rfc3261#section-19.1) SIP URI format. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formattedType => any(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :type => any(),
          :value => any()
        }

  field(:formattedType)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.SipAddress do
  def decode(value, options) do
    GoogleApi.People.V1.Model.SipAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.SipAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end