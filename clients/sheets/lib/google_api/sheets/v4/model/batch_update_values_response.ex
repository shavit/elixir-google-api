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

defmodule GoogleApi.Sheets.V4.Model.BatchUpdateValuesResponse do
  @moduledoc """
  The response when updating a range of values in a spreadsheet.

  ## Attributes

  *   `responses` (*type:* `list(GoogleApi.Sheets.V4.Model.UpdateValuesResponse.t)`, *default:* `nil`) - One UpdateValuesResponse per requested range, in the same order as
      the requests appeared.
  *   `spreadsheetId` (*type:* `String.t`, *default:* `nil`) - The spreadsheet the updates were applied to.
  *   `totalUpdatedCells` (*type:* `integer()`, *default:* `nil`) - The total number of cells updated.
  *   `totalUpdatedColumns` (*type:* `integer()`, *default:* `nil`) - The total number of columns where at least one cell in the column was
      updated.
  *   `totalUpdatedRows` (*type:* `integer()`, *default:* `nil`) - The total number of rows where at least one cell in the row was updated.
  *   `totalUpdatedSheets` (*type:* `integer()`, *default:* `nil`) - The total number of sheets where at least one cell in the sheet was
      updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :responses => list(GoogleApi.Sheets.V4.Model.UpdateValuesResponse.t()),
          :spreadsheetId => String.t(),
          :totalUpdatedCells => integer(),
          :totalUpdatedColumns => integer(),
          :totalUpdatedRows => integer(),
          :totalUpdatedSheets => integer()
        }

  field(:responses, as: GoogleApi.Sheets.V4.Model.UpdateValuesResponse, type: :list)
  field(:spreadsheetId)
  field(:totalUpdatedCells)
  field(:totalUpdatedColumns)
  field(:totalUpdatedRows)
  field(:totalUpdatedSheets)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchUpdateValuesResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BatchUpdateValuesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchUpdateValuesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
