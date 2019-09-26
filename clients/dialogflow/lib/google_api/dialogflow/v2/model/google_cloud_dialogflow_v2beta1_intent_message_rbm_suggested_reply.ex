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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply do
  @moduledoc """
  Rich Business Messaging (RBM) suggested reply that the user can click
  instead of typing in their own response.

  ## Attributes

  *   `postbackData` (*type:* `String.t`, *default:* `nil`) - Opaque payload that the Dialogflow receives in a user event
      when the user taps the suggested reply. This data will be also
      forwarded to webhook to allow performing custom business logic.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Suggested reply text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :postbackData => String.t(),
          :text => String.t()
        }

  field(:postbackData)
  field(:text)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
