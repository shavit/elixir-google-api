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

defmodule GoogleApi.Monitoring.V3.Model.Linear do
  @moduledoc """
  Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): offset + (width * i).  Lower bound (1 <= i < N): offset + (width * (i - 1)).

  ## Attributes

  *   `numFiniteBuckets` (*type:* `integer()`, *default:* `nil`) - Must be greater than 0.
  *   `offset` (*type:* `float()`, *default:* `nil`) - Lower bound of the first bucket.
  *   `width` (*type:* `float()`, *default:* `nil`) - Must be greater than 0.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numFiniteBuckets => integer(),
          :offset => float(),
          :width => float()
        }

  field(:numFiniteBuckets)
  field(:offset)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Linear do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.Linear.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Linear do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
