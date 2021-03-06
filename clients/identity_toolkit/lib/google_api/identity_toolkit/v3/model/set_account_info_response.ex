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

defmodule GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponse do
  @moduledoc """
  Respone of setting the account information.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name of the user.
  *   `email` (*type:* `String.t`, *default:* `nil`) - The email of the user.
  *   `emailVerified` (*type:* `boolean()`, *default:* `nil`) - If email has been verified.
  *   `expiresIn` (*type:* `String.t`, *default:* `nil`) - If idToken is STS id token, then this field will be expiration time of STS id token in seconds.
  *   `idToken` (*type:* `String.t`, *default:* `nil`) - The Gitkit id token to login the newly sign up user.
  *   `kind` (*type:* `String.t`, *default:* `identitytoolkit#SetAccountInfoResponse`) - The fixed string "identitytoolkit#SetAccountInfoResponse".
  *   `localId` (*type:* `String.t`, *default:* `nil`) - The local ID of the user.
  *   `newEmail` (*type:* `String.t`, *default:* `nil`) - The new email the user attempts to change to.
  *   `passwordHash` (*type:* `String.t`, *default:* `nil`) - The user's hashed password.
  *   `photoUrl` (*type:* `String.t`, *default:* `nil`) - The photo url of the user.
  *   `providerUserInfo` (*type:* `list(GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo.t)`, *default:* `nil`) - The user's profiles at the associated IdPs.
  *   `refreshToken` (*type:* `String.t`, *default:* `nil`) - If idToken is STS id token, then this field will be refresh token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :email => String.t(),
          :emailVerified => boolean(),
          :expiresIn => String.t(),
          :idToken => String.t(),
          :kind => String.t(),
          :localId => String.t(),
          :newEmail => String.t(),
          :passwordHash => String.t(),
          :photoUrl => String.t(),
          :providerUserInfo =>
            list(GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo.t()),
          :refreshToken => String.t()
        }

  field(:displayName)
  field(:email)
  field(:emailVerified)
  field(:expiresIn)
  field(:idToken)
  field(:kind)
  field(:localId)
  field(:newEmail)
  field(:passwordHash)
  field(:photoUrl)

  field(
    :providerUserInfo,
    as: GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo,
    type: :list
  )

  field(:refreshToken)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponse do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
