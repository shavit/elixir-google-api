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

defmodule GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  @moduledoc """
  Deprecated. Always use CompensationFilter.

  Input only.

  Filter on job compensation type and amount.

  ## Attributes

  *   `compensationRange` (*type:* `GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange.t`, *default:* `nil`) - Optional. Compensation range.
  *   `compensationUnits` (*type:* `list(String.t)`, *default:* `nil`) - Required. Specify desired `base compensation entry's`
      ExtendedCompensationInfo.CompensationUnit.
  *   `currency` (*type:* `String.t`, *default:* `nil`) - Optional. Specify currency in 3-letter
      [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html) format. If
      unspecified, jobs are returned regardless of currency.
  *   `includeJobWithUnspecifiedCompensationRange` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to include jobs whose compensation range is unspecified.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. Type of filter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compensationRange =>
            GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange.t(),
          :compensationUnits => list(String.t()),
          :currency => String.t(),
          :includeJobWithUnspecifiedCompensationRange => boolean(),
          :type => String.t()
        }

  field(:compensationRange, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange)
  field(:compensationUnits, type: :list)
  field(:currency)
  field(:includeJobWithUnspecifiedCompensationRange)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
