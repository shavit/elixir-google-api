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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUser do
  @moduledoc """
  A client user is created under a client buyer and has restricted access to
  the Marketplace and certain other sections of the Authorized Buyers UI based
  on the role granted to the associated client buyer.

  The only way a new client user can be created is via accepting an
  email invitation
  (see the
  accounts.clients.invitations.create
  method).

  All fields are required unless otherwise specified.

  ## Attributes

  *   `clientAccountId` (*type:* `String.t`, *default:* `nil`) - Numerical account ID of the client buyer
      with which the user is associated; the
      buyer must be a client of the current sponsor buyer.
      The value of this field is ignored in an update operation.
  *   `email` (*type:* `String.t`, *default:* `nil`) - User's email address. The value of this field
      is ignored in an update operation.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the client user.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - The unique numerical ID of the client user
      that has accepted an invitation.
      The value of this field is ignored in an update operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientAccountId => String.t(),
          :email => String.t(),
          :status => String.t(),
          :userId => String.t()
        }

  field(:clientAccountId)
  field(:email)
  field(:status)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUser do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUser.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUser do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
