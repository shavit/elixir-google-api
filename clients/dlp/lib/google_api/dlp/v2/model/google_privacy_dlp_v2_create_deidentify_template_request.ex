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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest do
  @moduledoc """
  Request message for CreateDeidentifyTemplate.

  ## Attributes

  *   `deidentifyTemplate` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate.t`, *default:* `nil`) - The DeidentifyTemplate to create.
  *   `templateId` (*type:* `String.t`, *default:* `nil`) - The template id can contain uppercase and lowercase letters,
      numbers, and hyphens; that is, it must match the regular
      expression: `[a-zA-Z\\\\d-_]+`. The maximum length is 100
      characters. Can be empty to allow the system to generate one.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deidentifyTemplate => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate.t(),
          :templateId => String.t()
        }

  field(:deidentifyTemplate, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyTemplate)
  field(:templateId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
