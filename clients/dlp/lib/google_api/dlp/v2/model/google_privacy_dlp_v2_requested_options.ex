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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RequestedOptions do
  @moduledoc """


  ## Attributes

  *   `jobConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig.t`, *default:* `nil`) - 
  *   `snapshotInspectTemplate` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectTemplate.t`, *default:* `nil`) - If run with an InspectTemplate, a snapshot of its state at the time of
      this run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig.t(),
          :snapshotInspectTemplate => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectTemplate.t()
        }

  field(:jobConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig)
  field(:snapshotInspectTemplate, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectTemplate)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RequestedOptions do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RequestedOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RequestedOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
