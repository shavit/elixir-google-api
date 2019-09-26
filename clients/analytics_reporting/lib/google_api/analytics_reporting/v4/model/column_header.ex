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

defmodule GoogleApi.AnalyticsReporting.V4.Model.ColumnHeader do
  @moduledoc """
  Column headers.

  ## Attributes

  *   `dimensions` (*type:* `list(String.t)`, *default:* `nil`) - The dimension names in the response.
  *   `metricHeader` (*type:* `GoogleApi.AnalyticsReporting.V4.Model.MetricHeader.t`, *default:* `nil`) - Metric headers for the metrics in the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions => list(String.t()),
          :metricHeader => GoogleApi.AnalyticsReporting.V4.Model.MetricHeader.t()
        }

  field(:dimensions, type: :list)
  field(:metricHeader, as: GoogleApi.AnalyticsReporting.V4.Model.MetricHeader)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.ColumnHeader do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.ColumnHeader.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.ColumnHeader do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
