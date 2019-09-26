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

defmodule GoogleApi.Compute.V1.Model.InterconnectOutageNotification do
  @moduledoc """
  Description of a planned outage on this Interconnect. Next id: 9

  ## Attributes

  *   `affectedCircuits` (*type:* `list(String.t)`, *default:* `nil`) - If issue_type is IT_PARTIAL_OUTAGE, a list of the Google-side circuit IDs that will be affected.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description about the purpose of the outage.
  *   `endTime` (*type:* `String.t`, *default:* `nil`) - Scheduled end time for the outage (milliseconds since Unix epoch).
  *   `issueType` (*type:* `String.t`, *default:* `nil`) - Form this outage is expected to take, which can take one of the following values: 
      - OUTAGE: The Interconnect may be completely out of service for some or all of the specified window. 
      - PARTIAL_OUTAGE: Some circuits comprising the Interconnect as a whole should remain up, but with reduced bandwidth. Note that the versions of this enum prefixed with "IT_" have been deprecated in favor of the unprefixed values.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Unique identifier for this outage notification.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The party that generated this notification, which can take the following value: 
      - GOOGLE: this notification as generated by Google. Note that the value of NSRC_GOOGLE has been deprecated in favor of GOOGLE.
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - Scheduled start time for the outage (milliseconds since Unix epoch).
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of this notification, which can take one of the following values: 
      - ACTIVE: This outage notification is active. The event could be in the past, present, or future. See start_time and end_time for scheduling. 
      - CANCELLED: The outage associated with this notification was cancelled before the outage was due to start. Note that the versions of this enum prefixed with "NS_" have been deprecated in favor of the unprefixed values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :affectedCircuits => list(String.t()),
          :description => String.t(),
          :endTime => String.t(),
          :issueType => String.t(),
          :name => String.t(),
          :source => String.t(),
          :startTime => String.t(),
          :state => String.t()
        }

  field(:affectedCircuits, type: :list)
  field(:description)
  field(:endTime)
  field(:issueType)
  field(:name)
  field(:source)
  field(:startTime)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectOutageNotification do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectOutageNotification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectOutageNotification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
