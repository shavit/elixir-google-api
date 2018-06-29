# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordLocation do
  @moduledoc """
  Location of a finding within a row or record.

  ## Attributes

  - fieldId (GooglePrivacyDlpV2FieldId): Field id of the field containing the finding. Defaults to: `null`.
  - recordKey (GooglePrivacyDlpV2RecordKey): Key of the finding. Defaults to: `null`.
  - tableLocation (GooglePrivacyDlpV2TableLocation): Location within a &#x60;ContentItem.Table&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fieldId => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t(),
          :recordKey => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordKey.t(),
          :tableLocation => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableLocation.t()
        }

  field(:fieldId, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)
  field(:recordKey, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordKey)
  field(:tableLocation, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableLocation)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordLocation do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end