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

defmodule GoogleApi.Content.V2.Model.TestOrderPaymentMethod do
  @moduledoc """


  ## Attributes

  *   `expirationMonth` (*type:* `integer()`, *default:* `nil`) - The card expiration month (January = 1, February = 2 etc.).
  *   `expirationYear` (*type:* `integer()`, *default:* `nil`) - The card expiration year (4-digit, e.g. 2015).
  *   `lastFourDigits` (*type:* `String.t`, *default:* `nil`) - The last four digits of the card number.
  *   `predefinedBillingAddress` (*type:* `String.t`, *default:* `nil`) - The billing address.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of instrument. Note that real orders might have different values than the four values accepted by createTestOrder.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expirationMonth => integer(),
          :expirationYear => integer(),
          :lastFourDigits => String.t(),
          :predefinedBillingAddress => String.t(),
          :type => String.t()
        }

  field(:expirationMonth)
  field(:expirationYear)
  field(:lastFourDigits)
  field(:predefinedBillingAddress)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.TestOrderPaymentMethod do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.TestOrderPaymentMethod.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.TestOrderPaymentMethod do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
