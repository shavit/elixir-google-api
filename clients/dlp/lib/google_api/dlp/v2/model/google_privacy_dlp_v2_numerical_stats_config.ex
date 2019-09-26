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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2NumericalStatsConfig do
  @moduledoc """
  Compute numerical stats over an individual column, including
  min, max, and quantiles.

  ## Attributes

  *   `field` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t`, *default:* `nil`) - Field to compute numerical stats on. Supported types are
      integer, float, date, datetime, timestamp, time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t()
        }

  field(:field, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2NumericalStatsConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2NumericalStatsConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2NumericalStatsConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
