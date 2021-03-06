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

defmodule GoogleApi.Monitoring.V3.Model.CreateTimeSeriesRequest do
  @moduledoc """
  The CreateTimeSeries request.

  ## Attributes

  *   `timeSeries` (*type:* `list(GoogleApi.Monitoring.V3.Model.TimeSeries.t)`, *default:* `nil`) - The new data to be added to a list of time series. Adds at most one data point to each of several time series. The new data point must be more recent than any other point in its time series. Each TimeSeries value must fully specify a unique time series by supplying all label values for the metric and the monitored resource.The maximum number of TimeSeries objects per Create request is 200.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :timeSeries => list(GoogleApi.Monitoring.V3.Model.TimeSeries.t())
        }

  field(:timeSeries, as: GoogleApi.Monitoring.V3.Model.TimeSeries, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.CreateTimeSeriesRequest do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.CreateTimeSeriesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.CreateTimeSeriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
