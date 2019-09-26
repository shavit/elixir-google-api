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

defmodule GoogleApi.AndroidManagement.V1.Model.ExternalData do
  @moduledoc """
  Data hosted at an external location. The data is to be downloaded by Android Device Policy and verified against the hash.

  ## Attributes

  *   `sha256Hash` (*type:* `String.t`, *default:* `nil`) - The base-64 encoded SHA-256 hash of the content hosted at url. If the content doesn't match this hash, Android Device Policy won't use the data.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The absolute URL to the data, which must use either the http or https scheme. Android Device Policy doesn't provide any credentials in the GET request, so the URL must be publicly accessible. Including a long, random component in the URL may be used to prevent attackers from discovering the URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sha256Hash => String.t(),
          :url => String.t()
        }

  field(:sha256Hash)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ExternalData do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ExternalData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ExternalData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
