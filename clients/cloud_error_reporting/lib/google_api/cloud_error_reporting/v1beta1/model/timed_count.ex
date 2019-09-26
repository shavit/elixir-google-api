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

defmodule GoogleApi.CloudErrorReporting.V1beta1.Model.TimedCount do
  @moduledoc """
  The number of errors in a given time period.
  All numbers are approximate since the error events are sampled
  before counting them.

  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - Approximate number of occurrences in the given time period.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - End of the time period to which `count` refers (excluded).
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Start of the time period to which `count` refers (included).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t(),
          :endTime => DateTime.t(),
          :startTime => DateTime.t()
        }

  field(:count)
  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudErrorReporting.V1beta1.Model.TimedCount do
  def decode(value, options) do
    GoogleApi.CloudErrorReporting.V1beta1.Model.TimedCount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudErrorReporting.V1beta1.Model.TimedCount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
