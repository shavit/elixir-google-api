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

defmodule GoogleApi.CloudKMS.V1.Model.ListCryptoKeyVersionsResponse do
  @moduledoc """
  Response message for KeyManagementService.ListCryptoKeyVersions.

  ## Attributes

  *   `cryptoKeyVersions` (*type:* `list(GoogleApi.CloudKMS.V1.Model.CryptoKeyVersion.t)`, *default:* `nil`) - The list of CryptoKeyVersions.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve next page of results. Pass this value in
      ListCryptoKeyVersionsRequest.page_token to retrieve the next page of
      results.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The total number of CryptoKeyVersions that matched the
      query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cryptoKeyVersions => list(GoogleApi.CloudKMS.V1.Model.CryptoKeyVersion.t()),
          :nextPageToken => String.t(),
          :totalSize => integer()
        }

  field(:cryptoKeyVersions, as: GoogleApi.CloudKMS.V1.Model.CryptoKeyVersion, type: :list)
  field(:nextPageToken)
  field(:totalSize)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.ListCryptoKeyVersionsResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.ListCryptoKeyVersionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.ListCryptoKeyVersionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
