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

defmodule GoogleApi.Sheets.V4.Model.DateTimeRule do
  @moduledoc """
  Allows you to organize the date-time values in a source data column into
  buckets based on selected parts of their date or time values. For example,
  consider a pivot table showing sales transactions by date:

      +----------+--------------+
      | Date     | SUM of Sales |
      +----------+--------------+
      | 1/1/2017 |      $621.14 |
      | 2/3/2017 |      $708.84 |
      | 5/8/2017 |      $326.84 |
      ...
      +----------+--------------+
  Applying a date-time group rule with a DateTimeRuleType of YEAR_MONTH
  results in the following pivot table.

      +--------------+--------------+
      | Grouped Date | SUM of Sales |
      +--------------+--------------+
      | 2017-Jan     |   $53,731.78 |
      | 2017-Feb     |   $83,475.32 |
      | 2017-Mar     |   $94,385.05 |
      ...
      +--------------+--------------+

  ## Attributes

  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of date-time grouping to apply.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :type => String.t()
        }

  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DateTimeRule do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DateTimeRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DateTimeRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
