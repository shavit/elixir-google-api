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

defmodule GoogleApi.Sheets.V4.Model.WaterfallChartSpec do
  @moduledoc """
  A waterfall chart.

  ## Attributes

  *   `connectorLineStyle` (*type:* `GoogleApi.Sheets.V4.Model.LineStyle.t`, *default:* `nil`) - The line style for the connector lines.
  *   `domain` (*type:* `GoogleApi.Sheets.V4.Model.WaterfallChartDomain.t`, *default:* `nil`) - The domain data (horizontal axis) for the waterfall chart.
  *   `firstValueIsTotal` (*type:* `boolean()`, *default:* `nil`) - True to interpret the first value as a total.
  *   `hideConnectorLines` (*type:* `boolean()`, *default:* `nil`) - True to hide connector lines between columns.
  *   `series` (*type:* `list(GoogleApi.Sheets.V4.Model.WaterfallChartSeries.t)`, *default:* `nil`) - The data this waterfall chart is visualizing.
  *   `stackedType` (*type:* `String.t`, *default:* `nil`) - The stacked type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectorLineStyle => GoogleApi.Sheets.V4.Model.LineStyle.t(),
          :domain => GoogleApi.Sheets.V4.Model.WaterfallChartDomain.t(),
          :firstValueIsTotal => boolean(),
          :hideConnectorLines => boolean(),
          :series => list(GoogleApi.Sheets.V4.Model.WaterfallChartSeries.t()),
          :stackedType => String.t()
        }

  field(:connectorLineStyle, as: GoogleApi.Sheets.V4.Model.LineStyle)
  field(:domain, as: GoogleApi.Sheets.V4.Model.WaterfallChartDomain)
  field(:firstValueIsTotal)
  field(:hideConnectorLines)
  field(:series, as: GoogleApi.Sheets.V4.Model.WaterfallChartSeries, type: :list)
  field(:stackedType)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.WaterfallChartSpec do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.WaterfallChartSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.WaterfallChartSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
