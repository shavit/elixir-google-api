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

defmodule GoogleApi.DFAReporting.V33.Model.ReportDelivery do
  @moduledoc """
  The report's email delivery settings.

  ## Attributes

  *   `emailOwner` (*type:* `boolean()`, *default:* `nil`) - Whether the report should be emailed to the report owner.
  *   `emailOwnerDeliveryType` (*type:* `String.t`, *default:* `nil`) - The type of delivery for the owner to receive, if enabled.
  *   `message` (*type:* `String.t`, *default:* `nil`) - The message to be sent with each email.
  *   `recipients` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Recipient.t)`, *default:* `nil`) - The list of recipients to which to email the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :emailOwner => boolean(),
          :emailOwnerDeliveryType => String.t(),
          :message => String.t(),
          :recipients => list(GoogleApi.DFAReporting.V33.Model.Recipient.t())
        }

  field(:emailOwner)
  field(:emailOwnerDeliveryType)
  field(:message)
  field(:recipients, as: GoogleApi.DFAReporting.V33.Model.Recipient, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.ReportDelivery do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.ReportDelivery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.ReportDelivery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
