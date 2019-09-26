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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkWarning do
  @moduledoc """
  Dynamic Links warning messages.

  ## Attributes

  *   `warningCode` (*type:* `String.t`, *default:* `nil`) - The warning code.
  *   `warningDocumentLink` (*type:* `String.t`, *default:* `nil`) - The document describing the warning, and helps resolve.
  *   `warningMessage` (*type:* `String.t`, *default:* `nil`) - The warning message to help developers improve their requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :warningCode => String.t(),
          :warningDocumentLink => String.t(),
          :warningMessage => String.t()
        }

  field(:warningCode)
  field(:warningDocumentLink)
  field(:warningMessage)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkWarning do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkWarning.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkWarning do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
