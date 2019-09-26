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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext do
  @moduledoc """
  The serving context for this restriction.

  ## Attributes

  *   `all` (*type:* `String.t`, *default:* `nil`) - Matches all contexts.
  *   `appType` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.AppContext.t`, *default:* `nil`) - Matches impressions for a particular app type.
  *   `auctionType` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.AuctionContext.t`, *default:* `nil`) - Matches impressions for a particular auction type.
  *   `location` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.LocationContext.t`, *default:* `nil`) - Matches impressions coming from users *or* publishers in a specific
      location.
  *   `platform` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.PlatformContext.t`, *default:* `nil`) - Matches impressions coming from a particular platform.
  *   `securityType` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.SecurityContext.t`, *default:* `nil`) - Matches impressions for a particular security type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :all => String.t(),
          :appType => GoogleApi.AdExchangeBuyer.V2beta1.Model.AppContext.t(),
          :auctionType => GoogleApi.AdExchangeBuyer.V2beta1.Model.AuctionContext.t(),
          :location => GoogleApi.AdExchangeBuyer.V2beta1.Model.LocationContext.t(),
          :platform => GoogleApi.AdExchangeBuyer.V2beta1.Model.PlatformContext.t(),
          :securityType => GoogleApi.AdExchangeBuyer.V2beta1.Model.SecurityContext.t()
        }

  field(:all)
  field(:appType, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.AppContext)
  field(:auctionType, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.AuctionContext)
  field(:location, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.LocationContext)
  field(:platform, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.PlatformContext)
  field(:securityType, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.SecurityContext)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ServingContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
