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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.EditAllOrderDealsRequest do
  @moduledoc """


  ## Attributes

  *   `deals` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal.t)`, *default:* `nil`) - List of deals to edit. Service may perform 3 different operations based on comparison of deals in this list vs deals already persisted in database: 1. Add new deal to proposal If a deal in this list does not exist in the proposal, the service will create a new deal and add it to the proposal. Validation will follow AddOrderDealsRequest. 2. Update existing deal in the proposal If a deal in this list already exist in the proposal, the service will update that existing deal to this new deal in the request. Validation will follow UpdateOrderDealsRequest. 3. Delete deals from the proposal (just need the id) If a existing deal in the proposal is not present in this list, the service will delete that deal from the proposal. Validation will follow DeleteOrderDealsRequest.
  *   `proposal` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.Proposal.t`, *default:* `nil`) - If specified, also updates the proposal in the batch transaction. This is useful when the proposal and the deals need to be updated in one transaction.
  *   `proposalRevisionNumber` (*type:* `String.t`, *default:* `nil`) - The last known revision number for the proposal.
  *   `updateAction` (*type:* `String.t`, *default:* `nil`) - Indicates an optional action to take on the proposal
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deals => list(GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal.t()),
          :proposal => GoogleApi.AdExchangeBuyer.V14.Model.Proposal.t(),
          :proposalRevisionNumber => String.t(),
          :updateAction => String.t()
        }

  field(:deals, as: GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal, type: :list)
  field(:proposal, as: GoogleApi.AdExchangeBuyer.V14.Model.Proposal)
  field(:proposalRevisionNumber)
  field(:updateAction)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.EditAllOrderDealsRequest do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.EditAllOrderDealsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.EditAllOrderDealsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
